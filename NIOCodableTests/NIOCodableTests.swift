import XCTest
@testable import NIOCodable

class NIOCodableTests: XCTestCase {

    override func setUp() {
        
    }

    override func tearDown() {
        
    }

    func testExample() {
        
    }

    func testPerformanceExample() {
        self.measure {
            
        }
    }
    
    /*
        Bool转化标准支持
        标准布尔值 (true false)
        字符串值 ("true" "false" "yes" "no") 及其大小写混合
        数值 只支持 0 == false 1 == true 其他均为 false
     */
    func testBool() {
        struct Example: Codable {
            var name: Bool
        }

        struct Adapter: TypeConvertible {
            func toBool(key: CodingKey, value: Int) -> Bool {
                if value == 1 {
                    return true
                }
                return false
            }

            func toBool(key: CodingKey, value: Float) -> Bool {
                if value == 0.5 {
                    return true
                }
                return false
            }
        }


        let data: Data = """
        [
        {"name": true},
        {"name": false},

        {"name": "true"},
        {"name": "false"},
        {"name": "yes"},
        {"name": "no"},

        {"name": 2},
        {"name": 1},
        {"name": 0},
        {"name": -1},
        {"name": -2},

        {"name": 0.5},
        {"name": 1.5},
        ]
        """.data(using: String.Encoding.utf8) ?? Data()
        let decoder = NIOJSONDecoder()
        decoder.convertTypeStrategy = .custom(Adapter())
        do {
            let models: [Example]? = try decoder.decode(type: [Example].self, from: data)
            XCTAssert(models?[0].name == true)
            XCTAssert(models?[1].name == false)
            XCTAssert(models?[2].name == true)
            XCTAssert(models?[3].name == false)
            XCTAssert(models?[4].name == true)
            XCTAssert(models?[5].name == false)
            XCTAssert(models?[6].name == false)
            XCTAssert(models?[7].name == true)
            XCTAssert(models?[8].name == false)
            XCTAssert(models?[9].name == false)
            XCTAssert(models?[10].name == false)
            XCTAssert(models?[11].name == true)
            XCTAssert(models?[12].name == false)
        } catch {
            print(error)
        }
    }
    
    func testInt() {
        struct Example: Codable {
            var name: Int
        }
        let data: Data = """
        [
        {"name": true},
        {"name": false},
        {"name": "true"},
        {"name": "false"},
        {"name": "yes"},
        {"name": "no"},
        {"name": 2},
        {"name": 1},
        {"name": 0},
        {"name": -1},
        {"name": -2},
        ]
        """.data(using: String.Encoding.utf8) ?? Data()
        let decoder = NIOJSONDecoder()
        do {
            let models: [Example]? = try decoder.decode(type: [Example].self, from: data)
            XCTAssert(models?[0].name == 1)
            XCTAssert(models?[1].name == 0)
            XCTAssert(models?[2].name == 1)
            XCTAssert(models?[3].name == 0)
            XCTAssert(models?[4].name == 1)
            XCTAssert(models?[5].name == 0)
            XCTAssert(models?[6].name == 2)
            XCTAssert(models?[7].name == 1)
            XCTAssert(models?[8].name == 0)
            XCTAssert(models?[9].name == -1)
            XCTAssert(models?[10].name == -2)
        } catch {
            print(error)
        }
    }
    
    func testInt8() {
        struct Example: Codable {
            var name: Int8
        }
        let data: Data = """
        [
        {"name": true},
        {"name": false},
        {"name": "true"},
        {"name": "false"},
        {"name": "yes"},
        {"name": "no"},
        {"name": 2},
        {"name": 1},
        {"name": 0},
        {"name": -1},
        {"name": -2},
        ]
        """.data(using: String.Encoding.utf8) ?? Data()
        let decoder = NIOJSONDecoder()
        do {
            let models: [Example]? = try decoder.decode(type: [Example].self, from: data)
            XCTAssert(models?[0].name == 1)
            XCTAssert(models?[1].name == 0)
            XCTAssert(models?[2].name == 1)
            XCTAssert(models?[3].name == 0)
            XCTAssert(models?[4].name == 1)
            XCTAssert(models?[5].name == 0)
            XCTAssert(models?[6].name == 2)
            XCTAssert(models?[7].name == 1)
            XCTAssert(models?[8].name == 0)
            XCTAssert(models?[9].name == -1)
            XCTAssert(models?[10].name == -2)
        } catch {
            print(error)
        }
    }
    
