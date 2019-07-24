import Foundation

public protocol CustomConvertible {
    func toBool(value: Int) -> Bool
    func toBool(value: Int?) -> Bool?
}

extension CustomConvertible {
    func toBool(value: Int) -> Bool {
        return value == 1 ? true : false
    }
    
    func toBool(value: Int?) -> Bool? {
        guard let value: Int = value else { return nil }
        switch value {
        case 1: return true
        case 0: return false
        default: return nil
        }
    }
}

//extension Bool: CustomConvertible {}
//
//extension Int: CustomConvertible {}
//
//extension Int8: CustomConvertible {}
//
//extension Int16: CustomConvertible {}
//
//extension Int32: CustomConvertible {}
//
//extension Int64: CustomConvertible {}
//
//extension UInt: CustomConvertible {}
//
//extension UInt8: CustomConvertible {}
//
//extension UInt16: CustomConvertible {}
//
//extension UInt32: CustomConvertible {}
//
//extension UInt64: CustomConvertible {}
//
//extension Float: CustomConvertible {}
//
//extension Double: CustomConvertible {}
//
//extension String: CustomConvertible {}
//
//extension Array: CustomConvertible {}
//
//extension Dictionary: CustomConvertible {}

public protocol TypeDefaultValueCapability {
    init()
}
