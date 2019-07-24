import Foundation

public protocol CustomConvertible {
    func toBool(key: CodingKey, value: Int) -> Bool
    func toBool(key: CodingKey, value: Int) -> Bool?
    
    func toBool(key: CodingKey, value: Int8) -> Bool
    func toBool(key: CodingKey, value: Int8) -> Bool?
    
    func toBool(key: CodingKey, value: Int16) -> Bool
    func toBool(key: CodingKey, value: Int16) -> Bool?
    
    func toBool(key: CodingKey, value: Int32) -> Bool
    func toBool(key: CodingKey, value: Int32) -> Bool?
    
    func toBool(key: CodingKey, value: Int64) -> Bool
    func toBool(key: CodingKey, value: Int64) -> Bool?
    
    func toBool(key: CodingKey, value: UInt) -> Bool
    func toBool(key: CodingKey, value: UInt) -> Bool?
    
    func toBool(key: CodingKey, value: UInt8) -> Bool
    func toBool(key: CodingKey, value: UInt8) -> Bool?
    
    func toBool(key: CodingKey, value: UInt16) -> Bool
    func toBool(key: CodingKey, value: UInt16) -> Bool?
    
    func toBool(key: CodingKey, value: UInt32) -> Bool
    func toBool(key: CodingKey, value: UInt32) -> Bool?
    
    func toBool(key: CodingKey, value: UInt64) -> Bool
    func toBool(key: CodingKey, value: UInt64) -> Bool?
    
    func toBool(key: CodingKey, value: Float) -> Bool
    func toBool(key: CodingKey, value: Float) -> Bool?
    
    func toBool(key: CodingKey, value: Double) -> Bool
    func toBool(key: CodingKey, value: Double) -> Bool?
    
    func toBool(key: CodingKey, value: String) -> Bool
    func toBool(key: CodingKey, value: String) -> Bool?
    
    func toInt(key: CodingKey, value: Bool) -> Int
    func toInt(key: CodingKey, value: Bool) -> Int?
    
    func toInt(key: CodingKey, value: Int8) -> Int
    func toInt(key: CodingKey, value: Int8) -> Int?
    
    func toInt(key: CodingKey, value: Int16) -> Int
    func toInt(key: CodingKey, value: Int16) -> Int?
    
    func toInt(key: CodingKey, value: Int32) -> Int
    func toInt(key: CodingKey, value: Int32) -> Int?
    
    func toInt(key: CodingKey, value: Int64) -> Int
    func toInt(key: CodingKey, value: Int64) -> Int?
    
    func toInt(key: CodingKey, value: UInt) -> Int
    func toInt(key: CodingKey, value: UInt) -> Int?
    
    func toInt(key: CodingKey, value: UInt8) -> Int
    func toInt(key: CodingKey, value: UInt8) -> Int?
    
    func toInt(key: CodingKey, value: UInt16) -> Int
    func toInt(key: CodingKey, value: UInt16) -> Int?
    
    func toInt(key: CodingKey, value: UInt32) -> Int
    func toInt(key: CodingKey, value: UInt32) -> Int?
    
    func toInt(key: CodingKey, value: UInt64) -> Int
    func toInt(key: CodingKey, value: UInt64) -> Int?
    
    func toInt(key: CodingKey, value: Float) -> Int
    func toInt(key: CodingKey, value: Float) -> Int?
    
    func toInt(key: CodingKey, value: Double) -> Int
    func toInt(key: CodingKey, value: Double) -> Int?
    
    func toInt(key: CodingKey, value: String) -> Int
    func toInt(key: CodingKey, value: String) -> Int?
    
    func toInt8(key: CodingKey, value: Bool) -> Int8
    func toInt8(key: CodingKey, value: Bool) -> Int8?
    
    func toInt8(key: CodingKey, value: Int) -> Int8
    func toInt8(key: CodingKey, value: Int) -> Int8?
    
    func toInt8(key: CodingKey, value: Int16) -> Int8
    func toInt8(key: CodingKey, value: Int16) -> Int8?
    
    func toInt8(key: CodingKey, value: Int32) -> Int8
    func toInt8(key: CodingKey, value: Int32) -> Int8?
    
    func toInt8(key: CodingKey, value: Int64) -> Int8
    func toInt8(key: CodingKey, value: Int64) -> Int8?
    
    func toInt8(key: CodingKey, value: UInt) -> Int8
    func toInt8(key: CodingKey, value: UInt) -> Int8?
    
    func toInt8(key: CodingKey, value: UInt8) -> Int8
    func toInt8(key: CodingKey, value: UInt8) -> Int8?
    
