import Foundation

struct NIOCodableKey: CodingKey {
    var information: String?

    var stringValue: String

    init?(stringValue: String) {
        self.stringValue = stringValue
    }

    var intValue: Int?

    init?(intValue: Int) {
        self.stringValue = "\(intValue)"
        self.intValue = intValue
        self.information = "\(intValue)"
    }

    init(int: Int) {
        self.stringValue = "\(int)"
        self.intValue = int
        self.information = "\(int)"
    }

    init(string: String) {
        self.stringValue = string
        self.information = string
    }

    init(arrayIndex: Int) {
        self.stringValue = "\(arrayIndex)"
        self.intValue = arrayIndex
        self.information = "[]" + "\(arrayIndex)"
    }

    init(dictionaryIndex: AnyHashable) {
        self.stringValue = dictionaryIndex.description
        self.information = "[:]" + dictionaryIndex.description
    }

    // 处理字典和数组
    var value: Any?
    init(value: Any?) {
        self.value = value
        self.stringValue = "不能匹配\(type(of: value))类型"
    }
}