    func testInt16() {
        struct Example: Codable {
            var name: Int16
        }
        let data: Data = """
        [
        {"name": true},
        {"name": false},
        {"name": "true"},
        {"name": "false"},
        {"name": "yes"},
        {"name": "no"},
        {"name": 2},
        {"name": 1},
        {"name": 0},
        {"name": -1},
        {"name": -2},
        ]
        """.data(using: String.Encoding.utf8) ?? Data()
        let decoder = NIOJSONDecoder()
        do {
            let models: [Example]? = try decoder.decode(type: [Example].self, from: data)
            XCTAssert(models?[0].name == 1)
            XCTAssert(models?[1].name == 0)
            XCTAssert(models?[2].name == 1)
            XCTAssert(models?[3].name == 0)
            XCTAssert(models?[4].name == 1)
            XCTAssert(models?[5].name == 0)
            XCTAssert(models?[6].name == 2)
            XCTAssert(models?[7].name == 1)
            XCTAssert(models?[8].name == 0)
            XCTAssert(models?[9].name == -1)
            XCTAssert(models?[10].name == -2)
        } catch {
            print(error)
        }
    }
    
    func testInt32() {
        struct Example: Codable {
            var name: Int32
        }
        let data: Data = """
        [
        {"name": true},
        {"name": false},
        {"name": "true"},
        {"name": "false"},
        {"name": "yes"},
        {"name": "no"},
        {"name": 2},
        {"name": 1},
        {"name": 0},
        {"name": -1},
        {"name": -2},
        ]
        """.data(using: String.Encoding.utf8) ?? Data()
        let decoder = NIOJSONDecoder()
        do {
            let models: [Example]? = try decoder.decode(type: [Example].self, from: data)
            XCTAssert(models?[0].name == 1)
            XCTAssert(models?[1].name == 0)
            XCTAssert(models?[2].name == 1)
            XCTAssert(models?[3].name == 0)
            XCTAssert(models?[4].name == 1)
            XCTAssert(models?[5].name == 0)
            XCTAssert(models?[6].name == 2)
            XCTAssert(models?[7].name == 1)
            XCTAssert(models?[8].name == 0)
            XCTAssert(models?[9].name == -1)
            XCTAssert(models?[10].name == -2)
        } catch {
            print(error)
        }
    }
    
    func testInt64() {
        struct Example: Codable {
            var name: Int64
        }
        let data: Data = """
        [
        {"name": true},
        {"name": false},
        {"name": "true"},
        {"name": "false"},
        {"name": "yes"},
        {"name": "no"},
        {"name": 2},
        {"name": 1},
        {"name": 0},
        {"name": -1},
        {"name": -2},
        ]
        """.data(using: String.Encoding.utf8) ?? Data()
        let decoder = NIOJSONDecoder()
        do {
            let models: [Example]? = try decoder.decode(type: [Example].self, from: data)
            XCTAssert(models?[0].name == 1)
            XCTAssert(models?[1].name == 0)
            XCTAssert(models?[2].name == 1)
            XCTAssert(models?[3].name == 0)
            XCTAssert(models?[4].name == 1)
            XCTAssert(models?[5].name == 0)
            XCTAssert(models?[6].name == 2)
            XCTAssert(models?[7].name == 1)
            XCTAssert(models?[8].name == 0)
            XCTAssert(models?[9].name == -1)
            XCTAssert(models?[10].name == -2)
        } catch {
            print(error)
        }
    }
    
    func testUInt() {
        struct Example: Codable {
            var name: UInt
        }
        let data: Data = """
        [
        {"name": true},
        {"name": false},
        {"name": "true"},
        {"name": "false"},
        {"name": "yes"},
        {"name": "no"},
        {"name": 2},
        {"name": 1},
        {"name": 0}
        ]
        """.data(using: String.Encoding.utf8) ?? Data()
        let decoder = NIOJSONDecoder()
        do {
            let models: [Example]? = try decoder.decode(type: [Example].self, from: data)
            XCTAssert(models?[0].name == 1)
            XCTAssert(models?[1].name == 0)
            XCTAssert(models?[2].name == 1)
            XCTAssert(models?[3].name == 0)
            XCTAssert(models?[4].name == 1)
            XCTAssert(models?[5].name == 0)
            XCTAssert(models?[6].name == 2)
            XCTAssert(models?[7].name == 1)
            XCTAssert(models?[8].name == 0)
//            XCTAssert(models?[9].name == UInt("-1"))
//            XCTAssert(models?[10].name == UInt("-2"))
        } catch {
            print(error)
        }
    }
    