    func toInt8(key: CodingKey, value: UInt16) -> Int8
    func toInt8(key: CodingKey, value: UInt16) -> Int8?

    func toInt8(key: CodingKey, value: UInt32) -> Int8
    func toInt8(key: CodingKey, value: UInt32) -> Int8?
    
    func toInt8(key: CodingKey, value: UInt64) -> Int8
    func toInt8(key: CodingKey, value: UInt64) -> Int8?
    
    func toInt8(key: CodingKey, value: Float) -> Int8
    func toInt8(key: CodingKey, value: Float) -> Int8?
    
    func toInt8(key: CodingKey, value: Double) -> Int8
    func toInt8(key: CodingKey, value: Double) -> Int8?
    
    func toInt8(key: CodingKey, value: String) -> Int8
    func toInt8(key: CodingKey, value: String) -> Int8?
    
    func toInt16(key: CodingKey, value: Bool) -> Int16
    func toInt16(key: CodingKey, value: Bool) -> Int16?
    
    func toInt16(key: CodingKey, value: Int) -> Int16
    func toInt16(key: CodingKey, value: Int) -> Int16?
    
    func toInt16(key: CodingKey, value: Int8) -> Int16
    func toInt16(key: CodingKey, value: Int8) -> Int16?
    
    func toInt16(key: CodingKey, value: Int32) -> Int16
    func toInt16(key: CodingKey, value: Int32) -> Int16?
    
    func toInt16(key: CodingKey, value: Int64) -> Int16
    func toInt16(key: CodingKey, value: Int64) -> Int16?
    
    func toInt16(key: CodingKey, value: UInt) -> Int16
    func toInt16(key: CodingKey, value: UInt) -> Int16?
    
    func toInt16(key: CodingKey, value: UInt8) -> Int16
    func toInt16(key: CodingKey, value: UInt8) -> Int16?
    
    func toInt16(key: CodingKey, value: UInt16) -> Int16
    func toInt16(key: CodingKey, value: UInt16) -> Int16?
    
    func toInt16(key: CodingKey, value: UInt32) -> Int16
    func toInt16(key: CodingKey, value: UInt32) -> Int16?
    
    func toInt16(key: CodingKey, value: UInt64) -> Int16
    func toInt16(key: CodingKey, value: UInt64) -> Int16?
    
    func toInt16(key: CodingKey, value: Float) -> Int16
    func toInt16(key: CodingKey, value: Float) -> Int16?
    
    func toInt16(key: CodingKey, value: Double) -> Int16
    func toInt16(key: CodingKey, value: Double) -> Int16?
    
    func toInt16(key: CodingKey, value: String) -> Int16
    func toInt16(key: CodingKey, value: String) -> Int16?
}

// MARK: - 其他类型转Bool
// MARK: -
// MARK: Int转Bool
extension CustomConvertible {
    func toBool(key: CodingKey, value: Int) -> Bool {
        switch value {
        case 1: return true
        default: return false
        }
    }
    
    func toBool(key: CodingKey, value: Int) -> Bool? {
        switch value {
        case 1: return true
        case 0: return false
        default: return nil
        }
    }
}

// MARK: Int8转Bool
extension CustomConvertible {
    func toBool(key: CodingKey, value: Int8) -> Bool {
        switch value {
        case 1: return true
        default: return false
        }
    }
    
    func toBool(key: CodingKey, value: Int8) -> Bool? {
        switch value {
        case 1: return true
        case 0: return false
        default: return nil
        }
    }
}

// MARK: Int16转Bool
extension CustomConvertible {
    func toBool(key: CodingKey, value: Int16) -> Bool {
        switch value {
        case 1: return true
        default: return false
        }
    }
    func toBool(key: CodingKey, value: Int16) -> Bool? {
        switch value {
        case 1: return true
        case 0: return false
        default: return nil
        }
    }
}

// MARK: Int32转Bool
extension CustomConvertible {
    func toBool(key: CodingKey, value: Int32) -> Bool {
        switch value {
        case 1: return true
        default: return false
        }
    }
    
    func toBool(key: CodingKey, value: Int32) -> Bool? {
        switch value {
        case 1: return true
        case 0: return false
        default: return nil
        }
    }
}

// MARK: Int64转Bool
extension CustomConvertible {
    func toBool(key: CodingKey, value: Int64) -> Bool {
        switch value {
        case 1: return true
        default: return false
        }
    }
    
    func toBool(key: CodingKey, value: Int64) -> Bool? {
        switch value {
        case 1: return true
        case 0: return false
        default: return nil
        }
    }
}

