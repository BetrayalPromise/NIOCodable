# NIOCodable
## codable目前还有点问题 
### 1.模型继承子类特有的属性解析为nil的问题 
### 2.类型不匹配到值整个模型解析失败的问题
### 3.扁平化不方便(模型层级结构自定义)

## 解决方案
### 问题1 目前只能重写模型的init(decoder: Decoder) throws函数自行处理之类每个存储属性
### 问题2 可以使用本工具解决 也可以使用其他的项目解决
### 问题3 可以使用[KeyedCodable](https://github.com/dgrzeszczak/KeyedCodable.git)该项目后续也会加入对该问题的处理

#### 1.常规映射(Bool, Int, Int8, Int16, Int32, Int64, UInt, UInt8, UInt16, UInt32, UInt64, Float, Double, String)相互转化 本工具给出了一套默认处理 例子使用Bool类型 其他类型于此基本相同 详细的请参考测试例子
#### 2.自定义映射
```Swift
struct Example: Codable {
    var name: Bool
}
struct Adapter: TypeConvertible {
func toBool(key: CodingKey, value: Int) -> Bool {
    if 根据自己的需要处理 {
        return true
    }
    return false
}

func toBool(key: CodingKey, value: Float) -> Bool {
    if 根据自己的需要处理 {
        return true
    }
    return false
}
let data: Data = """
[
{"name": 8},
{"name": -50},
]
""".data(using: String.Encoding.utf8) ?? Data()
let decoder = NIOJSONDecoder()
decoder.convertTypeStrategy = .custom(Adapter())
do {
    guard let models: [Example]? = try decoder.decode(type: [Example].self, from: data) else { assert(false) }
    assert(models[0] == true)
    assert(models[1] == true)
} catch {
    print(error)
}
```

#### 3.异常枚举
```swift
struct Human: Codable {
    var gender: Gender?
}

enum Gender: Int, Codable {
    case male = 0
    case female = 1
    case unknow = 2
}

let data: Data = """
[{"gender": 0}, {"gender": 1}, {"gender": 2}, {"gender": 3.5}, {"gender": 4}]
""".data(using: String.Encoding.utf8) ?? Data()
let decoder = NIOJSONDecoder()
do {
    guard let models: [Human] = try decoder.decode(type: [Human].self, from: data) else { return }
    Assert((models[0]?.gender ?? Gender.unknow) == Gender.male)
    Assert((models[1]?.gender ?? Gender.unknow) == Gender.female)
    Assert((models[2]?.gender ?? Gender.unknow) == Gender.unknow)
    Assert((models[3]?.gender ?? Gender.unknow) == Gender.unknow)
    Assert((models[4]?.gender ?? Gender.unknow) == Gender.unknow)
} catch {
    print(error)
}
```
#### 该例子中定义的枚举值只有(0, 1, 2)数据源则有(0, 1, 2, 3.5, 4)也会导致解析失败分析得出(3.5, 4)属于异常的枚举值 当原因不同3.5属于类型不一致 4属于取值异常
```swift
struct Human: Codable {
    var gender: Gender?
}

enum Gender: Int, Codable {
    case male = 0
    case female = 1
    case unknow = 2
}

struct Handle: TypeConvertible, SingleValueDecodingScopeControllable {
    /// 枚举能够取值的所有值
    func scope(key: CodingKey) -> Set<AnyHashable> {
        return [0, 1, 2]
    }
    /// 枚举异常时返回的值
    func execption(key: CodingKey, source: AnyHashable) -> AnyHashable {
        return 2
    }
    
    /// 3.5类型不匹配处理
    func toInt(key: CodingKey, value: Float) -> Int {
        return 2
    }
}

let data: Data = """
[{"gender": 0}, {"gender": 1}, {"gender": 2}, {"gender": 3.5}, {"gender": 4}]
""".data(using: String.Encoding.utf8) ?? Data()
let decoder = NIOJSONDecoder()
decoder.scopeExecptionStrategy = .custom(Handle())
decoder.convertTypeStrategy = .custom(Handle())
do {
    guard let models: [Human] = try decoder.decode(type: [Human].self, from: data) else { return }
    Assert((models[0]?.gender ?? Gender.unknow) == Gender.male)
    Assert((models[1]?.gender ?? Gender.unknow) == Gender.female)
    Assert((models[2]?.gender ?? Gender.unknow) == Gender.unknow)
    Assert((models[3]?.gender ?? Gender.unknow) == Gender.unknow)
    Assert((models[4]?.gender ?? Gender.unknow) == Gender.unknow)
} catch {
    print(error)
}
````
#### 4.空容器处理 无数据时(null, 数据量为0)可选容器策略
```swift
enum OptionalContainerStrategy {
    case useNull    // 使用null
    case useEmpty   // 使用空容器
}
```
```swift
let data: Data = """
  {
    "array": "null"
  }
  """.data(using: String.Encoding.utf8) ?? Data()

class ESRootClass: Codable {
    var array: [List]?
}

class List: Codable {
    var a: String?
}

let decoder = NIOJSONDecoder()
decoder.containerStrategy = .useEmpty
do {
    guard let models: ESRootClass = try decoder.decode(type: ESRootClass.self, from: data) else { return }
    print(models)
    XCTAssert(models.array != nil)
} catch {
    print(error)
}
```
