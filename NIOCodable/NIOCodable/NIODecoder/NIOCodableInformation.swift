import Foundation

/// 自定义默认值
public struct BoxBaseValue {
    var bool: Bool = false

    var int: Int = 0
    var int8: Int8 = 0
    var int16: Int16 = 0
    var int32: Int32 = 0
    var int64: Int64 = 0

    var uint: UInt = 0
    var uint8: UInt8 = 0
    var uint16: UInt16 = 0
    var uint32: UInt32 = 0
    var uint64: UInt64 = 0

    var float: Float = 0.0
    var double: Double = 0.0

    var string: String = ""
}

struct Inner {

}

extension Inner: TypeConvertible {
    func toBool(key: CodingKey, value: [Any]) -> Bool {
        return false
    }

    func toBool(key: CodingKey, value: [AnyHashable: Any]) -> Bool {
        return false
    }
}
