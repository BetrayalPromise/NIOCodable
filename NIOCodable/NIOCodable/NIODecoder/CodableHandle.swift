import Foundation

struct CodableHandle {
    var baseTypeDecodingStrategy: NIOJSONDecoder.BaseConvertTypeStrategy = .default
    var baseConvertNumericalStrategy: NIOJSONDecoder.BaseConvertNumericalStrategy = .useBoolean

    init(baseTypeDecodingStrategy: NIOJSONDecoder.BaseConvertTypeStrategy?, baseConvertNumericalStrategy: NIOJSONDecoder.BaseConvertNumericalStrategy?) {
        self.baseTypeDecodingStrategy = baseTypeDecodingStrategy ?? .default
        self.baseConvertNumericalStrategy = baseConvertNumericalStrategy ?? .useBoolean
    }
}

extension CodableHandle: BaseConvertible {
    func handleBool(value: Any, key: CodingKey) -> Bool {
        if let `value`: Bool = value as? Bool {
            return value
        } else if let `value`: Int = value as? Int {
            switch self.baseTypeDecodingStrategy {
            case .default: return self.toBool(key: key, value: value)
            case .base(let delegate): return delegate.toBool(key: key, value: value)
            }
        } else if let `value`: Int8 = value as? Int8 {
            switch self.baseTypeDecodingStrategy {
            case .default: return self.toBool(key: key, value: value)
            case .base(let delegate): return delegate.toBool(key: key, value: value)
            }
        } else if let `value`: Int16 = value as? Int16 {
            switch self.baseTypeDecodingStrategy {
            case .default: return self.toBool(key: key, value: value)
            case .base(let delegate): return delegate.toBool(key: key, value: value)
            }
        } else if let `value`: Int32 = value as? Int32 {
            switch self.baseTypeDecodingStrategy {
            case .default: return self.toBool(key: key, value: value)
            case .base(let delegate): return delegate.toBool(key: key, value: value)
            }
        } else if let `value`: Int64 = value as? Int64 {
            switch self.baseTypeDecodingStrategy {
            case .default: return self.toBool(key: key, value: value)
            case .base(let delegate): return delegate.toBool(key: key, value: value)
            }
        } else if let `value`: UInt = value as? UInt {
            switch self.baseTypeDecodingStrategy {
            case .default: return self.toBool(key: key, value: value)
            case .base(let delegate): return delegate.toBool(key: key, value: value)
            }
        } else if let `value`: UInt8 = value as? UInt8 {
            switch self.baseTypeDecodingStrategy {
            case .default: return self.toBool(key: key, value: value)
            case .base(let delegate): return delegate.toBool(key: key, value: value)
            }
        } else if let `value`: UInt16 = value as? UInt16 {
            switch self.baseTypeDecodingStrategy {
            case .default: return self.toBool(key: key, value: value)
            case .base(let delegate): return delegate.toBool(key: key, value: value)
            }
        } else if let `value`: UInt32 = value as? UInt32 {
            switch self.baseTypeDecodingStrategy {
            case .default: return self.toBool(key: key, value: value)
            case .base(let delegate): return delegate.toBool(key: key, value: value)
            }
        } else if let `value`: UInt64 = value as? UInt64 {
            switch self.baseTypeDecodingStrategy {
            case .default: return self.toBool(key: key, value: value)
            case .base(let delegate): return delegate.toBool(key: key, value: value)
            }
        } else if let `value`: Float = value as? Float {
            switch self.baseTypeDecodingStrategy {
            case .default: return self.toBool(key: key, value: value)
            case .base(let delegate): return delegate.toBool(key: key, value: value)
            }
        } else if let `value`: Double = value as? Double {
            switch self.baseTypeDecodingStrategy {
            case .default: return self.toBool(key: key, value: value)
            case .base(let delegate): return delegate.toBool(key: key, value: value)
            }
        } else if let `value`: String = value as? String {
            switch self.baseTypeDecodingStrategy {
            case .default: return self.toBool(key: key, value: value)
            case .base(let delegate): return delegate.toBool(key: key, value: value)
            }
        } else {
            return false
        }
    }
}