    func testUInt8() {
        struct Example: Codable {
            var name: UInt8
        }
        let data: Data = """
        [
        {"name": true},
        {"name": false},
        {"name": "true"},
        {"name": "false"},
        {"name": "yes"},
        {"name": "no"},
        {"name": 2},
        {"name": 1},
        {"name": 0},
        ]
        """.data(using: String.Encoding.utf8) ?? Data()
        let decoder = NIOJSONDecoder()
        do {
            let models: [Example]? = try decoder.decode(type: [Example].self, from: data)
            XCTAssert(models?[0].name == 1)
            XCTAssert(models?[1].name == 0)
            XCTAssert(models?[2].name == 1)
            XCTAssert(models?[3].name == 0)
            XCTAssert(models?[4].name == 1)
            XCTAssert(models?[5].name == 0)
            XCTAssert(models?[6].name == 2)
            XCTAssert(models?[7].name == 1)
            XCTAssert(models?[8].name == 0)
//            XCTAssert(models?[9].name == UInt8("-1"))
//            XCTAssert(models?[10].name == UInt8("-2"))
        } catch {
            print(error)
        }
    }
    
    func testUInt16() {
        struct Example: Codable {
            var name: UInt16
        }
        let data: Data = """
        [
        {"name": true},
        {"name": false},
        {"name": "true"},
        {"name": "false"},
        {"name": "yes"},
        {"name": "no"},
        {"name": 2},
        {"name": 1},
        {"name": 0},
        ]
        """.data(using: String.Encoding.utf8) ?? Data()
        let decoder = NIOJSONDecoder()
        do {
            let models: [Example]? = try decoder.decode(type: [Example].self, from: data)
            XCTAssert(models?[0].name == 1)
            XCTAssert(models?[1].name == 0)
            XCTAssert(models?[2].name == 1)
            XCTAssert(models?[3].name == 0)
            XCTAssert(models?[4].name == 1)
            XCTAssert(models?[5].name == 0)
            XCTAssert(models?[6].name == 2)
            XCTAssert(models?[7].name == 1)
            XCTAssert(models?[8].name == 0)
            //            XCTAssert(models?[9].name == UInt8("-1"))
            //            XCTAssert(models?[10].name == UInt8("-2"))
        } catch {
            print(error)
        }
    }
    
    func testUInt32() {
        struct Example: Codable {
            var name: UInt32
        }
        let data: Data = """
        [
        {"name": true},
        {"name": false},
        {"name": "true"},
        {"name": "false"},
        {"name": "yes"},
        {"name": "no"},
        {"name": 2},
        {"name": 1},
        {"name": 0},
        ]
        """.data(using: String.Encoding.utf8) ?? Data()
        let decoder = NIOJSONDecoder()
        do {
            let models: [Example]? = try decoder.decode(type: [Example].self, from: data)
            XCTAssert(models?[0].name == 1)
            XCTAssert(models?[1].name == 0)
            XCTAssert(models?[2].name == 1)
            XCTAssert(models?[3].name == 0)
            XCTAssert(models?[4].name == 1)
            XCTAssert(models?[5].name == 0)
            XCTAssert(models?[6].name == 2)
            XCTAssert(models?[7].name == 1)
            XCTAssert(models?[8].name == 0)
            //            XCTAssert(models?[9].name == UInt8("-1"))
            //            XCTAssert(models?[10].name == UInt8("-2"))
        } catch {
            print(error)
        }
    }
    
