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