// MARK: UInt转Bool
extension CustomConvertible {
    func toBool(key: CodingKey, value: UInt) -> Bool {
        switch value {
        case 1: return true
        default: return false
        }
    }
    
    func toBool(key: CodingKey, value: UInt) -> Bool? {
        switch value {
        case 1: return true
        case 0: return false
        default: return nil
        }
    }
}

// MARK: UInt8转Bool
extension CustomConvertible {
    func toBool(key: CodingKey, value: UInt8) -> Bool {
        switch value {
        case 1: return true
        default: return false
        }
    }
    
    func toBool(key: CodingKey, value: UInt8) -> Bool? {
        switch value {
        case 1: return true
        case 0: return false
        default: return nil
        }
    }
}

// MARK: UInt16转Bool
extension CustomConvertible {
    func toBool(key: CodingKey, value: UInt16) -> Bool {
        switch value {
        case 1: return true
        default: return false
        }
    }
    func toBool(key: CodingKey, value: UInt16) -> Bool? {
        switch value {
        case 1: return true
        case 0: return false
        default: return nil
        }
    }
}

// MARK: UInt32转Bool
extension CustomConvertible {
    func toBool(key: CodingKey, value: UInt32) -> Bool {
        switch value {
        case 1: return true
        default: return false
        }
    }
    
    func toBool(key: CodingKey, value: UInt32) -> Bool? {
        switch value {
        case 1: return true
        case 0: return false
        default: return nil
        }
    }
}

// MARK: UInt64转Bool
extension CustomConvertible {
    func toBool(key: CodingKey, value: UInt64) -> Bool {
        switch value {
        case 1: return true
        default: return false
        }
    }
    
    func toBool(key: CodingKey, value: UInt64) -> Bool? {
        switch value {
        case 1: return true
        case 0: return false
        default: return nil
        }
    }
}

// MARK: Float转Bool
extension CustomConvertible {
    func toBool(key: CodingKey, value: Float) -> Bool {
        switch value {
        case 1: return true
        default: return false
        }
    }
    
    func toBool(key: CodingKey, value: Float) -> Bool? {
        switch value {
        case 1: return true
        case 0: return false
        default: return nil
        }
    }
}

// MARK: Double转Bool
extension CustomConvertible {
    func toBool(key: CodingKey, value: Double) -> Bool {
        switch value {
        case 1: return true
        default: return false
        }
    }
    
    func toBool(key: CodingKey, value: Double) -> Bool? {
        switch value {
        case 1: return true
        case 0: return false
        default: return nil
        }
    }
}

// MARK: String转Bool
extension CustomConvertible {
    func toBool(key: CodingKey, value: String) -> Bool {
        switch value.lowercased() {
        case "true", "yes": return true
        case "false", "no": return false
        default: return false
        }
    }
    
    func toBool(key: CodingKey, value: String) -> Bool? {
        switch value.lowercased() {
        case "true", "yes": return true
        case "false", "no": return false
        default: return nil
        }
    }
}

// MARK: - 其他类型转Int
// MARK: -
// MARK: Int转Bool
extension CustomConvertible {
    func toInt(key: CodingKey, value: Bool) -> Int {
        switch value {
        case true: return 1
        default: return 0
        }
    }
    
    func toInt(key: CodingKey, value: Bool) -> Int? {
        switch value {
        case true: return 1
        default: return 0
        }
    }
}

// MARK: Int8转Int
extension CustomConvertible {
    func toInt(key: CodingKey, value: Int8) -> Int {
        return Int(value)
    }
    
    func toInt(key: CodingKey, value: Int8) -> Int? {
        return Int(value)
    }
}

// MARK: Int16转Int
extension CustomConvertible {
    func toInt(key: CodingKey, value: Int16) -> Int {
        return Int(value)
    }
    
    func toInt(key: CodingKey, value: Int16) -> Int? {
        return Int(value)
    }
}

// MARK: Int32转Int
extension CustomConvertible {
    func toInt(key: CodingKey, value: Int32) -> Int {
        return Int(value)
    }
    
    func toInt(key: CodingKey, value: Int32) -> Int? {
        return Int(value)
    }
}

// MARK: Int64转Int
extension CustomConvertible {
    func toInt(key: CodingKey, value: Int64) -> Int {
        return Int(value)
    }
    
    func toInt(key: CodingKey, value: Int64) -> Int? {
        return Int(value)
    }
}

// MARK: UInt转Int
extension CustomConvertible {
    func toInt(key: CodingKey, value: UInt) -> Int {
        return Int(value)
    }
    
    func toInt(key: CodingKey, value: UInt) -> Int? {
        return Int(value)
    }
}