    func testUInt64() {
        struct Example: Codable {
            var name: UInt64
        }
        let data: Data = """
        [
        {"name": true},
        {"name": false},
        {"name": "true"},
        {"name": "false"},
        {"name": "yes"},
        {"name": "no"},
        {"name": 2},
        {"name": 1},
        {"name": 0}
        ]
        """.data(using: String.Encoding.utf8) ?? Data()
        let decoder = NIOJSONDecoder()
        do {
            let models: [Example]? = try decoder.decode(type: [Example].self, from: data)
            XCTAssert(models?[0].name == 1)
            XCTAssert(models?[1].name == 0)
            XCTAssert(models?[2].name == 1)
            XCTAssert(models?[3].name == 0)
            XCTAssert(models?[4].name == 1)
            XCTAssert(models?[5].name == 0)
            XCTAssert(models?[6].name == 2)
            XCTAssert(models?[7].name == 1)
            XCTAssert(models?[8].name == 0)
        } catch {
            print(error)
        }
    }
    
    func testFloat() {
        struct Example: Codable {
            var name: Float
        }
        let data: Data = """
        [
        {"name": true},
        {"name": false},
        {"name": "true"},
        {"name": "false"},
        {"name": "yes"},
        {"name": "no"},
        {"name": 2},
        {"name": 1},
        {"name": 0},
        {"name": -1},
        {"name": -2},
        ]
        """.data(using: String.Encoding.utf8) ?? Data()
        let decoder = NIOJSONDecoder()
        do {
            let models: [Example]? = try decoder.decode(type: [Example].self, from: data)
            XCTAssert(models?[0].name == 1)
            XCTAssert(models?[1].name == 0)
            XCTAssert(models?[2].name == 1)
            XCTAssert(models?[3].name == 0)
            XCTAssert(models?[4].name == 1)
            XCTAssert(models?[5].name == 0)
            XCTAssert(models?[6].name == 2)
            XCTAssert(models?[7].name == 1)
            XCTAssert(models?[8].name == 0)
            XCTAssert(models?[9].name == -1)
            XCTAssert(models?[10].name == -2)
        } catch {
            print(error)
        }
    }
    
    func testDouble() {
        struct Example: Codable {
            var name: Double
        }
        let data: Data = """
        [
        {"name": true},
        {"name": false},
        {"name": "true"},
        {"name": "false"},
        {"name": "yes"},
        {"name": "no"},
        {"name": 2},
        {"name": 1},
        {"name": 0},
        {"name": -1},
        {"name": -2},
        ]
        """.data(using: String.Encoding.utf8) ?? Data()
        let decoder = NIOJSONDecoder()
        do {
            let models: [Example]? = try decoder.decode(type: [Example].self, from: data)
            XCTAssert(models?[0].name == 1)
            XCTAssert(models?[1].name == 0)
            XCTAssert(models?[2].name == 1)
            XCTAssert(models?[3].name == 0)
            XCTAssert(models?[4].name == 1)
            XCTAssert(models?[5].name == 0)
            XCTAssert(models?[6].name == 2)
            XCTAssert(models?[7].name == 1)
            XCTAssert(models?[8].name == 0)
            XCTAssert(models?[9].name == -1)
            XCTAssert(models?[10].name == -2)
        } catch {
            print(error)
        }
    }
    
    func testString() {
        struct Example: Codable {
            var name: String
        }
        let data: Data = """
        [
        {"name": 1},
        {"name": 0},
        ]
        """.data(using: String.Encoding.utf8) ?? Data()
        let decoder = NIOJSONDecoder()
        do {
            guard let models: [Example] = try decoder.decode(type: [Example].self, from: data) else { return }
            print(models[0].name)
            print(models[1].name)
            XCTAssert(models[0].name == "true")
            XCTAssert(models[1].name == "false")
        } catch {
            print(error)
        }
    }
    
    func testDictionary0() {
        struct Example: Codable {
            var name: String
        }
        let data: Data = """
        {}
        """.data(using: String.Encoding.utf8) ?? Data()
        let decoder = NIOJSONDecoder()
        decoder.containerStrategy = .useNull
        do {
            let model: Example? = try decoder.decode(type: Example.self, from: data)
            XCTAssert(model == nil)
        } catch {
            print(error)
        }
    }

    func testDictionary1() {
        let data: Data = """
        {"key": [{"info": "b"}]}
        """.data(using: String.Encoding.utf8) ?? Data()

        class ESRootClass: Codable {
            var key: [Key]?
        }

        class Key: Codable {
            var info: String?
        }
        let decoder = NIOJSONDecoder()
        decoder.containerStrategy = .useNull
        do {
            let model: ESRootClass? = try decoder.decode(type: ESRootClass.self, from: data)
            XCTAssert(model?.key != nil)
            XCTAssert(model?.key?[0].info == "b")
        } catch {
            print(error)
        }
    }

