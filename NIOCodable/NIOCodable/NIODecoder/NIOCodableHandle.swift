import Foundation

struct NIOCodableHandle {
    var convertTypeStrategy: NIOJSONDecoder.ConvertTypeStrategy = .useDefaultable
    var decoder: NIODecoder

    init(decoder: NIODecoder) {
        self.decoder = decoder
        self.convertTypeStrategy = decoder.wrapper?.convertTypeStrategy ?? .useDefaultable
    }

    var codingPath: NIOCodingPath {
        get {
            return self.decoder.codingPath.filter { (item) -> Bool in
                if item is NIOCodableKey {
                    return true
                }
                return false
            }.map { (item) -> NIOCodableKey in
                return item as! NIOCodableKey
            }.reduce("") { (result, item) -> String in
                return result + (item.information ?? "")
            }
        }
    }
}

extension NIOCodableHandle: TypeConvertible {

}

// MARK: - 处理Bool和Bool?类型
extension NIOCodableHandle {
    func decode<K>(value: Any, type: Bool.Type, forKey key: K) throws -> Bool where K: CodingKey {
        if value is NSNull {
            guard let `value`: NSNull = value as? NSNull else {
                throw DecodingError.typeMismatch(Bool.self, DecodingError.Context(codingPath: self.decoder.codingPath, debugDescription: "NSNull can't convert to Bool"))
            }
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toBool(key: key, path: self.codingPath, value: value)
            case .useCustom(let delegate): return delegate.toBool(key: key, path: self.codingPath, value: value)
            }
        } else if value is NSNumber {
            guard let value: NSNumber = value as? NSNumber else {
                throw DecodingError.typeMismatch(Int.self, DecodingError.Context(codingPath: self.decoder.codingPath, debugDescription: "can't convert to NSNumber"))
            }
            if value === kCFBooleanTrue || value === kCFBooleanFalse {
                guard let value: Bool = value as? Bool else {
                    throw DecodingError.typeMismatch(Int.self, DecodingError.Context(codingPath: self.decoder.codingPath, debugDescription: "NSNumber can't convert to Bool"))
                }
                switch self.convertTypeStrategy {
                case .useDefaultable: return self.toBool(key: key, path: self.codingPath, value: value)
                case .useCustom(let delegate): return delegate.toBool(key: key, path: self.codingPath, value: value)
                }
            } else {
                if let `value`: Int = value as? Int {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return self.toBool(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return delegate.toBool(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: Int8 = value as? Int8 {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return self.toBool(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return delegate.toBool(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: Int16 = value as? Int16 {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return self.toBool(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return delegate.toBool(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: Int32 = value as? Int32 {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return self.toBool(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return delegate.toBool(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: Int64 = value as? Int64 {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return self.toBool(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return delegate.toBool(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: UInt = value as? UInt {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return self.toBool(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return delegate.toBool(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: UInt8 = value as? UInt8 {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return self.toBool(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return delegate.toBool(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: UInt16 = value as? UInt16 {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return self.toBool(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return delegate.toBool(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: UInt32 = value as? UInt32 {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return self.toBool(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return delegate.toBool(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: UInt64 = value as? UInt64 {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return self.toBool(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return delegate.toBool(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: Double = value as? Double {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return self.toBool(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return delegate.toBool(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: Float = value as? Float {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return self.toBool(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return delegate.toBool(key: key, path: self.codingPath, value: value)
                    }
                } else {
                    debugPrint("Bool type unsupport :\(value), set default false")
                    return false
                }
            }
        } else if let `value`: String = value as? String {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toBool(key: key, path: self.codingPath, value: value)
            case .useCustom(let delegate): return delegate.toBool(key: key, path: self.codingPath, value: value)
            }
        } else if value is [AnyHashable: Any] {
            guard let `value`: [AnyHashable: Any] = value as? [AnyHashable: Any] else {
                throw DecodingError.typeMismatch(Bool.self, DecodingError.Context(codingPath: self.decoder.codingPath, debugDescription: "Dictionary can't convert to Bool"))
            }
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toBool(key: NIOCodableKey(value: value), path: self.codingPath, value: value)
            case .useCustom(let delegate): return delegate.toBool(key: NIOCodableKey(value: value), path: self.codingPath, value: value)
            }
        } else if value is [Any] {
            guard let `value`: [Any] = value as? [Any] else {
                throw DecodingError.typeMismatch(Bool.self, DecodingError.Context(codingPath: self.decoder.codingPath, debugDescription: "Array can't convert to Bool"))
            }
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toBool(key: NIOCodableKey(value: value), path: self.codingPath, value: value)
            case .useCustom(let delegate): return delegate.toBool(key: NIOCodableKey(value: value), path: self.codingPath, value: value)
            }
        } else {
            debugPrint("Bool type unsupport :\(value), set default false")
            return false
        }
    }

    func decodeIfPresent<K>(value: Any, type: Bool.Type, forKey key: K) throws -> Bool? where K: CodingKey {
        if value is NSNull {
            guard let `value`: NSNull = value as? NSNull else {
                throw DecodingError.typeMismatch(Bool.self, DecodingError.Context(codingPath: self.decoder.codingPath, debugDescription: "NSNull can't convert to Bool"))
            }
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toBool(key: key, path: self.codingPath, value: value)
            case .useCustom(let delegate): return delegate.toBool(key: key, path: self.codingPath, value: value)
            }
        } else if value is NSNumber {
            guard let value: NSNumber = value as? NSNumber else {
                throw DecodingError.typeMismatch(Int.self, DecodingError.Context(codingPath: self.decoder.codingPath, debugDescription: "can't convert to NSNumber"))
            }
            if value === kCFBooleanTrue || value === kCFBooleanFalse {
                guard let value: Bool = value as? Bool else {
                    throw DecodingError.typeMismatch(Int.self, DecodingError.Context(codingPath: self.decoder.codingPath, debugDescription: "NSNumber can't convert to Bool"))
                }
                switch self.convertTypeStrategy {
                case .useDefaultable: return self.toBool(key: key, path: self.codingPath, value: value)
                case .useCustom(let delegate): return delegate.toBool(key: key, path: self.codingPath, value: value)
                }
            } else {
                if let `value`: Int = value as? Int {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return self.toBool(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return delegate.toBool(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: Int8 = value as? Int8 {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return self.toBool(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return delegate.toBool(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: Int16 = value as? Int16 {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return self.toBool(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return delegate.toBool(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: Int32 = value as? Int32 {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return self.toBool(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return delegate.toBool(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: Int64 = value as? Int64 {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return self.toBool(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return delegate.toBool(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: UInt = value as? UInt {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return self.toBool(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return delegate.toBool(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: UInt8 = value as? UInt8 {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return self.toBool(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return delegate.toBool(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: UInt16 = value as? UInt16 {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return self.toBool(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return delegate.toBool(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: UInt32 = value as? UInt32 {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return self.toBool(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return delegate.toBool(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: UInt64 = value as? UInt64 {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return self.toBool(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return delegate.toBool(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: Double = value as? Double {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return self.toBool(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return delegate.toBool(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: Float = value as? Float {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return self.toBool(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return delegate.toBool(key: key, path: self.codingPath, value: value)
                    }
                } else {
                    debugPrint("Bool type unsupport :\(value), set default nil")
                    return nil
                }
            }
        } else if let `value`: String = value as? String {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toBool(key: key, path: self.codingPath, value: value)
            case .useCustom(let delegate): return delegate.toBool(key: key, path: self.codingPath, value: value)
            }
        } else if value is [AnyHashable: Any] {
            guard let `value`: [AnyHashable: Any] = value as? [AnyHashable: Any] else {
                throw DecodingError.typeMismatch(Bool.self, DecodingError.Context(codingPath: self.decoder.codingPath, debugDescription: "Dictionary can't convert to Bool"))
            }
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toBool(key: NIOCodableKey(value: value), path: self.codingPath, value: value)
            case .useCustom(let delegate): return delegate.toBool(key: NIOCodableKey(value: value), path: self.codingPath, value: value)
            }
        } else if value is [Any] {
            guard let `value`: [Any] = value as? [Any] else {
                throw DecodingError.typeMismatch(Bool.self, DecodingError.Context(codingPath: self.decoder.codingPath, debugDescription: "Array can't convert to Bool"))
            }
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toBool(key: NIOCodableKey(value: value), path: self.codingPath, value: value)
            case .useCustom(let delegate): return delegate.toBool(key: NIOCodableKey(value: value), path: self.codingPath, value: value)
            }
        } else {
            debugPrint("Bool type unsupport :\(value), set default false")
            return false
        }
    }
}

// MARK: - 处理Int和Int?类型
extension NIOCodableHandle {
    func decode<K>(value: Any, type: Int.Type, forKey key: K) throws -> Int where K: CodingKey {
        if value is NSNull {
            guard let `value`: NSNull = value as? NSNull else {
                throw DecodingError.typeMismatch(Int.self, DecodingError.Context(codingPath: self.decoder.codingPath, debugDescription: "NSNull can't convert to Int"))
            }
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toInt(key: key, path: self.codingPath, value: value)
            case .useCustom(let delegate): return delegate.toInt(key: key, path: self.codingPath, value: value)
            }
        } else if value is NSNumber {
            guard let value: NSNumber = value as? NSNumber else {
                throw DecodingError.typeMismatch(Int.self, DecodingError.Context(codingPath: self.decoder.codingPath, debugDescription: "can't convert to NSNumber"))
            }
            if value === kCFBooleanTrue || value === kCFBooleanFalse {
                guard let value: Bool = value as? Bool else {
                    throw DecodingError.typeMismatch(Int.self, DecodingError.Context(codingPath: self.decoder.codingPath, debugDescription: "NSNumber can't convert to Bool"))
                }
                switch self.convertTypeStrategy {
                case .useDefaultable: return self.toInt(key: key, path: self.codingPath, value: value)
                case .useCustom(let delegate): return delegate.toInt(key: key, path: self.codingPath, value: value)
                }
            } else {
                if let `value`: Int = value as? Int {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return self.toInt(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return delegate.toInt(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: Int8 = value as? Int8 {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return self.toInt(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return delegate.toInt(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: Int16 = value as? Int16 {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return self.toInt(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return delegate.toInt(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: Int32 = value as? Int32 {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return self.toInt(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return delegate.toInt(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: Int64 = value as? Int64 {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return self.toInt(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return delegate.toInt(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: UInt = value as? UInt {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return self.toInt(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return delegate.toInt(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: UInt8 = value as? UInt8 {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return self.toInt(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return delegate.toInt(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: UInt16 = value as? UInt16 {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return self.toInt(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return delegate.toInt(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: UInt32 = value as? UInt32 {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return self.toInt(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return delegate.toInt(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: UInt64 = value as? UInt64 {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return self.toInt(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return delegate.toInt(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: Double = value as? Double {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return self.toInt(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return delegate.toInt(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: Float = value as? Float {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return self.toInt(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return delegate.toInt(key: key, path: self.codingPath, value: value)
                    }
                } else  {
                    debugPrint("Int type unsupport :\(value), set default 0")
                    return 0
                }
            }
        } else if  value is String {
            guard let value: String = value as? String else {
                throw DecodingError.typeMismatch(Int.self, DecodingError.Context(codingPath: self.decoder.codingPath, debugDescription: "Dictionary can't convert to Int"))
            }
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toInt(key: key, path: self.codingPath, value: value)
            case .useCustom(let delegate): return delegate.toInt(key: key, path: self.codingPath, value: value)
            }
        } else if value is [AnyHashable: Any] {
            guard let `value`: [AnyHashable: Any] = value as? [AnyHashable: Any] else {
                throw DecodingError.typeMismatch(Int.self, DecodingError.Context(codingPath: self.decoder.codingPath, debugDescription: "Dictionary can't convert to Int"))
            }
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toInt(key: NIOCodableKey(value: value), path: self.codingPath, value: value)
            case .useCustom(let delegate): return delegate.toInt(key: NIOCodableKey(value: value), path: self.codingPath, value: value)
            }
        } else if value is [Any] {
            guard let `value`: [Any] = value as? [Any] else {
                throw DecodingError.typeMismatch(Int.self, DecodingError.Context(codingPath: self.decoder.codingPath, debugDescription: "Array can't convert to Int"))
            }
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toInt(key: NIOCodableKey(value: value), path: self.codingPath, value: value)
            case .useCustom(let delegate): return delegate.toInt(key: NIOCodableKey(value: value), path: self.codingPath, value: value)
            }
        } else {
            debugPrint("Int type unsupport :\(value), set default 0")
            return 0
        }
    }

    func decodeIfPresent<K>(value: Any, type: Int.Type, forKey key: K) throws -> Int? where K: CodingKey {
        if value is NSNull {
            guard let `value`: NSNull = value as? NSNull else {
                throw DecodingError.typeMismatch(Int.self, DecodingError.Context(codingPath: self.decoder.codingPath, debugDescription: "NSNull can't convert to Int"))
            }
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toInt(key: key, path: self.codingPath, value: value)
            case .useCustom(let delegate): return delegate.toInt(key: key, path: self.codingPath, value: value)
            }
        } else if value is NSNumber {
            guard let value: NSNumber = value as? NSNumber else {
                throw DecodingError.typeMismatch(Int.self, DecodingError.Context(codingPath: self.decoder.codingPath, debugDescription: "can't convert to NSNumber"))
            }
            if value === kCFBooleanTrue || value === kCFBooleanFalse {
                guard let value: Bool = value as? Bool else {
                    throw DecodingError.typeMismatch(Int.self, DecodingError.Context(codingPath: self.decoder.codingPath, debugDescription: "NSNumber can't convert to Bool"))
                }
                switch self.convertTypeStrategy {
                case .useDefaultable: return self.toInt(key: key, path: self.codingPath, value: value)
                case .useCustom(let delegate): return delegate.toInt(key: key, path: self.codingPath, value: value)
                }
            } else {
                if let `value`: Int = value as? Int {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return self.toInt(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return delegate.toInt(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: Int8 = value as? Int8 {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return self.toInt(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return delegate.toInt(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: Int16 = value as? Int16 {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return self.toInt(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return delegate.toInt(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: Int32 = value as? Int32 {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return self.toInt(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return delegate.toInt(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: Int64 = value as? Int64 {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return self.toInt(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return delegate.toInt(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: UInt = value as? UInt {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return self.toInt(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return delegate.toInt(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: UInt8 = value as? UInt8 {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return self.toInt(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return delegate.toInt(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: UInt16 = value as? UInt16 {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return self.toInt(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return delegate.toInt(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: UInt32 = value as? UInt32 {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return self.toInt(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return delegate.toInt(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: UInt64 = value as? UInt64 {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return self.toInt(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return delegate.toInt(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: Double = value as? Double {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return self.toInt(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return delegate.toInt(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: Float = value as? Float {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return self.toInt(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return delegate.toInt(key: key, path: self.codingPath, value: value)
                    }
                } else  {
                    debugPrint("Int type unsupport :\(value), set default 0")
                    return 0
                }
            }
        } else if  value is String {
            guard let value: String = value as? String else {
                throw DecodingError.typeMismatch(Int.self, DecodingError.Context(codingPath: self.decoder.codingPath, debugDescription: "Dictionary can't convert to Int"))
            }
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toInt(key: key, path: self.codingPath, value: value)
            case .useCustom(let delegate): return delegate.toInt(key: key, path: self.codingPath, value: value)
            }
        } else if value is [AnyHashable: Any] {
            guard let `value`: [AnyHashable: Any] = value as? [AnyHashable: Any] else {
                throw DecodingError.typeMismatch(Int.self, DecodingError.Context(codingPath: self.decoder.codingPath, debugDescription: "Dictionary can't convert to Int"))
            }
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toInt(key: NIOCodableKey(value: value), path: self.codingPath, value: value)
            case .useCustom(let delegate): return delegate.toInt(key: NIOCodableKey(value: value), path: self.codingPath, value: value)
            }
        } else if value is [Any] {
            guard let `value`: [Any] = value as? [Any] else {
                throw DecodingError.typeMismatch(Int.self, DecodingError.Context(codingPath: self.decoder.codingPath, debugDescription: "Array can't convert to Int"))
            }
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toInt(key: NIOCodableKey(value: value), path: self.codingPath, value: value)
            case .useCustom(let delegate): return delegate.toInt(key: NIOCodableKey(value: value), path: self.codingPath, value: value)
            }
        } else {
            debugPrint("Int type unsupport :\(value), set default 0")
            return 0
        }
    }
}

// MARK: - 处理Int8和Int8?类型
extension NIOCodableHandle {
    func decode<K>(value: Any, type: Int8.Type, forKey key: K) throws -> Int8 where K: CodingKey {
        if value is NSNull {
            guard let `value`: NSNull = value as? NSNull else {
                throw DecodingError.typeMismatch(Int8.self, DecodingError.Context(codingPath: self.decoder.codingPath, debugDescription: "NSNull can't convert to Int8"))
            }
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toInt8(key: key, path: self.codingPath, value: value)
            case .useCustom(let delegate): return delegate.toInt8(key: key, path: self.codingPath, value: value)
            }
        } else if value is NSNumber {
            guard let value: NSNumber = value as? NSNumber else {
                throw DecodingError.typeMismatch(Int.self, DecodingError.Context(codingPath: self.decoder.codingPath, debugDescription: "can't convert to NSNumber"))
            }
            if value === kCFBooleanTrue || value === kCFBooleanFalse {
                guard let value: Bool = value as? Bool else {
                    throw DecodingError.typeMismatch(Int.self, DecodingError.Context(codingPath: self.decoder.codingPath, debugDescription: "NSNumber cant't convert to Int8"))
                }
                switch self.convertTypeStrategy {
                case .useDefaultable: return self.toInt8(key: key, path: self.codingPath, value: value)
                case .useCustom(let delegate): return delegate.toInt8(key: key, path: self.codingPath, value: value)
                }
            } else {
                if let `value`: Int8 = value as? Int8 {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return self.toInt8(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return delegate.toInt8(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: Int = value as? Int {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return self.toInt8(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return delegate.toInt8(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: Int16 = value as? Int16 {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return self.toInt8(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return delegate.toInt8(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: Int32 = value as? Int32 {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return self.toInt8(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return delegate.toInt8(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: Int64 = value as? Int64 {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return self.toInt8(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return delegate.toInt8(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: UInt = value as? UInt {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return self.toInt8(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return delegate.toInt8(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: UInt8 = value as? UInt8 {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return self.toInt8(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return delegate.toInt8(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: UInt16 = value as? UInt16 {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return self.toInt8(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return delegate.toInt8(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: UInt32 = value as? UInt32 {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return self.toInt8(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return delegate.toInt8(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: UInt64 = value as? UInt64 {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return self.toInt8(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return delegate.toInt8(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: Double = value as? Double {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return self.toInt8(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return delegate.toInt8(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: Float = value as? Float {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return self.toInt8(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return delegate.toInt8(key: key, path: self.codingPath, value: value)
                    }
                }  else {
                    debugPrint("Int8 type unsupport :\(value), set default 0")
                    return 0
                }
            }
        } else if value is String {
            guard let `value`: String = value as? String else {
                throw DecodingError.typeMismatch(String.self, DecodingError.Context(codingPath: self.decoder.codingPath, debugDescription: "无法转化为String"))
            }
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toInt8(key: key, path: self.codingPath, value: value)
            case .useCustom(let delegate): return delegate.toInt8(key: key, path: self.codingPath, value: value)
            }
        } else if value is [AnyHashable: Any] {
            guard let `value`: [AnyHashable: Any] = value as? [AnyHashable: Any] else {
                throw DecodingError.typeMismatch(Int8.self, DecodingError.Context(codingPath: self.decoder.codingPath, debugDescription: "Dictionary can't convert to Int8"))
            }
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toInt8(key: NIOCodableKey(value: value), path: self.codingPath, value: value)
            case .useCustom(let delegate): return delegate.toInt8(key: NIOCodableKey(value: value), path: self.codingPath, value: value)
            }
        } else if value is [Any] {
            guard let `value`: [Any] = value as? [Any] else {
                throw DecodingError.typeMismatch(Int8.self, DecodingError.Context(codingPath: self.decoder.codingPath, debugDescription: "Array can't convert to Int8"))
            }
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toInt8(key: NIOCodableKey(value: value), path: self.codingPath, value: value)
            case .useCustom(let delegate): return delegate.toInt8(key: NIOCodableKey(value: value), path: self.codingPath, value: value)
            }
        } else {
            debugPrint("Int8 type unsupport :\(value), set default nil")
            return 0
        }
    }

    func decodeIfPresent<K>(value: Any, type: Int8.Type, forKey key: K) throws -> Int8? where K: CodingKey {
        if value is NSNull {
            guard let `value`: NSNull = value as? NSNull else {
                throw DecodingError.typeMismatch(Int8.self, DecodingError.Context(codingPath: self.decoder.codingPath, debugDescription: "NSNull can't convert to Int8"))
            }
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toInt8(key: key, path: self.codingPath, value: value)
            case .useCustom(let delegate): return delegate.toInt8(key: key, path: self.codingPath, value: value)
            }
        } else if value is NSNumber {
            guard let value: NSNumber = value as? NSNumber else {
                throw DecodingError.typeMismatch(Int.self, DecodingError.Context(codingPath: self.decoder.codingPath, debugDescription: "can't convert to NSNumber"))
            }
            if value === kCFBooleanTrue || value === kCFBooleanFalse {
                guard let value: Bool = value as? Bool else {
                    throw DecodingError.typeMismatch(Int.self, DecodingError.Context(codingPath: self.decoder.codingPath, debugDescription: "NSNumber cant't convert to Int8"))
                }
                switch self.convertTypeStrategy {
                case .useDefaultable: return self.toInt8(key: key, path: self.codingPath, value: value)
                case .useCustom(let delegate): return delegate.toInt8(key: key, path: self.codingPath, value: value)
                }
            } else {
                if let `value`: Int8 = value as? Int8 {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return self.toInt8(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return delegate.toInt8(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: Int = value as? Int {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return self.toInt8(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return delegate.toInt8(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: Int16 = value as? Int16 {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return self.toInt8(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return delegate.toInt8(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: Int32 = value as? Int32 {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return self.toInt8(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return delegate.toInt8(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: Int64 = value as? Int64 {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return self.toInt8(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return delegate.toInt8(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: UInt = value as? UInt {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return self.toInt8(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return delegate.toInt8(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: UInt8 = value as? UInt8 {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return self.toInt8(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return delegate.toInt8(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: UInt16 = value as? UInt16 {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return self.toInt8(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return delegate.toInt8(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: UInt32 = value as? UInt32 {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return self.toInt8(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return delegate.toInt8(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: UInt64 = value as? UInt64 {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return self.toInt8(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return delegate.toInt8(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: Double = value as? Double {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return self.toInt8(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return delegate.toInt8(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: Float = value as? Float {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return self.toInt8(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return delegate.toInt8(key: key, path: self.codingPath, value: value)
                    }
                }  else {
                    debugPrint("Int8 type unsupport :\(value), set default nil")
                    return nil
                }
            }
        } else if value is String {
            guard let value: String = value as? String else {
                throw DecodingError.typeMismatch(Int.self, DecodingError.Context(codingPath: self.decoder.codingPath, debugDescription: "无法转化为String"))
            }
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toInt8(key: key, path: self.codingPath, value: value)
            case .useCustom(let delegate): return delegate.toInt8(key: key, path: self.codingPath, value: value)
            }
        }  else if value is [AnyHashable: Any] {
            guard let `value`: [AnyHashable: Any] = value as? [AnyHashable: Any] else {
                throw DecodingError.typeMismatch(Int16.self, DecodingError.Context(codingPath: self.decoder.codingPath, debugDescription: "Dictionary can't convert to Int8"))
            }
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toInt8(key: NIOCodableKey(value: value), path: self.codingPath, value: value)
            case .useCustom(let delegate): return delegate.toInt8(key: NIOCodableKey(value: value), path: self.codingPath, value: value)
            }
        } else if value is [Any] {
            guard let `value`: [Any] = value as? [Any] else {
                throw DecodingError.typeMismatch(Int16.self, DecodingError.Context(codingPath: self.decoder.codingPath, debugDescription: "Array can't convert to Int8"))
            }
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toInt8(key: NIOCodableKey(value: value), path: self.codingPath, value: value)
            case .useCustom(let delegate): return delegate.toInt8(key: NIOCodableKey(value: value), path: self.codingPath, value: value)
            }
        } else {
            debugPrint("Int8 type unsupport :\(value), set default nil")
            return nil
        }
    }
}

// MARK: - 处理Int16和Int16?类型
extension NIOCodableHandle {
    func decode<K>(value: Any, type: Int16.Type, forKey key: K) throws -> Int16 where K: CodingKey {
        if value is NSNull {
            guard let `value`: NSNull = value as? NSNull else {
                throw DecodingError.typeMismatch(Int16.self, DecodingError.Context(codingPath: self.decoder.codingPath, debugDescription: "NSNull can't convert to Int16"))
            }
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toInt16(key: key, path: self.codingPath, value: value)
            case .useCustom(let delegate): return delegate.toInt16(key: key, path: self.codingPath, value: value)
            }
        } else if value is NSNumber {
            guard let value: NSNumber = value as? NSNumber else {
                throw DecodingError.typeMismatch(Int.self, DecodingError.Context(codingPath: self.decoder.codingPath, debugDescription: "can't convert to NSNumber"))
            }
            if value === kCFBooleanTrue || value === kCFBooleanFalse {
                guard let value: Bool = value as? Bool else {
                    throw DecodingError.typeMismatch(Int.self, DecodingError.Context(codingPath: self.decoder.codingPath, debugDescription: "NSNumber cant't convert to Int8"))
                }
                switch self.convertTypeStrategy {
                case .useDefaultable: return self.toInt16(key: key, path: self.codingPath, value: value)
                case .useCustom(let delegate): return delegate.toInt16(key: key, path: self.codingPath, value: value)
                }
            } else {
                if let `value`: Int = value as? Int {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return self.toInt16(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return delegate.toInt16(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: Int8 = value as? Int8 {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return self.toInt16(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return delegate.toInt16(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: Int16 = value as? Int16 {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return self.toInt16(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return delegate.toInt16(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: Int32 = value as? Int32 {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return self.toInt16(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return delegate.toInt16(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: Int64 = value as? Int64 {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return self.toInt16(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return delegate.toInt16(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: UInt = value as? UInt {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return self.toInt16(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return delegate.toInt16(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: UInt8 = value as? UInt8 {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return self.toInt16(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return delegate.toInt16(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: UInt16 = value as? UInt16 {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return self.toInt16(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return delegate.toInt16(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: UInt32 = value as? UInt32 {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return self.toInt16(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return delegate.toInt16(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: UInt64 = value as? UInt64 {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return self.toInt16(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return delegate.toInt16(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: Double = value as? Double {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return self.toInt16(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return delegate.toInt16(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: Float = value as? Float {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return self.toInt16(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return delegate.toInt16(key: key, path: self.codingPath, value: value)
                    }
                } else {
                    debugPrint("Int16 type unsupport :\(value), set default 0")
                    return 0
                }
            }
        }  else if let `value`: String = value as? String {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toInt16(key: key, path: self.codingPath, value: value)
            case .useCustom(let delegate): return delegate.toInt16(key: key, path: self.codingPath, value: value)
            }
        }  else if value is [AnyHashable: Any] {
            guard let `value`: [AnyHashable: Any] = value as? [AnyHashable: Any] else {
                throw DecodingError.typeMismatch(Int16.self, DecodingError.Context(codingPath: self.decoder.codingPath, debugDescription: "Dictionary can't convert to Int8"))
            }
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toInt16(key: NIOCodableKey(value: value), path: self.codingPath, value: value)
            case .useCustom(let delegate): return delegate.toInt16(key: NIOCodableKey(value: value), path: self.codingPath, value: value)
            }
        } else if value is [Any] {
            guard let `value`: [Any] = value as? [Any] else {
                throw DecodingError.typeMismatch(Int16.self, DecodingError.Context(codingPath: self.decoder.codingPath, debugDescription: "Array can't convert to Int8"))
            }
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toInt16(key: NIOCodableKey(value: value), path: self.codingPath, value: value)
            case .useCustom(let delegate): return delegate.toInt16(key: NIOCodableKey(value: value), path: self.codingPath, value: value)
            }
        } else {
            debugPrint("Int16 type unsupport :\(value), set default 0")
            return 0
        }
    }

    func decodeIfPresent<K>(value: Any, type: Int16.Type, forKey key: K) throws -> Int16? where K: CodingKey {
        if value is NSNull {
            guard let `value`: NSNull = value as? NSNull else {
                throw DecodingError.typeMismatch(Int16.self, DecodingError.Context(codingPath: self.decoder.codingPath, debugDescription: "NSNull can't convert to Int16"))
            }
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toInt16(key: key, path: self.codingPath, value: value)
            case .useCustom(let delegate): return delegate.toInt16(key: key, path: self.codingPath, value: value)
            }
        } else if value is NSNumber {
            guard let value: NSNumber = value as? NSNumber else {
                throw DecodingError.typeMismatch(Int.self, DecodingError.Context(codingPath: self.decoder.codingPath, debugDescription: "can't convert to NSNumber"))
            }
            if value === kCFBooleanTrue || value === kCFBooleanFalse {
                guard let value: Bool = value as? Bool else {
                    throw DecodingError.typeMismatch(Int.self, DecodingError.Context(codingPath: self.decoder.codingPath, debugDescription: "NSNumber cant't convert to Int8"))
                }
                switch self.convertTypeStrategy {
                case .useDefaultable: return self.toInt16(key: key, path: self.codingPath, value: value)
                case .useCustom(let delegate): return delegate.toInt16(key: key, path: self.codingPath, value: value)
                }
            } else {
                if let `value`: Int = value as? Int {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return self.toInt16(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return delegate.toInt16(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: Int8 = value as? Int8 {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return self.toInt16(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return delegate.toInt16(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: Int16 = value as? Int16 {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return self.toInt16(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return delegate.toInt16(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: Int32 = value as? Int32 {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return self.toInt16(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return delegate.toInt16(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: Int64 = value as? Int64 {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return self.toInt16(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return delegate.toInt16(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: UInt = value as? UInt {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return self.toInt16(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return delegate.toInt16(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: UInt8 = value as? UInt8 {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return self.toInt16(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return delegate.toInt16(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: UInt16 = value as? UInt16 {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return self.toInt16(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return delegate.toInt16(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: UInt32 = value as? UInt32 {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return self.toInt16(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return delegate.toInt16(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: UInt64 = value as? UInt64 {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return self.toInt16(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return delegate.toInt16(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: Double = value as? Double {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return self.toInt16(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return delegate.toInt16(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: Float = value as? Float {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return self.toInt16(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return delegate.toInt16(key: key, path: self.codingPath, value: value)
                    }
                } else {
                    debugPrint("Int16 type unsupport :\(value), set default nil")
                    return nil
                }
            }
        }  else if let `value`: String = value as? String {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toInt16(key: key, path: self.codingPath, value: value)
            case .useCustom(let delegate): return delegate.toInt16(key: key, path: self.codingPath, value: value)
            }
        }  else if value is [AnyHashable: Any] {
            guard let `value`: [AnyHashable: Any] = value as? [AnyHashable: Any] else {
                throw DecodingError.typeMismatch(Int16.self, DecodingError.Context(codingPath: self.decoder.codingPath, debugDescription: "Dictionary can't convert to Int8"))
            }
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toInt16(key: NIOCodableKey(value: value), path: self.codingPath, value: value)
            case .useCustom(let delegate): return delegate.toInt16(key: NIOCodableKey(value: value), path: self.codingPath, value: value)
            }
        } else if value is [Any] {
            guard let `value`: [Any] = value as? [Any] else {
                throw DecodingError.typeMismatch(Int16.self, DecodingError.Context(codingPath: self.decoder.codingPath, debugDescription: "Array can't convert to Int8"))
            }
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toInt16(key: NIOCodableKey(value: value), path: self.codingPath, value: value)
            case .useCustom(let delegate): return delegate.toInt16(key: NIOCodableKey(value: value), path: self.codingPath, value: value)
            }
        } else {
            debugPrint("Int16 type unsupport :\(value), set default nil")
            return nil
        }
    }
}

// MARK: - 处理Int32和Int32?类型
extension NIOCodableHandle {
    func decode<K>(value: Any, type: Int32.Type, forKey key: K) throws -> Int32 where K: CodingKey {
        if value is NSNull {
            guard let `value`: NSNull = value as? NSNull else {
                throw DecodingError.typeMismatch(Int32.self, DecodingError.Context(codingPath: self.decoder.codingPath, debugDescription: "NSNull can't convert to Int32"))
            }
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toInt32(key: key, path: self.codingPath, value: value)
            case .useCustom(let delegate): return delegate.toInt32(key: key, path: self.codingPath, value: value)
            }
        } else if value is NSNumber {
            guard let value: NSNumber = value as? NSNumber else {
                throw DecodingError.typeMismatch(Int.self, DecodingError.Context(codingPath: self.decoder.codingPath, debugDescription: "can't convert to NSNumber"))
            }
            if value === kCFBooleanTrue || value === kCFBooleanFalse {
                guard let value: Bool = value as? Bool else {
                    throw DecodingError.typeMismatch(Int.self, DecodingError.Context(codingPath: self.decoder.codingPath, debugDescription: "NSNumber cant't convert to Int32"))
                }
                switch self.convertTypeStrategy {
                case .useDefaultable: return self.toInt32(key: key, path: self.codingPath, value: value)
                case .useCustom(let delegate): return delegate.toInt32(key: key, path: self.codingPath, value: value)
                }
            } else {
                if let `value`: Int32 = value as? Int32 {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return self.toInt32(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return delegate.toInt32(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: Int = value as? Int {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return self.toInt32(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return delegate.toInt32(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: Int8 = value as? Int8 {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return self.toInt32(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return delegate.toInt32(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: Int16 = value as? Int16 {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return self.toInt32(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return delegate.toInt32(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: Int64 = value as? Int64 {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return self.toInt32(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return delegate.toInt32(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: UInt = value as? UInt {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return self.toInt32(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return delegate.toInt32(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: UInt8 = value as? UInt8 {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return self.toInt32(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return delegate.toInt32(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: UInt16 = value as? UInt16 {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return self.toInt32(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return delegate.toInt32(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: UInt32 = value as? UInt32 {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return self.toInt32(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return delegate.toInt32(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: UInt64 = value as? UInt64 {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return self.toInt32(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return delegate.toInt32(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: Double = value as? Double {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return self.toInt32(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return delegate.toInt32(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: Float = value as? Float {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return self.toInt32(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return delegate.toInt32(key: key, path: self.codingPath, value: value)
                    }
                }  else {
                    debugPrint("Int32 type unsupport :\(value), set default 0")
                    return 0
                }
            }
        } else if value is String {
            guard let `value`: String = value as? String else {
                throw DecodingError.typeMismatch(String.self, DecodingError.Context(codingPath: self.decoder.codingPath, debugDescription: "无法转化为String"))
            }
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toInt32(key: key, path: self.codingPath, value: value)
            case .useCustom(let delegate): return delegate.toInt32(key: key, path: self.codingPath, value: value)
            }
        } else if value is [AnyHashable: Any] {
            guard let `value`: [AnyHashable: Any] = value as? [AnyHashable: Any] else {
                throw DecodingError.typeMismatch(Int32.self, DecodingError.Context(codingPath: self.decoder.codingPath, debugDescription: "Dictionary can't convert to Int32"))
            }
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toInt32(key: NIOCodableKey(value: value), path: self.codingPath, value: value)
            case .useCustom(let delegate): return delegate.toInt32(key: NIOCodableKey(value: value), path: self.codingPath, value: value)
            }
        } else if value is [Any] {
            guard let `value`: [Any] = value as? [Any] else {
                throw DecodingError.typeMismatch(Int32.self, DecodingError.Context(codingPath: self.decoder.codingPath, debugDescription: "Array can't convert to Int32"))
            }
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toInt32(key: NIOCodableKey(value: value), path: self.codingPath, value: value)
            case .useCustom(let delegate): return delegate.toInt32(key: NIOCodableKey(value: value), path: self.codingPath, value: value)
            }
        } else {
            debugPrint("Int32 type unsupport :\(value), set default 0")
            return 0
        }
    }

    func decodeIfPresent<K>(value: Any, type: Int32.Type, forKey key: K) throws -> Int32? where K: CodingKey {
        if value is NSNull {
            guard let `value`: NSNull = value as? NSNull else {
                throw DecodingError.typeMismatch(Int32.self, DecodingError.Context(codingPath: self.decoder.codingPath, debugDescription: "NSNull can't convert to Int32"))
            }
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toInt32(key: key, path: self.codingPath, value: value)
            case .useCustom(let delegate): return delegate.toInt32(key: key, path: self.codingPath, value: value)
            }
        } else if value is NSNumber {
            guard let value: NSNumber = value as? NSNumber else {
                throw DecodingError.typeMismatch(Int.self, DecodingError.Context(codingPath: self.decoder.codingPath, debugDescription: "can't convert to NSNumber"))
            }
            if value === kCFBooleanTrue || value === kCFBooleanFalse {
                guard let value: Bool = value as? Bool else {
                    throw DecodingError.typeMismatch(Int.self, DecodingError.Context(codingPath: self.decoder.codingPath, debugDescription: "NSNumber cant't convert to Int32"))
                }
                switch self.convertTypeStrategy {
                case .useDefaultable: return self.toInt32(key: key, path: self.codingPath, value: value)
                case .useCustom(let delegate): return delegate.toInt32(key: key, path: self.codingPath, value: value)
                }
            } else {
                if let `value`: Int32 = value as? Int32 {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return self.toInt32(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return delegate.toInt32(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: Int = value as? Int {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return self.toInt32(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return delegate.toInt32(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: Int8 = value as? Int8 {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return self.toInt32(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return delegate.toInt32(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: Int16 = value as? Int16 {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return self.toInt32(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return delegate.toInt32(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: Int64 = value as? Int64 {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return self.toInt32(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return delegate.toInt32(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: UInt = value as? UInt {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return self.toInt32(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return delegate.toInt32(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: UInt8 = value as? UInt8 {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return self.toInt32(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return delegate.toInt32(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: UInt16 = value as? UInt16 {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return self.toInt32(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return delegate.toInt32(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: UInt32 = value as? UInt32 {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return self.toInt32(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return delegate.toInt32(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: UInt64 = value as? UInt64 {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return self.toInt32(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return delegate.toInt32(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: Double = value as? Double {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return self.toInt32(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return delegate.toInt32(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: Float = value as? Float {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return self.toInt32(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return delegate.toInt32(key: key, path: self.codingPath, value: value)
                    }
                }  else {
                    debugPrint("Int32 type unsupport :\(value), set default nil")
                    return nil
                }
            }
        } else if value is String {
            guard let `value`: String = value as? String else {
                throw DecodingError.typeMismatch(String.self, DecodingError.Context(codingPath: self.decoder.codingPath, debugDescription: "无法转化为String"))
            }
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toInt32(key: key, path: self.codingPath, value: value)
            case .useCustom(let delegate): return delegate.toInt32(key: key, path: self.codingPath, value: value)
            }
        } else if value is [AnyHashable: Any] {
            guard let `value`: [AnyHashable: Any] = value as? [AnyHashable: Any] else {
                throw DecodingError.typeMismatch(Int32.self, DecodingError.Context(codingPath: self.decoder.codingPath, debugDescription: "Dictionary can't convert to Int32"))
            }
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toInt32(key: NIOCodableKey(value: value), path: self.codingPath, value: value)
            case .useCustom(let delegate): return delegate.toInt32(key: NIOCodableKey(value: value), path: self.codingPath, value: value)
            }
        } else if value is [Any] {
            guard let `value`: [Any] = value as? [Any] else {
                throw DecodingError.typeMismatch(Int32.self, DecodingError.Context(codingPath: self.decoder.codingPath, debugDescription: "Array can't convert to Int32"))
            }
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toInt32(key: NIOCodableKey(value: value), path: self.codingPath, value: value)
            case .useCustom(let delegate): return delegate.toInt32(key: NIOCodableKey(value: value), path: self.codingPath, value: value)
            }
        } else {
            debugPrint("Int32 type unsupport :\(value), set default nil")
            return nil
        }
    }
}

// MARK: - 处理Int64和Int64?类型
extension NIOCodableHandle {
    func decode<K>(value: Any, type: Int64.Type, forKey key: K) throws -> Int64 where K: CodingKey {
        if value is NSNull {
            guard let `value`: NSNull = value as? NSNull else {
                throw DecodingError.typeMismatch(Int64.self, DecodingError.Context(codingPath: self.decoder.codingPath, debugDescription: "NSNull can't convert to Int64"))
            }
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toInt64(key: key, path: self.codingPath, value: value)
            case .useCustom(let delegate): return delegate.toInt64(key: key, path: self.codingPath, value: value)
            }
        } else if value is NSNumber {
            guard let value: NSNumber = value as? NSNumber else {
                throw DecodingError.typeMismatch(Int.self, DecodingError.Context(codingPath: self.decoder.codingPath, debugDescription: "can't convert to NSNumber"))
            }
            if value === kCFBooleanTrue || value === kCFBooleanFalse {
                guard let value: Bool = value as? Bool else {
                    throw DecodingError.typeMismatch(Int.self, DecodingError.Context(codingPath: self.decoder.codingPath, debugDescription: "NSNumber cant't convert to Int32"))
                }
                switch self.convertTypeStrategy {
                case .useDefaultable: return self.toInt64(key: key, path: self.codingPath, value: value)
                case .useCustom(let delegate): return delegate.toInt64(key: key, path: self.codingPath, value: value)
                }
            } else {
                if let `value`: Int64 = value as? Int64 {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return self.toInt64(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return delegate.toInt64(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: Int = value as? Int {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return self.toInt64(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return delegate.toInt64(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: Int8 = value as? Int8 {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return self.toInt64(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return delegate.toInt64(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: Int16 = value as? Int16 {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return self.toInt64(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return delegate.toInt64(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: Int32 = value as? Int32 {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return self.toInt64(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return delegate.toInt64(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: UInt = value as? UInt {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return self.toInt64(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return delegate.toInt64(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: UInt8 = value as? UInt8 {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return self.toInt64(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return delegate.toInt64(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: UInt16 = value as? UInt16 {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return self.toInt64(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return delegate.toInt64(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: UInt32 = value as? UInt32 {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return self.toInt64(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return delegate.toInt64(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: UInt64 = value as? UInt64 {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return self.toInt64(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return delegate.toInt64(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: Double = value as? Double {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return self.toInt64(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return delegate.toInt64(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: Float = value as? Float {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return self.toInt64(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return delegate.toInt64(key: key, path: self.codingPath, value: value)
                    }
                } else {
                    debugPrint("Int64 type unsupport :\(value), set default 0")
                    return 0
                }
            }
        } else if let `value`: String = value as? String {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toInt64(key: key, path: self.codingPath, value: value)
            case .useCustom(let delegate): return delegate.toInt64(key: key, path: self.codingPath, value: value)
            }
        } else if value is [AnyHashable: Any] {
            guard let `value`: [AnyHashable: Any] = value as? [AnyHashable: Any] else {
                throw DecodingError.typeMismatch(Int64.self, DecodingError.Context(codingPath: self.decoder.codingPath, debugDescription: "Dictionary can't convert to Int64"))
            }
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toInt64(key: NIOCodableKey(value: value), path: self.codingPath, value: value)
            case .useCustom(let delegate): return delegate.toInt64(key: NIOCodableKey(value: value), path: self.codingPath, value: value)
            }
        } else if value is [Any] {
            guard let `value`: [Any] = value as? [Any] else {
                throw DecodingError.typeMismatch(Int64.self, DecodingError.Context(codingPath: self.decoder.codingPath, debugDescription: "Array can't convert to Int64"))
            }
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toInt64(key: NIOCodableKey(value: value), path: self.codingPath, value: value)
            case .useCustom(let delegate): return delegate.toInt64(key: NIOCodableKey(value: value), path: self.codingPath, value: value)
            }
        } else {
            debugPrint("Int64 type unsupport :\(value), set default 0")
            return 0
        }
    }

    func decodeIfPresent<K>(value: Any, type: Int64.Type, forKey key: K) throws -> Int64? where K: CodingKey {
        if value is NSNull {
            guard let `value`: NSNull = value as? NSNull else {
                throw DecodingError.typeMismatch(Int64.self, DecodingError.Context(codingPath: self.decoder.codingPath, debugDescription: "NSNull can't convert to Int64"))
            }
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toInt64(key: key, path: self.codingPath, value: value)
            case .useCustom(let delegate): return delegate.toInt64(key: key, path: self.codingPath, value: value)
            }
        } else if value is NSNumber {
            guard let value: NSNumber = value as? NSNumber else {
                throw DecodingError.typeMismatch(Int.self, DecodingError.Context(codingPath: self.decoder.codingPath, debugDescription: "can't convert to NSNumber"))
            }
            if value === kCFBooleanTrue || value === kCFBooleanFalse {
                guard let value: Bool = value as? Bool else {
                    throw DecodingError.typeMismatch(Int.self, DecodingError.Context(codingPath: self.decoder.codingPath, debugDescription: "NSNumber cant't convert to Int32"))
                }
                switch self.convertTypeStrategy {
                case .useDefaultable: return self.toInt64(key: key, path: self.codingPath, value: value)
                case .useCustom(let delegate): return delegate.toInt64(key: key, path: self.codingPath, value: value)
                }
            } else {
                if let `value`: Int64 = value as? Int64 {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return self.toInt64(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return delegate.toInt64(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: Int = value as? Int {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return self.toInt64(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return delegate.toInt64(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: Int8 = value as? Int8 {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return self.toInt64(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return delegate.toInt64(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: Int16 = value as? Int16 {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return self.toInt64(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return delegate.toInt64(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: Int32 = value as? Int32 {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return self.toInt64(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return delegate.toInt64(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: UInt = value as? UInt {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return self.toInt64(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return delegate.toInt64(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: UInt8 = value as? UInt8 {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return self.toInt64(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return delegate.toInt64(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: UInt16 = value as? UInt16 {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return self.toInt64(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return delegate.toInt64(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: UInt32 = value as? UInt32 {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return self.toInt64(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return delegate.toInt64(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: UInt64 = value as? UInt64 {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return self.toInt64(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return delegate.toInt64(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: Double = value as? Double {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return self.toInt64(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return delegate.toInt64(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: Float = value as? Float {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return self.toInt64(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return delegate.toInt64(key: key, path: self.codingPath, value: value)
                    }
                } else {
                    debugPrint("Int64 type unsupport :\(value), set default nil")
                    return nil
                }
            }
        } else if let `value`: String = value as? String {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toInt64(key: key, path: self.codingPath, value: value)
            case .useCustom(let delegate): return delegate.toInt64(key: key, path: self.codingPath, value: value)
            }
        } else if value is [AnyHashable: Any] {
            guard let `value`: [AnyHashable: Any] = value as? [AnyHashable: Any] else {
                throw DecodingError.typeMismatch(Int64.self, DecodingError.Context(codingPath: self.decoder.codingPath, debugDescription: "Dictionary can't convert to Int64"))
            }
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toInt64(key: NIOCodableKey(value: value), path: self.codingPath, value: value)
            case .useCustom(let delegate): return delegate.toInt64(key: NIOCodableKey(value: value), path: self.codingPath, value: value)
            }
        } else if value is [Any] {
            guard let `value`: [Any] = value as? [Any] else {
                throw DecodingError.typeMismatch(Int64.self, DecodingError.Context(codingPath: self.decoder.codingPath, debugDescription: "Array can't convert to Int64"))
            }
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toInt64(key: NIOCodableKey(value: value), path: self.codingPath, value: value)
            case .useCustom(let delegate): return delegate.toInt64(key: NIOCodableKey(value: value), path: self.codingPath, value: value)
            }
        } else {
            debugPrint("Int64 type unsupport :\(value), set default nil")
            return nil
        }
    }
}

// MARK: - 处理UInt和UInt?类型
extension NIOCodableHandle {
    func decode<K>(value: Any, type: UInt.Type, forKey key: K) throws -> UInt where K: CodingKey {
        if value is NSNull {
            guard let `value`: NSNull = value as? NSNull else {
                throw DecodingError.typeMismatch(UInt.self, DecodingError.Context(codingPath: self.decoder.codingPath, debugDescription: "NSNull can't convert to UInt"))
            }
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toUInt(key: key, path: self.codingPath, value: value)
            case .useCustom(let delegate): return delegate.toUInt(key: key, path: self.codingPath, value: value)
            }
        } else if value is NSNumber {
            guard let value: NSNumber = value as? NSNumber else {
                throw DecodingError.typeMismatch(Int.self, DecodingError.Context(codingPath: self.decoder.codingPath, debugDescription: "can't convert to NSNumber"))
            }
            if value === kCFBooleanTrue || value === kCFBooleanFalse {
                guard let value: Bool = value as? Bool else {
                    throw DecodingError.typeMismatch(Int.self, DecodingError.Context(codingPath: self.decoder.codingPath, debugDescription: "NSNumber cant't convert to Int32"))
                }
                switch self.convertTypeStrategy {
                case .useDefaultable: return self.toUInt(key: key, path: self.codingPath, value: value)
                case .useCustom(let delegate): return delegate.toUInt(key: key, path: self.codingPath, value: value)
                }
            } else {
                if let `value`: UInt = value as? UInt {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return self.toUInt(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return delegate.toUInt(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: Int = value as? Int {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return try self.toUInt(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return try delegate.toUInt(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: Int8 = value as? Int8 {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return try self.toUInt(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return try delegate.toUInt(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: Int16 = value as? Int16 {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return try self.toUInt(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return try delegate.toUInt(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: Int32 = value as? Int32 {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return try self.toUInt(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return try delegate.toUInt(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: Int64 = value as? Int64 {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return try self.toUInt(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return try delegate.toUInt(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: UInt8 = value as? UInt8 {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return self.toUInt(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return delegate.toUInt(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: UInt16 = value as? UInt16 {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return self.toUInt(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return delegate.toUInt(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: UInt32 = value as? UInt32 {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return self.toUInt(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return delegate.toUInt(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: UInt64 = value as? UInt64 {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return self.toUInt(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return delegate.toUInt(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: Double = value as? Double {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return try self.toUInt(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return try delegate.toUInt(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: Float = value as? Float {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return try self.toUInt(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return try delegate.toUInt(key: key, path: self.codingPath, value: value)
                    }
                } else {
                    debugPrint("UInt type unsupport :\(value), set default 0")
                    return 0
                }
            }
        } else if let `value`: String = value as? String {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toUInt(key: key, path: self.codingPath, value: value)
            case .useCustom(let delegate): return delegate.toUInt(key: key, path: self.codingPath, value: value)
            }
        } else if value is [AnyHashable: Any] {
            guard let `value`: [AnyHashable: Any] = value as? [AnyHashable: Any] else {
                throw DecodingError.typeMismatch(UInt.self, DecodingError.Context(codingPath: self.decoder.codingPath, debugDescription: "Dictionary can't convert to UInt"))
            }
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toUInt(key: NIOCodableKey(value: value), path: self.codingPath, value: value)
            case .useCustom(let delegate): return delegate.toUInt(key: NIOCodableKey(value: value), path: self.codingPath, value: value)
            }
        } else if value is [Any] {
            guard let `value`: [Any] = value as? [Any] else {
                throw DecodingError.typeMismatch(UInt.self, DecodingError.Context(codingPath: self.decoder.codingPath, debugDescription: "Array can't convert to UInt"))
            }
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toUInt(key: NIOCodableKey(value: value), path: self.codingPath, value: value)
            case .useCustom(let delegate): return delegate.toUInt(key: NIOCodableKey(value: value), path: self.codingPath, value: value)
            }
        } else {
            debugPrint("UInt type unsupport :\(value), set default 0")
            return 0
        }
    }

    func decodeIfPresent<K>(value: Any, type: UInt.Type, forKey key: K) throws -> UInt? where K: CodingKey  {
        if value is NSNull {
            guard let `value`: NSNull = value as? NSNull else {
                throw DecodingError.typeMismatch(UInt.self, DecodingError.Context(codingPath: self.decoder.codingPath, debugDescription: "NSNull can't convert to UInt"))
            }
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toUInt(key: key, path: self.codingPath, value: value)
            case .useCustom(let delegate): return delegate.toUInt(key: key, path: self.codingPath, value: value)
            }
        } else if value is NSNumber {
            guard let value: NSNumber = value as? NSNumber else {
                throw DecodingError.typeMismatch(Int.self, DecodingError.Context(codingPath: self.decoder.codingPath, debugDescription: "can't convert to NSNumber"))
            }
            if value === kCFBooleanTrue || value === kCFBooleanFalse {
                guard let value: Bool = value as? Bool else {
                    throw DecodingError.typeMismatch(Int.self, DecodingError.Context(codingPath: self.decoder.codingPath, debugDescription: "NSNumber cant't convert to Int32"))
                }
                switch self.convertTypeStrategy {
                case .useDefaultable: return self.toUInt(key: key, path: self.codingPath, value: value)
                case .useCustom(let delegate): return delegate.toUInt(key: key, path: self.codingPath, value: value)
                }
            } else {
                if let `value`: UInt = value as? UInt {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return self.toUInt(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return delegate.toUInt(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: Int = value as? Int {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return try self.toUInt(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return try delegate.toUInt(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: Int8 = value as? Int8 {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return try self.toUInt(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return try delegate.toUInt(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: Int16 = value as? Int16 {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return try self.toUInt(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return try delegate.toUInt(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: Int32 = value as? Int32 {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return try self.toUInt(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return try delegate.toUInt(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: Int64 = value as? Int64 {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return try self.toUInt(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return try delegate.toUInt(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: UInt8 = value as? UInt8 {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return self.toUInt(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return delegate.toUInt(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: UInt16 = value as? UInt16 {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return self.toUInt(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return delegate.toUInt(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: UInt32 = value as? UInt32 {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return self.toUInt(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return delegate.toUInt(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: UInt64 = value as? UInt64 {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return self.toUInt(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return delegate.toUInt(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: Double = value as? Double {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return try self.toUInt(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return try delegate.toUInt(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: Float = value as? Float {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return try self.toUInt(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return try delegate.toUInt(key: key, path: self.codingPath, value: value)
                    }
                } else {
                    debugPrint("UInt type unsupport :\(value), set default nil")
                    return nil
                }
            }
        } else if let `value`: String = value as? String {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toUInt(key: key, path: self.codingPath, value: value)
            case .useCustom(let delegate): return delegate.toUInt(key: key, path: self.codingPath, value: value)
            }
        } else if value is [AnyHashable: Any] {
            guard let `value`: [AnyHashable: Any] = value as? [AnyHashable: Any] else {
                throw DecodingError.typeMismatch(UInt.self, DecodingError.Context(codingPath: self.decoder.codingPath, debugDescription: "Dictionary can't convert to UInt"))
            }
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toUInt(key: NIOCodableKey(value: value), path: self.codingPath, value: value)
            case .useCustom(let delegate): return delegate.toUInt(key: NIOCodableKey(value: value), path: self.codingPath, value: value)
            }
        } else if value is [Any] {
            guard let `value`: [Any] = value as? [Any] else {
                throw DecodingError.typeMismatch(UInt.self, DecodingError.Context(codingPath: self.decoder.codingPath, debugDescription: "Array can't convert to UInt"))
            }
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toUInt(key: NIOCodableKey(value: value), path: self.codingPath, value: value)
            case .useCustom(let delegate): return delegate.toUInt(key: NIOCodableKey(value: value), path: self.codingPath, value: value)
            }
        } else {
            debugPrint("UInt type unsupport :\(value), set default nil")
            return nil
        }
    }
}

// MARK: - 处理UInt8和UInt8?类型
extension NIOCodableHandle {
    func decode<K>(value: Any, type: UInt8.Type, forKey key: K) throws -> UInt8 where K: CodingKey {
        if value is NSNull {
            guard let `value`: NSNull = value as? NSNull else {
                throw DecodingError.typeMismatch(UInt8.self, DecodingError.Context(codingPath: self.decoder.codingPath, debugDescription: "NSNull can't convert to UInt8"))
            }
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toUInt8(key: key, path: self.codingPath, value: value)
            case .useCustom(let delegate): return delegate.toUInt8(key: key, path: self.codingPath, value: value)
            }
        } else if value is NSNumber {
            guard let value: NSNumber = value as? NSNumber else {
                throw DecodingError.typeMismatch(Int.self, DecodingError.Context(codingPath: self.decoder.codingPath, debugDescription: "can't convert to NSNumber"))
            }
            if value === kCFBooleanTrue || value === kCFBooleanFalse {
                guard let value: Bool = value as? Bool else {
                    throw DecodingError.typeMismatch(Int.self, DecodingError.Context(codingPath: self.decoder.codingPath, debugDescription: "NSNumber cant't convert to Int32"))
                }
                switch self.convertTypeStrategy {
                case .useDefaultable: return self.toUInt8(key: key, path: self.codingPath, value: value)
                case .useCustom(let delegate): return delegate.toUInt8(key: key, path: self.codingPath, value: value)
                }
            } else {
                if let `value`: UInt8 = value as? UInt8 {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return self.toUInt8(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return delegate.toUInt8(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: Int = value as? Int {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return try self.toUInt8(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return try delegate.toUInt8(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: Int8 = value as? Int8 {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return try self.toUInt8(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return try delegate.toUInt8(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: Int16 = value as? Int16 {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return try self.toUInt8(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return try delegate.toUInt8(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: Int32 = value as? Int32 {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return try self.toUInt8(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return try delegate.toUInt8(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: Int64 = value as? Int64 {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return try self.toUInt8(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return try delegate.toUInt8(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: UInt = value as? UInt {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return self.toUInt8(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return delegate.toUInt8(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: UInt16 = value as? UInt16 {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return self.toUInt8(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return delegate.toUInt8(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: UInt32 = value as? UInt32 {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return self.toUInt8(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return delegate.toUInt8(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: UInt64 = value as? UInt64 {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return self.toUInt8(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return delegate.toUInt8(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: Double = value as? Double {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return try self.toUInt8(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return try delegate.toUInt8(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: Float = value as? Float {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return try self.toUInt8(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return try delegate.toUInt8(key: key, path: self.codingPath, value: value)
                    }
                } else {
                    debugPrint("UInt8 type unsupport :\(value), set default 0")
                    return 0
                }
            }
        } else if let `value`: String = value as? String {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toUInt8(key: key, path: self.codingPath, value: value)
            case .useCustom(let delegate): return delegate.toUInt8(key: key, path: self.codingPath, value: value)
            }
        } else if value is [AnyHashable: Any] {
            guard let `value`: [AnyHashable: Any] = value as? [AnyHashable: Any] else {
                throw DecodingError.typeMismatch(UInt8.self, DecodingError.Context(codingPath: self.decoder.codingPath, debugDescription: "Dictionary can't convert to UInt8"))
            }
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toUInt8(key: NIOCodableKey(value: value), path: self.codingPath, value: value)
            case .useCustom(let delegate): return delegate.toUInt8(key: NIOCodableKey(value: value), path: self.codingPath, value: value)
            }
        } else if value is [Any] {
            guard let `value`: [Any] = value as? [Any] else {
                throw DecodingError.typeMismatch(UInt8.self, DecodingError.Context(codingPath: self.decoder.codingPath, debugDescription: "Array can't convert to UInt8"))
            }
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toUInt8(key: NIOCodableKey(value: value), path: self.codingPath, value: value)
            case .useCustom(let delegate): return delegate.toUInt8(key: NIOCodableKey(value: value), path: self.codingPath, value: value)
            }
        } else {
            debugPrint("UInt8 type unsupport :\(value), set default 0")
            return 0
        }
    }

    func decodeIfPresent<K>(value: Any, type: UInt8.Type, forKey key: K) throws -> UInt8? where K: CodingKey {
        if value is NSNull {
            guard let `value`: NSNull = value as? NSNull else {
                throw DecodingError.typeMismatch(UInt8.self, DecodingError.Context(codingPath: self.decoder.codingPath, debugDescription: "NSNull can't convert to UInt8"))
            }
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toUInt8(key: key, path: self.codingPath, value: value)
            case .useCustom(let delegate): return delegate.toUInt8(key: key, path: self.codingPath, value: value)
            }
        } else if value is NSNumber {
            guard let value: NSNumber = value as? NSNumber else {
                throw DecodingError.typeMismatch(Int.self, DecodingError.Context(codingPath: self.decoder.codingPath, debugDescription: "can't convert to NSNumber"))
            }
            if value === kCFBooleanTrue || value === kCFBooleanFalse {
                guard let value: Bool = value as? Bool else {
                    throw DecodingError.typeMismatch(Int.self, DecodingError.Context(codingPath: self.decoder.codingPath, debugDescription: "NSNumber cant't convert to Int32"))
                }
                switch self.convertTypeStrategy {
                case .useDefaultable: return self.toUInt8(key: key, path: self.codingPath, value: value)
                case .useCustom(let delegate): return delegate.toUInt8(key: key, path: self.codingPath, value: value)
                }
            } else {
                if let `value`: UInt8 = value as? UInt8 {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return self.toUInt8(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return delegate.toUInt8(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: Int = value as? Int {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return try self.toUInt8(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return try delegate.toUInt8(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: Int8 = value as? Int8 {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return try self.toUInt8(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return try delegate.toUInt8(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: Int16 = value as? Int16 {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return try self.toUInt8(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return try delegate.toUInt8(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: Int32 = value as? Int32 {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return try self.toUInt8(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return try delegate.toUInt8(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: Int64 = value as? Int64 {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return try self.toUInt8(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return try delegate.toUInt8(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: UInt = value as? UInt {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return self.toUInt8(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return delegate.toUInt8(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: UInt16 = value as? UInt16 {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return self.toUInt8(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return delegate.toUInt8(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: UInt32 = value as? UInt32 {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return self.toUInt8(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return delegate.toUInt8(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: UInt64 = value as? UInt64 {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return self.toUInt8(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return delegate.toUInt8(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: Double = value as? Double {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return try self.toUInt8(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return try delegate.toUInt8(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: Float = value as? Float {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return try self.toUInt8(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return try delegate.toUInt8(key: key, path: self.codingPath, value: value)
                    }
                } else {
                    debugPrint("UInt8 type unsupport :\(value), set default nil")
                    return nil
                }
            }
        } else if let `value`: String = value as? String {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toUInt8(key: key, path: self.codingPath, value: value)
            case .useCustom(let delegate): return delegate.toUInt8(key: key, path: self.codingPath, value: value)
            }
        } else if value is [AnyHashable: Any] {
            guard let `value`: [AnyHashable: Any] = value as? [AnyHashable: Any] else {
                throw DecodingError.typeMismatch(UInt8.self, DecodingError.Context(codingPath: self.decoder.codingPath, debugDescription: "Dictionary can't convert to UInt8"))
            }
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toUInt8(key: NIOCodableKey(value: value), path: self.codingPath, value: value)
            case .useCustom(let delegate): return delegate.toUInt8(key: NIOCodableKey(value: value), path: self.codingPath, value: value)
            }
        } else if value is [Any] {
            guard let `value`: [Any] = value as? [Any] else {
                throw DecodingError.typeMismatch(UInt8.self, DecodingError.Context(codingPath: self.decoder.codingPath, debugDescription: "Array can't convert to UInt8"))
            }
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toUInt8(key: NIOCodableKey(value: value), path: self.codingPath, value: value)
            case .useCustom(let delegate): return delegate.toUInt8(key: NIOCodableKey(value: value), path: self.codingPath, value: value)
            }
        } else {
            debugPrint("UInt8 type unsupport :\(value), set default nil")
            return nil
        }
    }
}

// MARK: - 处理UInt16和UInt16?类型
extension NIOCodableHandle {
    func decode<K>(value: Any, type: UInt16.Type, forKey key: K) throws -> UInt16 where K: CodingKey {
        if value is NSNull {
            guard let `value`: NSNull = value as? NSNull else {
                throw DecodingError.typeMismatch(UInt16.self, DecodingError.Context(codingPath: self.decoder.codingPath, debugDescription: "NSNull can't convert to UInt16"))
            }
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toUInt16(key: key, path: self.codingPath, value: value)
            case .useCustom(let delegate): return delegate.toUInt16(key: key, path: self.codingPath, value: value)
            }
        } else if value is NSNumber {
            guard let value: NSNumber = value as? NSNumber else {
                throw DecodingError.typeMismatch(Int.self, DecodingError.Context(codingPath: self.decoder.codingPath, debugDescription: "can't convert to NSNumber"))
            }
            if value === kCFBooleanTrue || value === kCFBooleanFalse {
                guard let value: Bool = value as? Bool else {
                    throw DecodingError.typeMismatch(Int.self, DecodingError.Context(codingPath: self.decoder.codingPath, debugDescription: "NSNumber cant't convert to Int32"))
                }
                switch self.convertTypeStrategy {
                case .useDefaultable: return self.toUInt16(key: key, path: self.codingPath, value: value)
                case .useCustom(let delegate): return delegate.toUInt16(key: key, path: self.codingPath, value: value)
                }
            } else {
                if let `value`: UInt16 = value as? UInt16 {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return self.toUInt16(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return delegate.toUInt16(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: Int = value as? Int {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return try self.toUInt16(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return try delegate.toUInt16(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: Int8 = value as? Int8 {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return try self.toUInt16(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return try delegate.toUInt16(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: Int16 = value as? Int16 {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return try self.toUInt16(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return try delegate.toUInt16(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: Int32 = value as? Int32 {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return try self.toUInt16(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return try delegate.toUInt16(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: Int64 = value as? Int64 {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return try self.toUInt16(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return try delegate.toUInt16(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: UInt = value as? UInt {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return self.toUInt16(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return delegate.toUInt16(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: UInt8 = value as? UInt8 {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return self.toUInt16(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return delegate.toUInt16(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: UInt32 = value as? UInt32 {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return self.toUInt16(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return delegate.toUInt16(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: UInt64 = value as? UInt64 {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return self.toUInt16(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return delegate.toUInt16(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: Double = value as? Double {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return try self.toUInt16(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return try delegate.toUInt16(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: Float = value as? Float {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return try self.toUInt16(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return try delegate.toUInt16(key: key, path: self.codingPath, value: value)
                    }
                } else {
                    debugPrint("UInt16 type unsupport :\(value), set default 0")
                    return 0
                }
            }
        } else if let `value`: String = value as? String {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toUInt16(key: key, path: self.codingPath, value: value)
            case .useCustom(let delegate): return delegate.toUInt16(key: key, path: self.codingPath, value: value)
            }
        } else if value is [AnyHashable: Any] {
            guard let `value`: [AnyHashable: Any] = value as? [AnyHashable: Any] else {
                throw DecodingError.typeMismatch(UInt16.self, DecodingError.Context(codingPath: self.decoder.codingPath, debugDescription: "Dictionary can't convert to UInt16"))
            }
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toUInt16(key: NIOCodableKey(value: value), path: self.codingPath, value: value)
            case .useCustom(let delegate): return delegate.toUInt16(key: NIOCodableKey(value: value), path: self.codingPath, value: value)
            }
        } else if value is [Any] {
            guard let `value`: [Any] = value as? [Any] else {
                throw DecodingError.typeMismatch(UInt16.self, DecodingError.Context(codingPath: self.decoder.codingPath, debugDescription: "Array can't convert to UInt16"))
            }
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toUInt16(key: NIOCodableKey(value: value), path: self.codingPath, value: value)
            case .useCustom(let delegate): return delegate.toUInt16(key: NIOCodableKey(value: value), path: self.codingPath, value: value)
            }
        } else {
            debugPrint("UInt16 type unsupport :\(value), set default 0")
            return 0
        }
    }

    func decodeIfPresent<K>(value: Any, type: UInt16.Type, forKey key: K) throws -> UInt16? where K: CodingKey {
        if value is NSNull {
            guard let `value`: NSNull = value as? NSNull else {
                throw DecodingError.typeMismatch(UInt16.self, DecodingError.Context(codingPath: self.decoder.codingPath, debugDescription: "NSNull can't convert to UInt16"))
            }
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toUInt16(key: key, path: self.codingPath, value: value)
            case .useCustom(let delegate): return delegate.toUInt16(key: key, path: self.codingPath, value: value)
            }
        } else if value is NSNumber {
            guard let value: NSNumber = value as? NSNumber else {
                throw DecodingError.typeMismatch(Int.self, DecodingError.Context(codingPath: self.decoder.codingPath, debugDescription: "can't convert to NSNumber"))
            }
            if value === kCFBooleanTrue || value === kCFBooleanFalse {
                guard let value: Bool = value as? Bool else {
                    throw DecodingError.typeMismatch(Int.self, DecodingError.Context(codingPath: self.decoder.codingPath, debugDescription: "NSNumber cant't convert to Int32"))
                }
                switch self.convertTypeStrategy {
                case .useDefaultable: return self.toUInt16(key: key, path: self.codingPath, value: value)
                case .useCustom(let delegate): return delegate.toUInt16(key: key, path: self.codingPath, value: value)
                }
            } else {
                if let `value`: UInt16 = value as? UInt16 {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return self.toUInt16(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return delegate.toUInt16(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: Int = value as? Int {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return try self.toUInt16(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return try delegate.toUInt16(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: Int8 = value as? Int8 {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return try self.toUInt16(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return try delegate.toUInt16(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: Int16 = value as? Int16 {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return try self.toUInt16(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return try delegate.toUInt16(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: Int32 = value as? Int32 {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return try self.toUInt16(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return try delegate.toUInt16(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: Int64 = value as? Int64 {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return try self.toUInt16(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return try delegate.toUInt16(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: UInt = value as? UInt {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return self.toUInt16(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return delegate.toUInt16(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: UInt8 = value as? UInt8 {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return self.toUInt16(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return delegate.toUInt16(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: UInt32 = value as? UInt32 {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return self.toUInt16(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return delegate.toUInt16(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: UInt64 = value as? UInt64 {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return self.toUInt16(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return delegate.toUInt16(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: Double = value as? Double {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return try self.toUInt16(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return try delegate.toUInt16(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: Float = value as? Float {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return try self.toUInt16(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return try delegate.toUInt16(key: key, path: self.codingPath, value: value)
                    }
                } else {
                    debugPrint("UInt16 type unsupport :\(value), set default nil")
                    return nil
                }
            }
        } else if let `value`: String = value as? String {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toUInt16(key: key, path: self.codingPath, value: value)
            case .useCustom(let delegate): return delegate.toUInt16(key: key, path: self.codingPath, value: value)
            }
        } else if value is [AnyHashable: Any] {
            guard let `value`: [AnyHashable: Any] = value as? [AnyHashable: Any] else {
                throw DecodingError.typeMismatch(UInt16.self, DecodingError.Context(codingPath: self.decoder.codingPath, debugDescription: "Dictionary can't convert to UInt16"))
            }
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toUInt16(key: NIOCodableKey(value: value), path: self.codingPath, value: value)
            case .useCustom(let delegate): return delegate.toUInt16(key: NIOCodableKey(value: value), path: self.codingPath, value: value)
            }
        } else if value is [Any] {
            guard let `value`: [Any] = value as? [Any] else {
                throw DecodingError.typeMismatch(UInt16.self, DecodingError.Context(codingPath: self.decoder.codingPath, debugDescription: "Array can't convert to UInt16"))
            }
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toUInt16(key: NIOCodableKey(value: value), path: self.codingPath, value: value)
            case .useCustom(let delegate): return delegate.toUInt16(key: NIOCodableKey(value: value), path: self.codingPath, value: value)
            }
        } else {
            debugPrint("UInt16 type unsupport :\(value), set default nil")
            return nil
        }
    }
}

// MARK: - 处理UInt32和UInt32?类型
extension NIOCodableHandle {
    func decode<K>(value: Any, type: UInt32.Type, forKey key: K) throws -> UInt32 where K: CodingKey {
        if value is NSNull {
            guard let `value`: NSNull = value as? NSNull else {
                throw DecodingError.typeMismatch(UInt32.self, DecodingError.Context(codingPath: self.decoder.codingPath, debugDescription: "NSNull can't convert to UInt32"))
            }
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toUInt32(key: key, path: self.codingPath, value: value)
            case .useCustom(let delegate): return delegate.toUInt32(key: key, path: self.codingPath, value: value)
            }
        } else if value is NSNumber {
            guard let value: NSNumber = value as? NSNumber else {
                throw DecodingError.typeMismatch(Int.self, DecodingError.Context(codingPath: self.decoder.codingPath, debugDescription: "can't convert to NSNumber"))
            }
            if value === kCFBooleanTrue || value === kCFBooleanFalse {
                guard let value: Bool = value as? Bool else {
                    throw DecodingError.typeMismatch(Int.self, DecodingError.Context(codingPath: self.decoder.codingPath, debugDescription: "NSNumber cant't convert to Int32"))
                }
                switch self.convertTypeStrategy {
                case .useDefaultable: return self.toUInt32(key: key, path: self.codingPath, value: value)
                case .useCustom(let delegate): return delegate.toUInt32(key: key, path: self.codingPath, value: value)
                }
            } else {
                if let `value`: UInt32 = value as? UInt32 {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return self.toUInt32(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return delegate.toUInt32(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: Int = value as? Int {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return try self.toUInt32(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return try delegate.toUInt32(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: Int8 = value as? Int8 {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return try self.toUInt32(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return try delegate.toUInt32(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: Int16 = value as? Int16 {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return try self.toUInt32(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return try delegate.toUInt32(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: Int32 = value as? Int32 {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return try self.toUInt32(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return try delegate.toUInt32(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: Int64 = value as? Int64 {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return try self.toUInt32(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return try delegate.toUInt32(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: UInt = value as? UInt {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return self.toUInt32(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return delegate.toUInt32(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: UInt8 = value as? UInt8 {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return self.toUInt32(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return delegate.toUInt32(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: UInt16 = value as? UInt16 {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return self.toUInt32(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return delegate.toUInt32(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: UInt64 = value as? UInt64 {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return self.toUInt32(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return delegate.toUInt32(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: Double = value as? Double {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return try self.toUInt32(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return try delegate.toUInt32(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: Float = value as? Float {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return try self.toUInt32(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return try delegate.toUInt32(key: key, path: self.codingPath, value: value)
                    }
                }  else {
                    debugPrint("UInt32 type unsupport :\(value), set default 0")
                    return 0
                }
            }
        } else if let `value`: String = value as? String {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toUInt32(key: key, path: self.codingPath, value: value)
            case .useCustom(let delegate): return delegate.toUInt32(key: key, path: self.codingPath, value: value)
            }
        } else if value is [AnyHashable: Any] {
            guard let `value`: [AnyHashable: Any] = value as? [AnyHashable: Any] else {
                throw DecodingError.typeMismatch(UInt32.self, DecodingError.Context(codingPath: self.decoder.codingPath, debugDescription: "Dictionary can't convert to UInt32"))
            }
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toUInt32(key: NIOCodableKey(value: value), path: self.codingPath, value: value)
            case .useCustom(let delegate): return delegate.toUInt32(key: NIOCodableKey(value: value), path: self.codingPath, value: value)
            }
        } else if value is [Any] {
            guard let `value`: [Any] = value as? [Any] else {
                throw DecodingError.typeMismatch(UInt32.self, DecodingError.Context(codingPath: self.decoder.codingPath, debugDescription: "Array can't convert to UInt32"))
            }
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toUInt32(key: NIOCodableKey(value: value), path: self.codingPath, value: value)
            case .useCustom(let delegate): return delegate.toUInt32(key: NIOCodableKey(value: value), path: self.codingPath, value: value)
            }
        } else {
            debugPrint("UInt32 type unsupport :\(value), set default 0")
            return 0
        }
    }

    func decodeIfPresent<K>(value: Any, type: UInt32.Type, forKey key: K) throws -> UInt32? where K: CodingKey {
        if value is NSNull {
            guard let `value`: NSNull = value as? NSNull else {
                throw DecodingError.typeMismatch(UInt32.self, DecodingError.Context(codingPath: self.decoder.codingPath, debugDescription: "NSNull can't convert to UInt32"))
            }
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toUInt32(key: key, path: self.codingPath, value: value)
            case .useCustom(let delegate): return delegate.toUInt32(key: key, path: self.codingPath, value: value)
            }
        } else if value is NSNumber {
            guard let value: NSNumber = value as? NSNumber else {
                throw DecodingError.typeMismatch(Int.self, DecodingError.Context(codingPath: self.decoder.codingPath, debugDescription: "can't convert to NSNumber"))
            }
            if value === kCFBooleanTrue || value === kCFBooleanFalse {
                guard let value: Bool = value as? Bool else {
                    throw DecodingError.typeMismatch(Int.self, DecodingError.Context(codingPath: self.decoder.codingPath, debugDescription: "NSNumber cant't convert to Int32"))
                }
                switch self.convertTypeStrategy {
                case .useDefaultable: return self.toUInt32(key: key, path: self.codingPath, value: value)
                case .useCustom(let delegate): return delegate.toUInt32(key: key, path: self.codingPath, value: value)
                }
            } else {
                if let `value`: UInt32 = value as? UInt32 {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return self.toUInt32(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return delegate.toUInt32(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: Int = value as? Int {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return try self.toUInt32(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return try delegate.toUInt32(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: Int8 = value as? Int8 {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return try self.toUInt32(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return try delegate.toUInt32(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: Int16 = value as? Int16 {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return try self.toUInt32(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return try delegate.toUInt32(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: Int32 = value as? Int32 {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return try self.toUInt32(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return try delegate.toUInt32(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: Int64 = value as? Int64 {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return try self.toUInt32(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return try delegate.toUInt32(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: UInt = value as? UInt {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return self.toUInt32(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return delegate.toUInt32(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: UInt8 = value as? UInt8 {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return self.toUInt32(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return delegate.toUInt32(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: UInt16 = value as? UInt16 {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return self.toUInt32(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return delegate.toUInt32(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: UInt64 = value as? UInt64 {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return self.toUInt32(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return delegate.toUInt32(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: Double = value as? Double {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return try self.toUInt32(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return try delegate.toUInt32(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: Float = value as? Float {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return try self.toUInt32(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return try delegate.toUInt32(key: key, path: self.codingPath, value: value)
                    }
                }  else {
                    debugPrint("UInt32 type unsupport :\(value), set default nil")
                    return nil
                }
            }
        } else if let `value`: String = value as? String {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toUInt32(key: key, path: self.codingPath, value: value)
            case .useCustom(let delegate): return delegate.toUInt32(key: key, path: self.codingPath, value: value)
            }
        } else if value is [AnyHashable: Any] {
            guard let `value`: [AnyHashable: Any] = value as? [AnyHashable: Any] else {
                throw DecodingError.typeMismatch(UInt32.self, DecodingError.Context(codingPath: self.decoder.codingPath, debugDescription: "Dictionary can't convert to UInt32"))
            }
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toUInt32(key: NIOCodableKey(value: value), path: self.codingPath, value: value)
            case .useCustom(let delegate): return delegate.toUInt32(key: NIOCodableKey(value: value), path: self.codingPath, value: value)
            }
        } else if value is [Any] {
            guard let `value`: [Any] = value as? [Any] else {
                throw DecodingError.typeMismatch(UInt32.self, DecodingError.Context(codingPath: self.decoder.codingPath, debugDescription: "Array can't convert to UInt32"))
            }
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toUInt32(key: NIOCodableKey(value: value), path: self.codingPath, value: value)
            case .useCustom(let delegate): return delegate.toUInt32(key: NIOCodableKey(value: value), path: self.codingPath, value: value)
            }
        } else {
            debugPrint("UInt32 type unsupport :\(value), set default nil")
            return nil
        }
    }
}

// MARK: - 处理UInt64和UInt64?类型
extension NIOCodableHandle {
    func decode<K>(value: Any, type: UInt64.Type, forKey key: K) throws -> UInt64 where K: CodingKey {
        if value is NSNull {
            guard let `value`: NSNull = value as? NSNull else {
                throw DecodingError.typeMismatch(UInt64.self, DecodingError.Context(codingPath: self.decoder.codingPath, debugDescription: "NSNull can't convert to UInt64"))
            }
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toUInt64(key: key, path: self.codingPath, value: value)
            case .useCustom(let delegate): return delegate.toUInt64(key: key, path: self.codingPath, value: value)
            }
        } else if value is NSNumber {
            guard let value: NSNumber = value as? NSNumber else {
                throw DecodingError.typeMismatch(Int.self, DecodingError.Context(codingPath: self.decoder.codingPath, debugDescription: "can't convert to NSNumber"))
            }
            if value === kCFBooleanTrue || value === kCFBooleanFalse {
                guard let value: Bool = value as? Bool else {
                    throw DecodingError.typeMismatch(Int.self, DecodingError.Context(codingPath: self.decoder.codingPath, debugDescription: "NSNumber cant't convert to Int32"))
                }
                switch self.convertTypeStrategy {
                case .useDefaultable: return self.toUInt64(key: key, path: self.codingPath, value: value)
                case .useCustom(let delegate): return delegate.toUInt64(key: key, path: self.codingPath, value: value)
                }
            } else {
                if let `value`: UInt64 = value as? UInt64 {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return self.toUInt64(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return delegate.toUInt64(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: Int = value as? Int {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return try self.toUInt64(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return try delegate.toUInt64(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: Int8 = value as? Int8 {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return try self.toUInt64(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return try delegate.toUInt64(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: Int16 = value as? Int16 {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return try self.toUInt64(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return try delegate.toUInt64(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: Int32 = value as? Int32 {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return try self.toUInt64(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return try delegate.toUInt64(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: Int64 = value as? Int64 {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return try self.toUInt64(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return try delegate.toUInt64(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: UInt = value as? UInt {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return self.toUInt64(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return delegate.toUInt64(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: UInt8 = value as? UInt8 {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return self.toUInt64(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return delegate.toUInt64(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: UInt16 = value as? UInt16 {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return self.toUInt64(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return delegate.toUInt64(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: UInt32 = value as? UInt32 {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return self.toUInt64(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return delegate.toUInt64(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: Double = value as? Double {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return try self.toUInt64(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return try delegate.toUInt64(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: Float = value as? Float {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return try self.toUInt64(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return try delegate.toUInt64(key: key, path: self.codingPath, value: value)
                    }
                } else {
                    debugPrint("UInt64 type unsupport :\(value), set default 0")
                    return 0
                }
            }
        } else if let `value`: String = value as? String {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toUInt64(key: key, path: self.codingPath, value: value)
            case .useCustom(let delegate): return delegate.toUInt64(key: key, path: self.codingPath, value: value)
            }
        } else if value is [AnyHashable: Any] {
            guard let `value`: [AnyHashable: Any] = value as? [AnyHashable: Any] else {
                throw DecodingError.typeMismatch(UInt64.self, DecodingError.Context(codingPath: self.decoder.codingPath, debugDescription: "Dictionary can't convert to UInt64"))
            }
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toUInt64(key: NIOCodableKey(value: value), path: self.codingPath, value: value)
            case .useCustom(let delegate): return delegate.toUInt64(key: NIOCodableKey(value: value), path: self.codingPath, value: value)
            }
        } else if value is [Any] {
            guard let `value`: [Any] = value as? [Any] else {
                throw DecodingError.typeMismatch(UInt64.self, DecodingError.Context(codingPath: self.decoder.codingPath, debugDescription: "Array can't convert to UInt64"))
            }
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toUInt64(key: NIOCodableKey(value: value), path: self.codingPath, value: value)
            case .useCustom(let delegate): return delegate.toUInt64(key: NIOCodableKey(value: value), path: self.codingPath, value: value)
            }
        } else {
            debugPrint("UInt64 type unsupport :\(value), set default 0")
            return 0
        }
    }

    func decodeIfPresent<K>(value: Any, type: UInt64.Type, forKey key: K) throws -> UInt64? where K: CodingKey {
        if value is NSNull {
            guard let `value`: NSNull = value as? NSNull else {
                throw DecodingError.typeMismatch(UInt64.self, DecodingError.Context(codingPath: self.decoder.codingPath, debugDescription: "NSNull can't convert to UInt64"))
            }
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toUInt64(key: key, path: self.codingPath, value: value)
            case .useCustom(let delegate): return delegate.toUInt64(key: key, path: self.codingPath, value: value)
            }
        } else if value is NSNumber {
            guard let value: NSNumber = value as? NSNumber else {
                throw DecodingError.typeMismatch(Int.self, DecodingError.Context(codingPath: self.decoder.codingPath, debugDescription: "can't convert to NSNumber"))
            }
            if value === kCFBooleanTrue || value === kCFBooleanFalse {
                guard let value: Bool = value as? Bool else {
                    throw DecodingError.typeMismatch(Int.self, DecodingError.Context(codingPath: self.decoder.codingPath, debugDescription: "NSNumber cant't convert to Int32"))
                }
                switch self.convertTypeStrategy {
                case .useDefaultable: return self.toUInt64(key: key, path: self.codingPath, value: value)
                case .useCustom(let delegate): return delegate.toUInt64(key: key, path: self.codingPath, value: value)
                }
            } else {
                if let `value`: UInt64 = value as? UInt64 {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return self.toUInt64(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return delegate.toUInt64(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: Int = value as? Int {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return try self.toUInt64(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return try delegate.toUInt64(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: Int8 = value as? Int8 {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return try self.toUInt64(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return try delegate.toUInt64(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: Int16 = value as? Int16 {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return try self.toUInt64(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return try delegate.toUInt64(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: Int32 = value as? Int32 {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return try self.toUInt64(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return try delegate.toUInt64(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: Int64 = value as? Int64 {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return try self.toUInt64(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return try delegate.toUInt64(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: UInt = value as? UInt {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return self.toUInt64(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return delegate.toUInt64(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: UInt8 = value as? UInt8 {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return self.toUInt64(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return delegate.toUInt64(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: UInt16 = value as? UInt16 {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return self.toUInt64(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return delegate.toUInt64(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: UInt32 = value as? UInt32 {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return self.toUInt64(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return delegate.toUInt64(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: Double = value as? Double {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return try self.toUInt64(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return try delegate.toUInt64(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: Float = value as? Float {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return try self.toUInt64(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return try delegate.toUInt64(key: key, path: self.codingPath, value: value)
                    }
                } else {
                    debugPrint("UInt64 type unsupport :\(value), set default nil")
                    return nil
                }
            }
        } else if let `value`: String = value as? String {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toUInt64(key: key, path: self.codingPath, value: value)
            case .useCustom(let delegate): return delegate.toUInt64(key: key, path: self.codingPath, value: value)
            }
        } else if value is [AnyHashable: Any] {
            guard let `value`: [AnyHashable: Any] = value as? [AnyHashable: Any] else {
                throw DecodingError.typeMismatch(UInt64.self, DecodingError.Context(codingPath: self.decoder.codingPath, debugDescription: "Dictionary can't convert to UInt64"))
            }
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toUInt64(key: NIOCodableKey(value: value), path: self.codingPath, value: value)
            case .useCustom(let delegate): return delegate.toUInt64(key: NIOCodableKey(value: value), path: self.codingPath, value: value)
            }
        } else if value is [Any] {
            guard let `value`: [Any] = value as? [Any] else {
                throw DecodingError.typeMismatch(UInt64.self, DecodingError.Context(codingPath: self.decoder.codingPath, debugDescription: "Array can't convert to UInt64"))
            }
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toUInt64(key: NIOCodableKey(value: value), path: self.codingPath, value: value)
            case .useCustom(let delegate): return delegate.toUInt64(key: NIOCodableKey(value: value), path: self.codingPath, value: value)
            }
        } else {
            debugPrint("UInt64 type unsupport :\(value), set default nil")
            return nil
        }
    }
}

// MARK: - 处理Float和Float?类型
extension NIOCodableHandle {
    func decode<K>(value: Any, type: Float.Type, forKey key: K) throws -> Float where K: CodingKey {
        if value is NSNull {
            guard let `value`: NSNull = value as? NSNull else {
                throw DecodingError.typeMismatch(Float.self, DecodingError.Context(codingPath: self.decoder.codingPath, debugDescription: "NSNull can't convert to Float"))
            }
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toFloat(key: key, path: self.codingPath, value: value)
            case .useCustom(let delegate): return delegate.toFloat(key: key, path: self.codingPath, value: value)
            }
        } else if value is NSNumber {
            guard let value: NSNumber = value as? NSNumber else {
                throw DecodingError.typeMismatch(Int.self, DecodingError.Context(codingPath: self.decoder.codingPath, debugDescription: "can't convert to NSNumber"))
            }
            if value === kCFBooleanTrue || value === kCFBooleanFalse {
                guard let value: Bool = value as? Bool else {
                    throw DecodingError.typeMismatch(Int.self, DecodingError.Context(codingPath: self.decoder.codingPath, debugDescription: "NSNumber cant't convert to Int32"))
                }
                switch self.convertTypeStrategy {
                case .useDefaultable: return self.toFloat(key: key, path: self.codingPath, value: value)
                case .useCustom(let delegate): return delegate.toFloat(key: key, path: self.codingPath, value: value)
                }
            } else {
                if let `value`: Float = value as? Float {
                    switch self.convertTypeStrategy {
                        case .useDefaultable: return self.toFloat(key: key, path: self.codingPath, value: value)
                        case .useCustom(let delegate): return delegate.toFloat(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: Int = value as? Int {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return self.toFloat(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return delegate.toFloat(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: Int8 = value as? Int8 {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return self.toFloat(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return delegate.toFloat(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: Int16 = value as? Int16 {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return self.toFloat(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return delegate.toFloat(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: Int32 = value as? Int32 {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return self.toFloat(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return delegate.toFloat(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: Int64 = value as? Int64 {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return self.toFloat(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return delegate.toFloat(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: UInt = value as? UInt {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return self.toFloat(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return delegate.toFloat(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: UInt8 = value as? UInt8 {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return self.toFloat(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return delegate.toFloat(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: UInt16 = value as? UInt16 {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return self.toFloat(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return delegate.toFloat(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: UInt32 = value as? UInt32 {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return self.toFloat(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return delegate.toFloat(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: UInt64 = value as? UInt64 {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return self.toFloat(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return delegate.toFloat(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: Double = value as? Double {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return self.toFloat(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return delegate.toFloat(key: key, path: self.codingPath, value: value)
                    }
                } else {
                    debugPrint("Float type unsupport :\(value), set default 0.0")
                    return 0.0
                }
            }
        } else if let `value`: String = value as? String {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toFloat(key: key, path: self.codingPath, value: value)
            case .useCustom(let delegate): return delegate.toFloat(key: key, path: self.codingPath, value: value)
            }
        } else if value is [AnyHashable: Any] {
            guard let `value`: [AnyHashable: Any] = value as? [AnyHashable: Any] else {
                throw DecodingError.typeMismatch(Float.self, DecodingError.Context(codingPath: self.decoder.codingPath, debugDescription: "Dictionary can't convert to Float"))
            }
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toFloat(key: NIOCodableKey(value: value), path: self.codingPath, value: value)
            case .useCustom(let delegate): return delegate.toFloat(key: NIOCodableKey(value: value), path: self.codingPath, value: value)
            }
        } else if value is [Any] {
            guard let `value`: [Any] = value as? [Any] else {
                throw DecodingError.typeMismatch(Float.self, DecodingError.Context(codingPath: self.decoder.codingPath, debugDescription: "Array can't convert to Float"))
            }
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toFloat(key: NIOCodableKey(value: value), path: self.codingPath, value: value)
            case .useCustom(let delegate): return delegate.toFloat(key: NIOCodableKey(value: value), path: self.codingPath, value: value)
            }
        } else {
            debugPrint("Float type unsupport :\(value), set default 0.0")
            return 0.0
        }
    }

    func decodeIfPresent<K>(value: Any, type: Float.Type, forKey key: K) throws -> Float? where K: CodingKey {
        if value is NSNull {
            guard let `value`: NSNull = value as? NSNull else {
                throw DecodingError.typeMismatch(Float.self, DecodingError.Context(codingPath: self.decoder.codingPath, debugDescription: "NSNull can't convert to Float"))
            }
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toFloat(key: key, path: self.codingPath, value: value)
            case .useCustom(let delegate): return delegate.toFloat(key: key, path: self.codingPath, value: value)
            }
        } else if value is NSNumber {
            guard let value: NSNumber = value as? NSNumber else {
                throw DecodingError.typeMismatch(Int.self, DecodingError.Context(codingPath: self.decoder.codingPath, debugDescription: "can't convert to NSNumber"))
            }
            if value === kCFBooleanTrue || value === kCFBooleanFalse {
                guard let value: Bool = value as? Bool else {
                    throw DecodingError.typeMismatch(Int.self, DecodingError.Context(codingPath: self.decoder.codingPath, debugDescription: "NSNumber cant't convert to Int32"))
                }
                switch self.convertTypeStrategy {
                case .useDefaultable: return self.toFloat(key: key, path: self.codingPath, value: value)
                case .useCustom(let delegate): return delegate.toFloat(key: key, path: self.codingPath, value: value)
                }
            } else {
                if let `value`: Float = value as? Float {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return self.toFloat(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return delegate.toFloat(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: Int = value as? Int {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return self.toFloat(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return delegate.toFloat(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: Int8 = value as? Int8 {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return self.toFloat(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return delegate.toFloat(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: Int16 = value as? Int16 {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return self.toFloat(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return delegate.toFloat(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: Int32 = value as? Int32 {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return self.toFloat(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return delegate.toFloat(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: Int64 = value as? Int64 {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return self.toFloat(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return delegate.toFloat(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: UInt = value as? UInt {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return self.toFloat(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return delegate.toFloat(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: UInt8 = value as? UInt8 {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return self.toFloat(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return delegate.toFloat(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: UInt16 = value as? UInt16 {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return self.toFloat(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return delegate.toFloat(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: UInt32 = value as? UInt32 {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return self.toFloat(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return delegate.toFloat(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: UInt64 = value as? UInt64 {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return self.toFloat(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return delegate.toFloat(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: Double = value as? Double {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return self.toFloat(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return delegate.toFloat(key: key, path: self.codingPath, value: value)
                    }
                } else {
                    debugPrint("Float type unsupport :\(value), set default nil")
                    return nil
                }
            }
        } else if let `value`: String = value as? String {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toFloat(key: key, path: self.codingPath, value: value)
            case .useCustom(let delegate): return delegate.toFloat(key: key, path: self.codingPath, value: value)
            }
        } else if value is [AnyHashable: Any] {
            guard let `value`: [AnyHashable: Any] = value as? [AnyHashable: Any] else {
                throw DecodingError.typeMismatch(Float.self, DecodingError.Context(codingPath: self.decoder.codingPath, debugDescription: "Dictionary can't convert to Float"))
            }
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toFloat(key: NIOCodableKey(value: value), path: self.codingPath, value: value)
            case .useCustom(let delegate): return delegate.toFloat(key: NIOCodableKey(value: value), path: self.codingPath, value: value)
            }
        } else if value is [Any] {
            guard let `value`: [Any] = value as? [Any] else {
                throw DecodingError.typeMismatch(Float.self, DecodingError.Context(codingPath: self.decoder.codingPath, debugDescription: "Array can't convert to Float"))
            }
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toFloat(key: NIOCodableKey(value: value), path: self.codingPath, value: value)
            case .useCustom(let delegate): return delegate.toFloat(key: NIOCodableKey(value: value), path: self.codingPath, value: value)
            }
        } else {
            debugPrint("Float type unsupport :\(value), set default nil")
            return nil
        }
    }
}

// MARK: - 处理Double和Double?类型
extension NIOCodableHandle {
    func decode<K>(value: Any, type: Double.Type, forKey key: K) throws -> Double where K: CodingKey {
        if value is NSNull {
            guard let `value`: NSNull = value as? NSNull else {
                throw DecodingError.typeMismatch(Double.self, DecodingError.Context(codingPath: self.decoder.codingPath, debugDescription: "NSNull can't convert to Double"))
            }
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toDouble(key: key, path: self.codingPath, value: value)
            case .useCustom(let delegate): return delegate.toDouble(key: key, path: self.codingPath, value: value)
            }
        } else if value is NSNumber {
            guard let value: NSNumber = value as? NSNumber else {
                throw DecodingError.typeMismatch(Int.self, DecodingError.Context(codingPath: self.decoder.codingPath, debugDescription: "can't convert to NSNumber"))
            }
            if value === kCFBooleanTrue || value === kCFBooleanFalse {
                guard let value: Bool = value as? Bool else {
                    throw DecodingError.typeMismatch(Int.self, DecodingError.Context(codingPath: self.decoder.codingPath, debugDescription: "NSNumber cant't convert to Int32"))
                }
                switch self.convertTypeStrategy {
                case .useDefaultable: return self.toDouble(key: key, path: self.codingPath, value: value)
                case .useCustom(let delegate): return delegate.toDouble(key: key, path: self.codingPath, value: value)
                }
            } else {
                if let `value`: Double = value as? Double {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return self.toDouble(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return delegate.toDouble(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: Int = value as? Int {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return self.toDouble(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return delegate.toDouble(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: Int8 = value as? Int8 {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return self.toDouble(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return delegate.toDouble(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: Int16 = value as? Int16 {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return self.toDouble(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return delegate.toDouble(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: Int32 = value as? Int32 {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return self.toDouble(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return delegate.toDouble(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: Int64 = value as? Int64 {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return self.toDouble(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return delegate.toDouble(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: UInt = value as? UInt {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return self.toDouble(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return delegate.toDouble(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: UInt8 = value as? UInt8 {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return self.toDouble(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return delegate.toDouble(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: UInt16 = value as? UInt16 {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return self.toDouble(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return delegate.toDouble(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: UInt32 = value as? UInt32 {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return self.toDouble(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return delegate.toDouble(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: UInt64 = value as? UInt64 {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return self.toDouble(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return delegate.toDouble(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: Float = value as? Float {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return self.toDouble(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return delegate.toDouble(key: key, path: self.codingPath, value: value)
                    }
                } else {
                    debugPrint("Double type unsupport :\(value), set default 0.0")
                    return 0.0
                }
            }
        } else if let `value`: String = value as? String {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toDouble(key: key, path: self.codingPath, value: value)
            case .useCustom(let delegate): return delegate.toDouble(key: key, path: self.codingPath, value: value)
            }
        } else if value is [AnyHashable: Any] {
            guard let `value`: [AnyHashable: Any] = value as? [AnyHashable: Any] else {
                throw DecodingError.typeMismatch(Double.self, DecodingError.Context(codingPath: self.decoder.codingPath, debugDescription: "Dictionary can't convert to Double"))
            }
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toDouble(key: NIOCodableKey(value: value), path: self.codingPath, value: value)
            case .useCustom(let delegate): return delegate.toDouble(key: NIOCodableKey(value: value), path: self.codingPath, value: value)
            }
        } else if value is [Any] {
            guard let `value`: [Any] = value as? [Any] else {
                throw DecodingError.typeMismatch(Double.self, DecodingError.Context(codingPath: self.decoder.codingPath, debugDescription: "Array can't convert to Double"))
            }
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toDouble(key: NIOCodableKey(value: value), path: self.codingPath, value: value)
            case .useCustom(let delegate): return delegate.toDouble(key: NIOCodableKey(value: value), path: self.codingPath, value: value)
            }
        } else {
            debugPrint("Double type unsupport :\(value), set default 0.0")
            return 0.0
        }
    }

    func decodeIfPresent<K>(value: Any, type: Double.Type, forKey key: K) throws -> Double? where K: CodingKey  {
        if value is NSNull {
            guard let `value`: NSNull = value as? NSNull else {
                throw DecodingError.typeMismatch(Double.self, DecodingError.Context(codingPath: self.decoder.codingPath, debugDescription: "NSNull can't convert to Double"))
            }
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toDouble(key: key, path: self.codingPath, value: value)
            case .useCustom(let delegate): return delegate.toDouble(key: key, path: self.codingPath, value: value)
            }
        } else if value is NSNumber {
            guard let value: NSNumber = value as? NSNumber else {
                throw DecodingError.typeMismatch(Int.self, DecodingError.Context(codingPath: self.decoder.codingPath, debugDescription: "can't convert to NSNumber"))
            }
            if value === kCFBooleanTrue || value === kCFBooleanFalse {
                guard let value: Bool = value as? Bool else {
                    throw DecodingError.typeMismatch(Int.self, DecodingError.Context(codingPath: self.decoder.codingPath, debugDescription: "NSNumber cant't convert to Int32"))
                }
                switch self.convertTypeStrategy {
                case .useDefaultable: return self.toDouble(key: key, path: self.codingPath, value: value)
                case .useCustom(let delegate): return delegate.toDouble(key: key, path: self.codingPath, value: value)
                }
            } else {
                if let `value`: Double = value as? Double {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return self.toDouble(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return delegate.toDouble(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: Int = value as? Int {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return self.toDouble(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return delegate.toDouble(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: Int8 = value as? Int8 {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return self.toDouble(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return delegate.toDouble(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: Int16 = value as? Int16 {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return self.toDouble(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return delegate.toDouble(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: Int32 = value as? Int32 {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return self.toDouble(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return delegate.toDouble(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: Int64 = value as? Int64 {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return self.toDouble(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return delegate.toDouble(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: UInt = value as? UInt {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return self.toDouble(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return delegate.toDouble(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: UInt8 = value as? UInt8 {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return self.toDouble(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return delegate.toDouble(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: UInt16 = value as? UInt16 {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return self.toDouble(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return delegate.toDouble(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: UInt32 = value as? UInt32 {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return self.toDouble(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return delegate.toDouble(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: UInt64 = value as? UInt64 {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return self.toDouble(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return delegate.toDouble(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: Float = value as? Float {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return self.toDouble(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return delegate.toDouble(key: key, path: self.codingPath, value: value)
                    }
                } else {
                    debugPrint("Double type unsupport :\(value), set default nil")
                    return nil
                }
            }
        } else if let `value`: String = value as? String {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toDouble(key: key, path: self.codingPath, value: value)
            case .useCustom(let delegate): return delegate.toDouble(key: key, path: self.codingPath, value: value)
            }
        } else if value is [AnyHashable: Any] {
            guard let `value`: [AnyHashable: Any] = value as? [AnyHashable: Any] else {
                throw DecodingError.typeMismatch(Double.self, DecodingError.Context(codingPath: self.decoder.codingPath, debugDescription: "Dictionary can't convert to Double"))
            }
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toDouble(key: NIOCodableKey(value: value), path: self.codingPath, value: value)
            case .useCustom(let delegate): return delegate.toDouble(key: NIOCodableKey(value: value), path: self.codingPath, value: value)
            }
        } else if value is [Any] {
            guard let `value`: [Any] = value as? [Any] else {
                throw DecodingError.typeMismatch(Double.self, DecodingError.Context(codingPath: self.decoder.codingPath, debugDescription: "Array can't convert to Double"))
            }
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toDouble(key: NIOCodableKey(value: value), path: self.codingPath, value: value)
            case .useCustom(let delegate): return delegate.toDouble(key: NIOCodableKey(value: value), path: self.codingPath, value: value)
            }
        } else {
            debugPrint("Double type unsupport :\(value), set default nil")
            return nil
        }
    }
}

// MARK: - 处理String和String?类型
extension NIOCodableHandle {
    func decode<K>(value: Any, type: String.Type, forKey key: K) throws -> String where K: CodingKey {
        if value is NSNull {
            guard let `value`: NSNull = value as? NSNull else {
                throw DecodingError.typeMismatch(String.self, DecodingError.Context(codingPath: self.decoder.codingPath, debugDescription: "NSNull can't convert to String"))
            }
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toString(key: key, path: self.codingPath, value: value)
            case .useCustom(let delegate): return delegate.toString(key: key, path: self.codingPath, value: value)
            }
        } else if value is NSNumber {
            guard let value: NSNumber = value as? NSNumber else {
                throw DecodingError.typeMismatch(Int.self, DecodingError.Context(codingPath: self.decoder.codingPath, debugDescription: "can't convert to NSNumber"))
            }
            if value === kCFBooleanTrue || value === kCFBooleanFalse {
                guard let value: Bool = value as? Bool else {
                    throw DecodingError.typeMismatch(Int.self, DecodingError.Context(codingPath: self.decoder.codingPath, debugDescription: "NSNumber cant't convert to Int32"))
                }
                switch self.convertTypeStrategy {
                case .useDefaultable: return self.toString(key: key, path: self.codingPath, value: value)
                case .useCustom(let delegate): return delegate.toString(key: key, path: self.codingPath, value: value)
                }
            } else {
                if let `value`: Int = value as? Int {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return self.toString(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return delegate.toString(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: Int8 = value as? Int8 {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return self.toString(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return delegate.toString(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: Int16 = value as? Int16 {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return self.toString(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return delegate.toString(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: Int32 = value as? Int32 {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return self.toString(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return delegate.toString(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: Int64 = value as? Int64 {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return self.toString(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return delegate.toString(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: UInt = value as? UInt {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return self.toString(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return delegate.toString(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: UInt8 = value as? UInt8 {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return self.toString(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return delegate.toString(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: UInt16 = value as? UInt16 {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return self.toString(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return delegate.toString(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: UInt32 = value as? UInt32 {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return self.toString(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return delegate.toString(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: UInt64 = value as? UInt64 {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return self.toString(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return delegate.toString(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: Double = value as? Double {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return self.toString(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return delegate.toString(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: Float = value as? Float {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return self.toString(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return delegate.toString(key: key, path: self.codingPath, value: value)
                    }
                } else {
                    debugPrint("Double type unsupport :\(value), set default \"\"")
                    return ""
                }
            }
        } else if let `value`: String = value as? String {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toString(key: key, path: self.codingPath, value: value)
            case .useCustom(let delegate): return delegate.toString(key: key, path: self.codingPath, value: value)
            }
        } else if value is [AnyHashable: Any] {
            guard let `value`: [AnyHashable: Any] = value as? [AnyHashable: Any] else {
                throw DecodingError.typeMismatch(String.self, DecodingError.Context(codingPath: self.decoder.codingPath, debugDescription: "Dictionary can't convert to String"))
            }
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toString(key: NIOCodableKey(value: value), path: self.codingPath, value: value)
            case .useCustom(let delegate): return delegate.toString(key: NIOCodableKey(value: value), path: self.codingPath, value: value)
            }
        } else if value is [Any] {
            guard let `value`: [Any] = value as? [Any] else {
                throw DecodingError.typeMismatch(String.self, DecodingError.Context(codingPath: self.decoder.codingPath, debugDescription: "Array can't convert to String"))
            }
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toString(key: NIOCodableKey(value: value), path: self.codingPath, value: value)
            case .useCustom(let delegate): return delegate.toString(key: NIOCodableKey(value: value), path: self.codingPath, value: value)
            }
        } else {
            debugPrint("Double type unsupport :\(value), set default \"\"")
            return ""
        }
    }

    func decodeIfPresent<K>(value: Any, type: String.Type, forKey key: K) throws -> String? where K: CodingKey {
        if value is NSNull {
            guard let `value`: NSNull = value as? NSNull else {
                throw DecodingError.typeMismatch(String.self, DecodingError.Context(codingPath: self.decoder.codingPath, debugDescription: "NSNull can't convert to String"))
            }
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toString(key: key, path: self.codingPath, value: value)
            case .useCustom(let delegate): return delegate.toString(key: key, path: self.codingPath, value: value)
            }
        } else if value is NSNumber {
            guard let value: NSNumber = value as? NSNumber else {
                throw DecodingError.typeMismatch(Int.self, DecodingError.Context(codingPath: self.decoder.codingPath, debugDescription: "can't convert to NSNumber"))
            }
            if value === kCFBooleanTrue || value === kCFBooleanFalse {
                guard let value: Bool = value as? Bool else {
                    throw DecodingError.typeMismatch(Int.self, DecodingError.Context(codingPath: self.decoder.codingPath, debugDescription: "NSNumber cant't convert to Int32"))
                }
                switch self.convertTypeStrategy {
                case .useDefaultable: return self.toString(key: key, path: self.codingPath, value: value)
                case .useCustom(let delegate): return delegate.toString(key: key, path: self.codingPath, value: value)
                }
            } else {
                if let `value`: Int = value as? Int {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return self.toString(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return delegate.toString(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: Int8 = value as? Int8 {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return self.toString(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return delegate.toString(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: Int16 = value as? Int16 {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return self.toString(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return delegate.toString(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: Int32 = value as? Int32 {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return self.toString(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return delegate.toString(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: Int64 = value as? Int64 {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return self.toString(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return delegate.toString(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: UInt = value as? UInt {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return self.toString(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return delegate.toString(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: UInt8 = value as? UInt8 {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return self.toString(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return delegate.toString(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: UInt16 = value as? UInt16 {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return self.toString(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return delegate.toString(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: UInt32 = value as? UInt32 {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return self.toString(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return delegate.toString(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: UInt64 = value as? UInt64 {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return self.toString(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return delegate.toString(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: Double = value as? Double {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return self.toString(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return delegate.toString(key: key, path: self.codingPath, value: value)
                    }
                } else if let `value`: Float = value as? Float {
                    switch self.convertTypeStrategy {
                    case .useDefaultable: return self.toString(key: key, path: self.codingPath, value: value)
                    case .useCustom(let delegate): return delegate.toString(key: key, path: self.codingPath, value: value)
                    }
                } else {
                    debugPrint("Double type unsupport :\(value), set default nil")
                    return nil
                }
            }
        } else if let `value`: String = value as? String {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toString(key: key, path: self.codingPath, value: value)
            case .useCustom(let delegate): return delegate.toString(key: key, path: self.codingPath, value: value)
            }
        } else if value is [AnyHashable: Any] {
            guard let `value`: [AnyHashable: Any] = value as? [AnyHashable: Any] else {
                throw DecodingError.typeMismatch(String.self, DecodingError.Context(codingPath: self.decoder.codingPath, debugDescription: "Dictionary can't convert to String"))
            }
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toString(key: NIOCodableKey(value: value), path: self.codingPath, value: value)
            case .useCustom(let delegate): return delegate.toString(key: NIOCodableKey(value: value), path: self.codingPath, value: value)
            }
        } else if value is [Any] {
            guard let `value`: [Any] = value as? [Any] else {
                throw DecodingError.typeMismatch(String.self, DecodingError.Context(codingPath: self.decoder.codingPath, debugDescription: "Array can't convert to String"))
            }
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toString(key: NIOCodableKey(value: value), path: self.codingPath, value: value)
            case .useCustom(let delegate): return delegate.toString(key: NIOCodableKey(value: value), path: self.codingPath, value: value)
            }
        } else {
            debugPrint("Double type unsupport :\(value), set default nil")
            return nil
        }
    }
}