// MARK: UInt8转Int
extension CustomConvertible {
    func toInt(key: CodingKey, value: UInt8) -> Int {
        return Int(value)
    }
    
    func toInt(key: CodingKey, value: UInt8) -> Int? {
        return Int(value)
    }
}

// MARK: UInt16转Int
extension CustomConvertible {
    func toInt(key: CodingKey, value: UInt16) -> Int {
        return Int(value)
    }
    
    func toInt(key: CodingKey, value: UInt16) -> Int? {
        return Int(value)
    }
}

// MARK: UInt32转Int
extension CustomConvertible {
    func toInt(key: CodingKey, value: UInt32) -> Int {
        return Int(value)
    }
    
    func toInt(key: CodingKey, value: UInt32) -> Int? {
        return Int(value)
    }
}

// MARK: UInt64转Int
extension CustomConvertible {
    func toInt(key: CodingKey, value: UInt64) -> Int {
        return Int(value)
    }
    
    func toInt(key: CodingKey, value: UInt64) -> Int? {
        return Int(value)
    }
}

// MARK: Float转Int
extension CustomConvertible {
    func toInt(key: CodingKey, value: Float) -> Int {
        return Int(value)
    }
    
    func toInt(key: CodingKey, value: Float) -> Int? {
        return Int(value)
    }
}

// MARK: Double转Int
extension CustomConvertible {
    func toInt(key: CodingKey, value: Double) -> Int {
        return Int(value)
    }
    
    func toInt(key: CodingKey, value: Double) -> Int? {
        return Int(value)
    }
}

// MARK: String转Int
extension CustomConvertible {
    func toInt(key: CodingKey, value: String) -> Int {
        return Int(value) ?? 0
    }
    
    func toInt(key: CodingKey, value: String) -> Int? {
        return Int(value)
    }
}

// MARK: Bool转Int8
extension CustomConvertible {
    func toInt8(key: CodingKey, value: Bool) -> Int8 {
        switch value {
        case true: return 1
        default: return 0
        }
    }
    
    func toInt8(key: CodingKey, value: Bool) -> Int8? {
        switch value {
        case true: return 1
        case false: return 0
        }
    }
}

// MARK: Int转Int8
extension CustomConvertible {
    func toInt8(key: CodingKey, value: Int) -> Int8 {
        return Int8(value)
    }
    
    func toInt8(key: CodingKey, value: Int) -> Int8? {
        return Int8(value)
    }
}

// MARK: Int16转Int8
extension CustomConvertible {
    func toInt8(key: CodingKey, value: Int16) -> Int8 {
        return Int8(value)
    }
    
    func toInt8(key: CodingKey, value: Int16) -> Int8? {
        return Int8(value)
    }
}

// MARK: Int32转Int8
extension CustomConvertible {
    func toInt8(key: CodingKey, value: Int32) -> Int8 {
        return Int8(value)
    }
    
    func toInt8(key: CodingKey, value: Int32) -> Int8? {
        return Int8(value)
    }
}

// MARK: Int64转Int8
extension CustomConvertible {
    func toInt8(key: CodingKey, value: Int64) -> Int8 {
        return Int8(value)
    }
    
    func toInt8(key: CodingKey, value: Int64) -> Int8? {
        return Int8(value)
    }
}

// MARK: UInt转Int8
extension CustomConvertible {
    func toInt8(key: CodingKey, value: UInt) -> Int8 {
        return Int8(value)
    }
    
    func toInt8(key: CodingKey, value: UInt) -> Int8? {
        return Int8(value)
    }
}

// MARK: UInt8转Int8
extension CustomConvertible {
    func toInt8(key: CodingKey, value: UInt8) -> Int8 {
        return Int8(value)
    }
    
    func toInt8(key: CodingKey, value: UInt8) -> Int8? {
        return Int8(value)
    }
}

extension CustomConvertible {
    func toInt8(key: CodingKey, value: UInt16) -> Int8 {
        return Int8(value)
    }
    
    func toInt8(key: CodingKey, value: UInt16) -> Int8? {
        return Int8(value)
    }
}

// MARK: UInt32转Int8
extension CustomConvertible {
    func toInt8(key: CodingKey, value: UInt32) -> Int8 {
        return Int8(value)
    }
    
    func toInt8(key: CodingKey, value: UInt32) -> Int8? {
        return Int8(value)
    }
}

// MARK: UInt64转Int8
extension CustomConvertible {
    func toInt8(key: CodingKey, value: UInt64) -> Int8 {
        return Int8(value)
    }
    