    func testDictionary2() {
        let data: Data = """
        {"key": {"key": {"key": "key"}}}
        """.data(using: String.Encoding.utf8) ?? Data()
        let decoder = NIOJSONDecoder()
        decoder.containerStrategy = .useNull

        class ESRootClass: Codable {
            var key: Key0?
            enum CodingKeys: String, CodingKey {
                case key = "key"
            }
        }
        class Key0: Codable {
            var key: Key1?
        }
        class Key1: Codable {
            var key: String?
        }
        do {
            let model: ESRootClass? = try decoder.decode(type: ESRootClass.self, from: data)
            XCTAssert(model?.key?.key?.key == "key")
        } catch {
            print(error)
        }
    }
    
    func testArray0() {
        struct Example: Codable {
            var name: String
        }
        let data: Data = """
        [{"name": "2ddf"}, {"name": null}]
        """.data(using: String.Encoding.utf8) ?? Data()
        let decoder = NIOJSONDecoder()
        do {
            guard let models: [Example] = try decoder.decode(type: [Example].self, from: data) else { return }
            XCTAssert(models.count == 2)
        } catch {
            print(error)
        }
    }

    func testArray1() {
        struct Example: Codable {
            var name: Int64
        }
        let data: Data = """
        [
        ]
        """.data(using: String.Encoding.utf8) ?? Data()
        let decoder = NIOJSONDecoder()
        decoder.containerStrategy = .useEmpty
        do {
            let models: [Example]? = try decoder.decode(type: [Example].self, from: data)
            XCTAssert(models?.count == 0)
        } catch {
            print(error)
        }
    }

    func testArray2() {
        let data: Data = """
        [
            true
        ]
        """.data(using: String.Encoding.utf8) ?? Data()
        let decoder = NIOJSONDecoder()
        decoder.containerStrategy = .useNull
        do {
            guard let models: [Bool] = try decoder.decode(type: [Bool].self, from: data) else {
                XCTAssert(false)
                return
            }
            XCTAssert(models.count == 1)
            XCTAssert(models[0] == true)
        } catch {
            print(error)
        }
    }

    func testArray3() {
        let data: Data = """
        {
            "a": [{"b": "c"}]
        }
        """.data(using: String.Encoding.utf8) ?? Data()

        class ESRootClass: Codable {
            var a: [A]?
        }
        class A: Codable {
            var b: String?
        }

        let decoder = NIOJSONDecoder()
        decoder.containerStrategy = .useNull
        do {
            guard let models: ESRootClass = try decoder.decode(type: ESRootClass.self, from: data) else {
                XCTAssert(false)
                return
            }
            XCTAssert(models.a?.count == 1)
            XCTAssert(models.a?[0].b == "c")
        } catch {
            print(error)
        }
    }

    func testArray4() {
            let data: Data = """
            [[
            {"name": true}
            ]]
            """.data(using: String.Encoding.utf8) ?? Data()

            class ESRootClass: Codable {
                var a: [[A]]
            }
            class A: Codable {
                var name: String?
            }

            let decoder = NIOJSONDecoder()
            decoder.containerStrategy = .useNull
            do {
                guard let models: ESRootClass = try decoder.decode(type: ESRootClass.self, from: data) else {
                    XCTAssert(false)
                    return
                }
                XCTAssert(models.a.count == 1)
                XCTAssert(models.a[0][0].name == "true")
            } catch {
                print(error)
            }
        }

