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
}


// MARK: - Int转Bool
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

// MARK: - Int8转Bool
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

// MARK: - Int16转Bool
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

// MARK: - Int32转Bool
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

// MARK: - Int64转Bool
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

// MARK: - UInt转Bool
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

// MARK: - UInt8转Bool
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

// MARK: - UInt16转Bool
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

// MARK: - UInt32转Bool
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

// MARK: - UInt64转Bool
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

// MARK: - Float转Bool
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

// MARK: - Double转Bool
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

// MARK: - String转Bool
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