    func toInt8(key: CodingKey, value: UInt64) -> Int8? {
        return Int8(value)
    }
}

// MARK: Float转Int8
extension CustomConvertible {
    func toInt8(key: CodingKey, value: Float) -> Int8 {
        return Int8(value)
    }
    
    func toInt8(key: CodingKey, value: Float) -> Int8? {
        return Int8(value)
    }
}

// MARK: Double转Int8
extension CustomConvertible {
    func toInt8(key: CodingKey, value: Double) -> Int8 {
        return Int8(value)
    }
    
    func toInt8(key: CodingKey, value: Double) -> Int8? {
        return Int8(value)
    }
}

// MARK: String转Int8
extension CustomConvertible {
    func toInt8(key: CodingKey, value: String) -> Int8 {
        return Int8(value) ?? 0
    }
    
    func toInt8(key: CodingKey, value: String) -> Int8? {
        return Int8(value)
    }
}

// MARK: Bool转Int16
extension CustomConvertible {
    func toInt16(key: CodingKey, value: Bool) -> Int16 {
        switch value {
        case true: return 1
        default: return 0
        }
    }
    
    func toInt16(key: CodingKey, value: Bool) -> Int16? {
        switch value {
        case true: return 1
        default: return 0
        }
    }
}

// MARK: Int转Int16
extension CustomConvertible {
    func toInt16(key: CodingKey, value: Int) -> Int16 {
        return Int16(value)
    }
    
    func toInt16(key: CodingKey, value: Int) -> Int16? {
        return Int16(value)
    }
}

// MARK: Int8转Int16
extension CustomConvertible {
    func toInt16(key: CodingKey, value: Int8) -> Int16 {
        return Int16(value)
    }
    
    func toInt16(key: CodingKey, value: Int8) -> Int16? {
        return Int16(value)
    }
}

// MARK: Int32转Int16
extension CustomConvertible {
    func toInt16(key: CodingKey, value: Int32) -> Int16 {
        return Int16(value)
    }
    
    func toInt16(key: CodingKey, value: Int32) -> Int16? {
        return Int16(value)
    }
}

// MARK: Int64转Int16
extension CustomConvertible {
    func toInt16(key: CodingKey, value: Int64) -> Int16 {
        return Int16(value)
    }
    
    func toInt16(key: CodingKey, value: Int64) -> Int16? {
        return Int16(value)
    }
}

// MARK: UInt转Int16
extension CustomConvertible {
    func toInt16(key: CodingKey, value: UInt) -> Int16 {
        return Int16(value)
    }
    
    func toInt16(key: CodingKey, value: UInt) -> Int16? {
        return Int16(value)
    }
}

// MARK: UInt8转Int16
extension CustomConvertible {
    func toInt16(key: CodingKey, value: UInt8) -> Int16 {
        return Int16(value)
    }
    
    func toInt16(key: CodingKey, value: UInt8) -> Int16? {
        return Int16(value)
    }
}

// MARK: UInt16转Int16
extension CustomConvertible  {
    func toInt16(key: CodingKey, value: UInt16) -> Int16 {
        return Int16(value)
    }
    
    func toInt16(key: CodingKey, value: UInt16) -> Int16? {
        return Int16(value)
    }
}

// MARK: UInt32转Int16
extension CustomConvertible {
    func toInt16(key: CodingKey, value: UInt32) -> Int16 {
        return Int16(value)
    }
    
    func toInt16(key: CodingKey, value: UInt32) -> Int16? {
        return Int16(value)
    }
}

// MARK: UInt64转Int16
extension CustomConvertible {
    func toInt16(key: CodingKey, value: UInt64) -> Int16 {
        return Int16(value)
    }
    
    func toInt16(key: CodingKey, value: UInt64) -> Int16? {
        return Int16(value)
    }
}

// MARK: Float转Int16
extension CustomConvertible {
    func toInt16(key: CodingKey, value: Float) -> Int16 {
        return Int16(value)
    }
    
    func toInt16(key: CodingKey, value: Float) -> Int16? {
        return Int16(value)
    }
}

// MARK: Double转Int16
extension CustomConvertible {
    func toInt16(key: CodingKey, value: Double) -> Int16 {
        return Int16(value)
    }
    
    func toInt16(key: CodingKey, value: Double) -> Int16? {
        return Int16(value)
    }
}

// MARK: String转Int16
extension CustomConvertible {
    func toInt16(key: CodingKey, value: String) -> Int16 {
        return Int16(value) ?? 0
    }
    
    func toInt16(key: CodingKey, value: String) -> Int16? {
        return Int16(value)
    }
}