    func testCustom0() {
        struct A: Codable {
            var a: [B?]
        }

        struct B: Codable {
            var gender: Gender?
        }

        enum Gender: Int, Codable {
            case male = 0
            case female = 1
            case unknow = 2
        }

        let data: Data = """
        {
         "a": [{"gender": 0}, {"gender": 1}, {"gender": 2}]
        }
        """.data(using: String.Encoding.utf8) ?? Data()
        let decoder = NIOJSONDecoder()
        do {
            guard let models: A = try decoder.decode(type: A.self, from: data) else { return }
            XCTAssert((models.a[0]?.gender ?? Gender.unknow) == Gender.male)
            XCTAssert((models.a[1]?.gender ?? Gender.unknow) == Gender.female)
            XCTAssert((models.a[2]?.gender ?? Gender.unknow) == Gender.unknow)
        } catch {
            print(error)
        }
    }
    // 测试取值异常
    func testCustom1() {
        struct Human: Codable {
            var gender: Gender?
        }

        enum Gender: Int, Codable, NIOSingleValueDecodingScopeLimitable, TypeConvertible {
            func limit(key: CodingKey) -> Set<AnyHashable> {
                return [0, 1, 2]
            }

            func execption(key: CodingKey) -> AnyHashable {
                return 2
            }


            case male = 0
            case female = 1
            case unknow = 2

            enum CodingKeys: CodingKey {
                case male
                case female
                case unknow
            }

            init(with value: Decodable) {
                print(value)
                self = .unknow
            }

            func toInt(key: CodingKey, value: Float) -> Int {
                print(value)
                return 3
            }
        }

        let data: Data = """
         {"gender": 4}
        """.data(using: String.Encoding.utf8) ?? Data()
        let decoder: NIOJSONDecoder = NIOJSONDecoder()
        do {
            guard let models: Human = try decoder.decode(type: Human.self, from: data) else { return }
            XCTAssert(models.gender == Gender.unknow)
        } catch {
            print(error)
        }
    }

    // 测试类型不一致
    func testCustom2() {
        struct Human: Codable {
            var gender: Gender?
        }

        enum Gender: Int, Codable, NIOSingleValueDecodingScopeExecptionConvertible, TypeConvertible {
            case male = 0
            case female = 1
            case unknow = 2

            enum CodingKeys: CodingKey {
                case male
                case female
                case unknow
            }

            init(with value: Decodable) {
                print(value)
                self = .unknow
            }

            func toInt(key: CodingKey, value: Float) -> Int {
                print(value)
                return 3
            }
        }

        let data: Data = """
         {"gender": 3.5}
        """.data(using: String.Encoding.utf8) ?? Data()
        let decoder: NIOJSONDecoder = NIOJSONDecoder()
        decoder.convertTypeStrategy = .custom(Gender.male)
        do {
            guard let models: Human = try decoder.decode(type: Human.self, from: data) else { return }
            XCTAssert(models.gender == Gender.unknow)
        } catch {
            print(error)
        }
    }

    /// 继承问题
    func testCustom3()  {
        class Wine: Codable {
            var abv: Float?
        }
        class Beer: Wine {
            var name: String?
            var brewery: String?
            enum CodingKeys: String, CodingKey {
                case name
                case brewery
            }

            required init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                self.name = try container.decode(String.self, forKey: .name)
                self.brewery = try container.decode(String.self, forKey: .brewery)
                try super.init(from: decoder)
            }
        }

        let jsonDic = ["name": "beer", "brewery": "100", "abv": 10.0] as [String : Any]

        let jsonData = try! JSONSerialization.data(withJSONObject: jsonDic, options: .prettyPrinted)
        let decode = NIOJSONDecoder()
        do {
            let beer = try decode.decode(type: Beer.self, from: jsonData)
            print("解析成功:\(beer.debugDescription)")
        } catch  {
            print("解析失败:\(error)")
        }
    }

    func testCustom4() {
        enum Level: String, Codable {
            case large
            case medium
            case small
        }

        struct Location: Codable {
            let latitude: Double
            let longitude: Double
        }

        // CustomDebugStringConvertible只是为了更好打印
        class City: Codable, CustomDebugStringConvertible {
            let name: String
            let pop: UInt
            let level: Level
            let location: Location

            /// 计算属性不参与codable过程
            var debugDescription: String {
                return """
                {
                    "name": \(name),
                    "pop": \(pop),
                    "level": \(level.rawValue),
                    "location": {
                        "latitude": \(location.latitude),
                        "longitude": \(location.longitude)
                    }
                }
                """
            }
        }

        let jsonData = """
                {
                "name": "Shanghai",
                "pop": 21000000,
                "level": "large",
                "location": {
                  "latitude": 30.40,
                  "longitude": 120.51
                }
                }
                """.data(using: .utf8)!
        do {
            let city = try JSONDecoder().decode(City.self, from: jsonData)
            print("city:", city)
        } catch {
            print(error.localizedDescription)
        }
    }

    func testNull() {
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
    }
}
