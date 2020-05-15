import Foundation

struct NIOCodableKey: CodingKey {
    var stringValue: String

    init?(stringValue: String) {
        self.stringValue = stringValue
    }

    var intValue: Int?

    init?(intValue: Int) {
        self.stringValue = "\(intValue)"
        self.intValue = intValue
    }

    init(int: Int) {
        self.stringValue = "\(int)"
        self.intValue = int
    }

    init(string: String) {
        self.stringValue = string
    }

    // 处理字典和数组
    var value: Any?
    init(value: Any?) {
        self.value = value
        self.stringValue = "不能匹配\(type(of: value))类型"
    }
}
