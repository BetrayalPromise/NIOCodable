import Foundation

struct NIOCodableHandle {
    var convertTypeStrategy: NIOJSONDecoder.ConvertTypeStrategy = .useDefaultable
    var scopeExecptionStrategy: NIOJSONDecoder.ScopeExecptionStrategy = .useDefaultable
    var decoder: NIODecoder

    init(decoder: NIODecoder) {
        self.decoder = decoder
        self.convertTypeStrategy = decoder.wrapper?.convertTypeStrategy ?? .useDefaultable
        self.scopeExecptionStrategy = decoder.wrapper?.scopeExecptionStrategy ?? .useDefaultable
    }
}

extension NIOCodableHandle: TypeConvertible {

}

// MARK: - 处理Bool和Bool?类型
extension NIOCodableHandle {
    func decode<K>(value: inout Any, type: Bool.Type, forKey key: K) throws -> Bool where K: CodingKey {
        if value is NSNull {
            guard let `value`: NSNull = value as? NSNull else {
                throw DecodingError.typeMismatch(Bool.self, DecodingError.Context.init(codingPath: [], debugDescription: "NSNull无法转化为Bool"))
            }
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toBool(key: key, value: value)
            case .useCustom(let delegate): return delegate.toBool(key: key, value: value)
            }
        } else if let `value`: Bool = value as? Bool {
            switch self.scopeExecptionStrategy {
            case .useCustom(let delegate):
                let scope: Set<AnyHashable> = delegate.scope(key: key)
                if scope.contains(value) {
                    return value
                } else {
                    return delegate.execption(key: key, source: value) as? Bool ?? false
                }
            default:
                switch self.convertTypeStrategy {
                case .useDefaultable: return self.toBool(key: key, value: value)
                case .useCustom(let delegate): return delegate.toBool(key: key, value: value)
                }
            }
        } else if let `value`: Int = value as? Int {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toBool(key: key, value: value)
            case .useCustom(let delegate): return delegate.toBool(key: key, value: value)
            }
        } else if let `value`: Int8 = value as? Int8 {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toBool(key: key, value: value)
            case .useCustom(let delegate): return delegate.toBool(key: key, value: value)
            }
        } else if let `value`: Int16 = value as? Int16 {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toBool(key: key, value: value)
            case .useCustom(let delegate): return delegate.toBool(key: key, value: value)
            }
        } else if let `value`: Int32 = value as? Int32 {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toBool(key: key, value: value)
            case .useCustom(let delegate): return delegate.toBool(key: key, value: value)
            }
        } else if let `value`: Int64 = value as? Int64 {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toBool(key: key, value: value)
            case .useCustom(let delegate): return delegate.toBool(key: key, value: value)
            }
        } else if let `value`: UInt = value as? UInt {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toBool(key: key, value: value)
            case .useCustom(let delegate): return delegate.toBool(key: key, value: value)
            }
        } else if let `value`: UInt8 = value as? UInt8 {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toBool(key: key, value: value)
            case .useCustom(let delegate): return delegate.toBool(key: key, value: value)
            }
        } else if let `value`: UInt16 = value as? UInt16 {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toBool(key: key, value: value)
            case .useCustom(let delegate): return delegate.toBool(key: key, value: value)
            }
        } else if let `value`: UInt32 = value as? UInt32 {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toBool(key: key, value: value)
            case .useCustom(let delegate): return delegate.toBool(key: key, value: value)
            }
        } else if let `value`: UInt64 = value as? UInt64 {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toBool(key: key, value: value)
            case .useCustom(let delegate): return delegate.toBool(key: key, value: value)
            }
        } else if let `value`: Float = value as? Float {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toBool(key: key, value: value)
            case .useCustom(let delegate): return delegate.toBool(key: key, value: value)
            }
        } else if let `value`: Double = value as? Double {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toBool(key: key, value: value)
            case .useCustom(let delegate): return delegate.toBool(key: key, value: value)
            }
        } else if let `value`: String = value as? String {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toBool(key: key, value: value)
            case .useCustom(let delegate): return delegate.toBool(key: key, value: value)
            }
        } else if value is [AnyHashable: Any] {
            guard let `value`: [AnyHashable: Any] = value as? [AnyHashable: Any] else {
                throw DecodingError.typeMismatch(Bool.self, DecodingError.Context.init(codingPath: [], debugDescription: "Dictionary无法转化为Bool"))
            }
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toBool(key: NIOCodableKey(value: value), value: value)
            case .useCustom(let delegate): return delegate.toBool(key: NIOCodableKey(value: value), value: value)
            }
        } else if value is [Any] {
            guard let `value`: [Any] = value as? [Any] else {
                throw DecodingError.typeMismatch(Bool.self, DecodingError.Context.init(codingPath: [], debugDescription: "Array无法转化为Bool"))
            }
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toBool(key: NIOCodableKey(value: value), value: value)
            case .useCustom(let delegate): return delegate.toBool(key: NIOCodableKey(value: value), value: value)
            }
        } else {
            return false
        }
    }

    func decodeIfPresent<K>(value: inout Any, type: Bool.Type, forKey key: K) throws -> Bool? where K: CodingKey {
        if value is NSNull {
            guard let `value`: NSNull = value as? NSNull else {
                throw DecodingError.typeMismatch(Bool.self, DecodingError.Context.init(codingPath: [], debugDescription: "NSNull无法转化为Bool"))
            }
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toBool(key: key, value: value)
            case .useCustom(let delegate): return delegate.toBool(key: key, value: value)
            }
        } else if let `value`: Bool = value as? Bool {
            return value
        } else if let `value`: Int = value as? Int {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toBool(key: key, value: value)
            case .useCustom(let delegate): return delegate.toBool(key: key, value: value)
            }
        } else if let `value`: Int8 = value as? Int8 {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toBool(key: key, value: value)
            case .useCustom(let delegate): return delegate.toBool(key: key, value: value)
            }
        } else if let `value`: Int16 = value as? Int16 {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toBool(key: key, value: value)
            case .useCustom(let delegate): return delegate.toBool(key: key, value: value)
            }
        } else if let `value`: Int32 = value as? Int32 {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toBool(key: key, value: value)
            case .useCustom(let delegate): return delegate.toBool(key: key, value: value)
            }
        } else if let `value`: Int64 = value as? Int64 {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toBool(key: key, value: value)
            case .useCustom(let delegate): return delegate.toBool(key: key, value: value)
            }
        } else if let `value`: UInt = value as? UInt {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toBool(key: key, value: value)
            case .useCustom(let delegate): return delegate.toBool(key: key, value: value)
            }
        } else if let `value`: UInt8 = value as? UInt8 {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toBool(key: key, value: value)
            case .useCustom(let delegate): return delegate.toBool(key: key, value: value)
            }
        } else if let `value`: UInt16 = value as? UInt16 {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toBool(key: key, value: value)
            case .useCustom(let delegate): return delegate.toBool(key: key, value: value)
            }
        } else if let `value`: UInt32 = value as? UInt32 {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toBool(key: key, value: value)
            case .useCustom(let delegate): return delegate.toBool(key: key, value: value)
            }
        } else if let `value`: UInt64 = value as? UInt64 {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toBool(key: key, value: value)
            case .useCustom(let delegate): return delegate.toBool(key: key, value: value)
            }
        } else if let `value`: Float = value as? Float {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toBool(key: key, value: value)
            case .useCustom(let delegate): return delegate.toBool(key: key, value: value)
            }
        } else if let `value`: Double = value as? Double {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toBool(key: key, value: value)
            case .useCustom(let delegate): return delegate.toBool(key: key, value: value)
            }
        } else if let `value`: String = value as? String {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toBool(key: key, value: value)
            case .useCustom(let delegate): return delegate.toBool(key: key, value: value)
            }
        } else if value is [AnyHashable: Any] {
            guard let `value`: [AnyHashable: Any] = value as? [AnyHashable: Any] else {
                throw DecodingError.typeMismatch(Bool.self, DecodingError.Context.init(codingPath: [], debugDescription: "Dictionary无法转化为Bool"))
            }
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toBool(key: NIOCodableKey(value: value), value: value)
            case .useCustom(let delegate): return delegate.toBool(key: NIOCodableKey(value: value), value: value)
            }
        } else if value is [Any] {
            guard let `value`: [Any] = value as? [Any] else {
                throw DecodingError.typeMismatch(Bool.self, DecodingError.Context.init(codingPath: [], debugDescription: "Array无法转化为Bool"))
            }
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toBool(key: NIOCodableKey(value: value), value: value)
            case .useCustom(let delegate): return delegate.toBool(key: NIOCodableKey(value: value), value: value)
            }
        } else {
            return nil
        }
    }
}

// MARK: - 处理Int和Int?类型
extension NIOCodableHandle {
    func decode<K>(value: inout Any, type: Int.Type, forKey key: K) throws -> Int where K: CodingKey {
        if value is NSNull {
            guard let `value`: NSNull = value as? NSNull else {
                throw DecodingError.typeMismatch(Bool.self, DecodingError.Context.init(codingPath: [], debugDescription: "NSNull无法转化为Bool"))
            }
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toInt(key: key, value: value)
            case .useCustom(let delegate): return delegate.toInt(key: key, value: value)
            }
        } else if let `value`: Int = value as? Int {
            switch self.scopeExecptionStrategy {
            case .useCustom(let delegate):
                let scope: Set<AnyHashable> = delegate.scope(key: key)
                if scope.contains(value) {
                    return value
                } else {
                    return delegate.execption(key: key, source: value) as? Int ?? 0
                }
            default:
                switch self.convertTypeStrategy {
                case .useDefaultable: return self.toInt(key: key, value: value)
                case .useCustom(let delegate): return delegate.toInt(key: key, value: value)
                }
            }
        } else if let `value`: Bool = value as? Bool {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toInt(key: key, value: value)
            case .useCustom(let delegate): return delegate.toInt(key: key, value: value)
            }
        } else if let `value`: Int8 = value as? Int8 {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toInt(key: key, value: value)
            case .useCustom(let delegate): return delegate.toInt(key: key, value: value)
            }
        } else if let `value`: Int16 = value as? Int16 {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toInt(key: key, value: value)
            case .useCustom(let delegate): return delegate.toInt(key: key, value: value)
            }
        } else if let `value`: Int32 = value as? Int32 {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toInt(key: key, value: value)
            case .useCustom(let delegate): return delegate.toInt(key: key, value: value)
            }
        } else if let `value`: Int64 = value as? Int64 {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toInt(key: key, value: value)
            case .useCustom(let delegate): return delegate.toInt(key: key, value: value)
            }
        } else if let `value`: UInt = value as? UInt {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toInt(key: key, value: value)
            case .useCustom(let delegate): return delegate.toInt(key: key, value: value)
            }
        } else if let `value`: UInt8 = value as? UInt8 {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toInt(key: key, value: value)
            case .useCustom(let delegate): return delegate.toInt(key: key, value: value)
            }
        } else if let `value`: UInt16 = value as? UInt16 {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toInt(key: key, value: value)
            case .useCustom(let delegate): return delegate.toInt(key: key, value: value)
            }
        } else if let `value`: UInt32 = value as? UInt32 {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toInt(key: key, value: value)
            case .useCustom(let delegate): return delegate.toInt(key: key, value: value)
            }
        } else if let `value`: UInt64 = value as? UInt64 {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toInt(key: key, value: value)
            case .useCustom(let delegate): return delegate.toInt(key: key, value: value)
            }
        } else if let `value`: Float = value as? Float {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toInt(key: key, value: value)
            case .useCustom(let delegate): return delegate.toInt(key: key, value: value)
            }
        } else if let `value`: Double = value as? Double {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toInt(key: key, value: value)
            case .useCustom(let delegate): return delegate.toInt(key: key, value: value)
            }
        } else if let `value`: String = value as? String {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toInt(key: key, value: value)
            case .useCustom(let delegate): return delegate.toInt(key: key, value: value)
            }
        } else if value is [AnyHashable: Any] {
            guard let `value`: [AnyHashable: Any] = value as? [AnyHashable: Any] else {
                throw DecodingError.typeMismatch(Bool.self, DecodingError.Context.init(codingPath: [], debugDescription: "Dictionary无法转化为Bool"))
            }
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toInt(key: NIOCodableKey(value: value), value: value)
            case .useCustom(let delegate): return delegate.toInt(key: NIOCodableKey(value: value), value: value)
            }
        } else if value is [Any] {
            guard let `value`: [Any] = value as? [Any] else {
                throw DecodingError.typeMismatch(Bool.self, DecodingError.Context.init(codingPath: [], debugDescription: "Array无法转化为Bool"))
            }
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toInt(key: NIOCodableKey(value: value), value: value)
            case .useCustom(let delegate): return delegate.toInt(key: NIOCodableKey(value: value), value: value)
            }
        } else {
            return 0
        }
    }

    func decodeIfPresent<K>(value: inout Any, type: Int.Type, forKey key: K) throws -> Int? where K: CodingKey {
        if value is NSNull {
            guard let `value`: NSNull = value as? NSNull else {
                throw DecodingError.typeMismatch(Bool.self, DecodingError.Context.init(codingPath: [], debugDescription: "NSNull无法转化为Bool"))
            }
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toInt(key: key, value: value)
            case .useCustom(let delegate): return delegate.toInt(key: key, value: value)
            }
        } else if let `value`: Int = value as? Int {
            return value
        } else if let `value`: Bool = value as? Bool {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toInt(key: key, value: value)
            case .useCustom(let delegate): return delegate.toInt(key: key, value: value)
            }
        } else if let `value`: Int8 = value as? Int8 {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toInt(key: key, value: value)
            case .useCustom(let delegate): return delegate.toInt(key: key, value: value)
            }
        } else if let `value`: Int16 = value as? Int16 {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toInt(key: key, value: value)
            case .useCustom(let delegate): return delegate.toInt(key: key, value: value)
            }
        } else if let `value`: Int32 = value as? Int32 {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toInt(key: key, value: value)
            case .useCustom(let delegate): return delegate.toInt(key: key, value: value)
            }
        } else if let `value`: Int64 = value as? Int64 {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toInt(key: key, value: value)
            case .useCustom(let delegate): return delegate.toInt(key: key, value: value)
            }
        } else if let `value`: UInt = value as? UInt {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toInt(key: key, value: value)
            case .useCustom(let delegate): return delegate.toInt(key: key, value: value)
            }
        } else if let `value`: UInt8 = value as? UInt8 {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toInt(key: key, value: value)
            case .useCustom(let delegate): return delegate.toInt(key: key, value: value)
            }
        } else if let `value`: UInt16 = value as? UInt16 {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toInt(key: key, value: value)
            case .useCustom(let delegate): return delegate.toInt(key: key, value: value)
            }
        } else if let `value`: UInt32 = value as? UInt32 {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toInt(key: key, value: value)
            case .useCustom(let delegate): return delegate.toInt(key: key, value: value)
            }
        } else if let `value`: UInt64 = value as? UInt64 {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toInt(key: key, value: value)
            case .useCustom(let delegate): return delegate.toInt(key: key, value: value)
            }
        } else if let `value`: Float = value as? Float {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toInt(key: key, value: value)
            case .useCustom(let delegate): return delegate.toInt(key: key, value: value)
            }
        } else if let `value`: Double = value as? Double {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toInt(key: key, value: value)
            case .useCustom(let delegate): return delegate.toInt(key: key, value: value)
            }
        } else if let `value`: String = value as? String {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toInt(key: key, value: value)
            case .useCustom(let delegate): return delegate.toInt(key: key, value: value)
            }
        } else if value is [AnyHashable: Any] {
            guard let `value`: [AnyHashable: Any] = value as? [AnyHashable: Any] else {
                throw DecodingError.typeMismatch(Bool.self, DecodingError.Context.init(codingPath: [], debugDescription: "Dictionary无法转化为Bool"))
            }
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toInt(key: NIOCodableKey(value: value), value: value)
            case .useCustom(let delegate): return delegate.toInt(key: NIOCodableKey(value: value), value: value)
            }
        } else if value is [Any] {
            guard let `value`: [Any] = value as? [Any] else {
                throw DecodingError.typeMismatch(Bool.self, DecodingError.Context.init(codingPath: [], debugDescription: "Array无法转化为Bool"))
            }
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toInt(key: NIOCodableKey(value: value), value: value)
            case .useCustom(let delegate): return delegate.toInt(key: NIOCodableKey(value: value), value: value)
            }
        } else {
            return nil
        }
    }
}

// MARK: - 处理Int8和Int8?类型
extension NIOCodableHandle {
    func decode<K>(value: inout Any, type: Int8.Type, forKey key: K) throws -> Int8 where K: CodingKey {
        if value is NSNull {
            guard let `value`: NSNull = value as? NSNull else {
                throw DecodingError.typeMismatch(Bool.self, DecodingError.Context.init(codingPath: [], debugDescription: "NSNull无法转化为Bool"))
            }
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toInt8(key: key, value: value)
            case .useCustom(let delegate): return delegate.toInt8(key: key, value: value)
            }
        } else if let `value`: Int8 = value as? Int8 {
            switch self.scopeExecptionStrategy {
            case .useCustom(let delegate):
                let scope: Set<AnyHashable> = delegate.scope(key: key)
                if scope.contains(value) {
                    return value
                } else {
                    return delegate.execption(key: key, source: value) as? Int8 ?? 0
                }
            default: return value
            }
        } else if let `value`: Bool = value as? Bool {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toInt8(key: key, value: value)
            case .useCustom(let delegate): return delegate.toInt8(key: key, value: value)
            }
        } else if let `value`: Int = value as? Int {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toInt8(key: key, value: value)
            case .useCustom(let delegate): return delegate.toInt8(key: key, value: value)
            }
        } else if let `value`: Int16 = value as? Int16 {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toInt8(key: key, value: value)
            case .useCustom(let delegate): return delegate.toInt8(key: key, value: value)
            }
        } else if let `value`: Int32 = value as? Int32 {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toInt8(key: key, value: value)
            case .useCustom(let delegate): return delegate.toInt8(key: key, value: value)
            }
        } else if let `value`: Int64 = value as? Int64 {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toInt8(key: key, value: value)
            case .useCustom(let delegate): return delegate.toInt8(key: key, value: value)
            }
        } else if let `value`: UInt = value as? UInt {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toInt8(key: key, value: value)
            case .useCustom(let delegate): return delegate.toInt8(key: key, value: value)
            }
        } else if let `value`: UInt8 = value as? UInt8 {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toInt8(key: key, value: value)
            case .useCustom(let delegate): return delegate.toInt8(key: key, value: value)
            }
        } else if let `value`: UInt16 = value as? UInt16 {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toInt8(key: key, value: value)
            case .useCustom(let delegate): return delegate.toInt8(key: key, value: value)
            }
        } else if let `value`: UInt32 = value as? UInt32 {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toInt8(key: key, value: value)
            case .useCustom(let delegate): return delegate.toInt8(key: key, value: value)
            }
        } else if let `value`: UInt64 = value as? UInt64 {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toInt8(key: key, value: value)
            case .useCustom(let delegate): return delegate.toInt8(key: key, value: value)
            }
        } else if let `value`: Float = value as? Float {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toInt8(key: key, value: value)
            case .useCustom(let delegate): return delegate.toInt8(key: key, value: value)
            }
        } else if let `value`: Double = value as? Double {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toInt8(key: key, value: value)
            case .useCustom(let delegate): return delegate.toInt8(key: key, value: value)
            }
        } else if let `value`: String = value as? String {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toInt8(key: key, value: value)
            case .useCustom(let delegate): return delegate.toInt8(key: key, value: value)
            }
        } else if value is [AnyHashable: Any] {
            guard let `value`: [AnyHashable: Any] = value as? [AnyHashable: Any] else {
                throw DecodingError.typeMismatch(Bool.self, DecodingError.Context.init(codingPath: [], debugDescription: "Dictionary无法转化为Bool"))
            }
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toInt8(key: NIOCodableKey(value: value), value: value)
            case .useCustom(let delegate): return delegate.toInt8(key: NIOCodableKey(value: value), value: value)
            }
        } else if value is [Any] {
            guard let `value`: [Any] = value as? [Any] else {
                throw DecodingError.typeMismatch(Bool.self, DecodingError.Context.init(codingPath: [], debugDescription: "Array无法转化为Bool"))
            }
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toInt8(key: NIOCodableKey(value: value), value: value)
            case .useCustom(let delegate): return delegate.toInt8(key: NIOCodableKey(value: value), value: value)
            }
        } else {
            return 0
        }
    }

    func decodeIfPresent<K>(value: inout Any, type: Int8.Type, forKey key: K) throws -> Int8? where K: CodingKey {
        if value is NSNull {
            guard let `value`: NSNull = value as? NSNull else {
                throw DecodingError.typeMismatch(Bool.self, DecodingError.Context.init(codingPath: [], debugDescription: "NSNull无法转化为Bool"))
            }
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toInt8(key: key, value: value)
            case .useCustom(let delegate): return delegate.toInt8(key: key, value: value)
            }
        } else if let `value`: Int8 = value as? Int8 {
            return value
        } else if let `value`: Bool = value as? Bool {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toInt8(key: key, value: value)
            case .useCustom(let delegate): return delegate.toInt8(key: key, value: value)
            }
        } else if let `value`: Int = value as? Int {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toInt8(key: key, value: value)
            case .useCustom(let delegate): return delegate.toInt8(key: key, value: value)
            }
        } else if let `value`: Int16 = value as? Int16 {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toInt8(key: key, value: value)
            case .useCustom(let delegate): return delegate.toInt8(key: key, value: value)
            }
        } else if let `value`: Int32 = value as? Int32 {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toInt8(key: key, value: value)
            case .useCustom(let delegate): return delegate.toInt8(key: key, value: value)
            }
        } else if let `value`: Int64 = value as? Int64 {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toInt8(key: key, value: value)
            case .useCustom(let delegate): return delegate.toInt8(key: key, value: value)
            }
        } else if let `value`: UInt = value as? UInt {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toInt8(key: key, value: value)
            case .useCustom(let delegate): return delegate.toInt8(key: key, value: value)
            }
        } else if let `value`: UInt8 = value as? UInt8 {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toInt8(key: key, value: value)
            case .useCustom(let delegate): return delegate.toInt8(key: key, value: value)
            }
        } else if let `value`: UInt16 = value as? UInt16 {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toInt8(key: key, value: value)
            case .useCustom(let delegate): return delegate.toInt8(key: key, value: value)
            }
        } else if let `value`: UInt32 = value as? UInt32 {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toInt8(key: key, value: value)
            case .useCustom(let delegate): return delegate.toInt8(key: key, value: value)
            }
        } else if let `value`: UInt64 = value as? UInt64 {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toInt8(key: key, value: value)
            case .useCustom(let delegate): return delegate.toInt8(key: key, value: value)
            }
        } else if let `value`: Float = value as? Float {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toInt8(key: key, value: value)
            case .useCustom(let delegate): return delegate.toInt8(key: key, value: value)
            }
        } else if let `value`: Double = value as? Double {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toInt8(key: key, value: value)
            case .useCustom(let delegate): return delegate.toInt8(key: key, value: value)
            }
        } else if let `value`: String = value as? String {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toInt8(key: key, value: value)
            case .useCustom(let delegate): return delegate.toInt8(key: key, value: value)
            }
        } else if value is [AnyHashable: Any] {
            guard let `value`: [AnyHashable: Any] = value as? [AnyHashable: Any] else {
                throw DecodingError.typeMismatch(Bool.self, DecodingError.Context.init(codingPath: [], debugDescription: "Dictionary无法转化为Bool"))
            }
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toInt8(key: NIOCodableKey(value: value), value: value)
            case .useCustom(let delegate): return delegate.toInt8(key: NIOCodableKey(value: value), value: value)
            }
        } else if value is [Any] {
            guard let `value`: [Any] = value as? [Any] else {
                throw DecodingError.typeMismatch(Bool.self, DecodingError.Context.init(codingPath: [], debugDescription: "Array无法转化为Bool"))
            }
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toInt8(key: NIOCodableKey(value: value), value: value)
            case .useCustom(let delegate): return delegate.toInt8(key: NIOCodableKey(value: value), value: value)
            }
        } else {
            return nil
        }
    }
}

// MARK: - 处理Int16和Int16?类型
extension NIOCodableHandle {
    func decode<K>(value: inout Any, type: Int16.Type, forKey key: K) throws -> Int16 where K: CodingKey {
        if value is NSNull {
            guard let `value`: NSNull = value as? NSNull else {
                throw DecodingError.typeMismatch(Bool.self, DecodingError.Context.init(codingPath: [], debugDescription: "NSNull无法转化为Bool"))
            }
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toInt16(key: key, value: value)
            case .useCustom(let delegate): return delegate.toInt16(key: key, value: value)
            }
        } else if let `value`: Int16 = value as? Int16 {
            switch self.scopeExecptionStrategy {
            case .useCustom(let delegate):
                let scope: Set<AnyHashable> = delegate.scope(key: key)
                if scope.contains(value) {
                    return value
                } else {
                    return delegate.execption(key: key, source: value) as? Int16 ?? 0
                }
            default: return value
            }
        } else if let `value`: Bool = value as? Bool {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toInt16(key: key, value: value)
            case .useCustom(let delegate): return delegate.toInt16(key: key, value: value)
            }
        } else if let `value`: Int = value as? Int {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toInt16(key: key, value: value)
            case .useCustom(let delegate): return delegate.toInt16(key: key, value: value)
            }
        } else if let `value`: Int8 = value as? Int8 {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toInt16(key: key, value: value)
            case .useCustom(let delegate): return delegate.toInt16(key: key, value: value)
            }
        } else if let `value`: Int32 = value as? Int32 {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toInt16(key: key, value: value)
            case .useCustom(let delegate): return delegate.toInt16(key: key, value: value)
            }
        } else if let `value`: Int64 = value as? Int64 {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toInt16(key: key, value: value)
            case .useCustom(let delegate): return delegate.toInt16(key: key, value: value)
            }
        } else if let `value`: UInt = value as? UInt {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toInt16(key: key, value: value)
            case .useCustom(let delegate): return delegate.toInt16(key: key, value: value)
            }
        } else if let `value`: UInt8 = value as? UInt8 {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toInt16(key: key, value: value)
            case .useCustom(let delegate): return delegate.toInt16(key: key, value: value)
            }
        } else if let `value`: UInt16 = value as? UInt16 {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toInt16(key: key, value: value)
            case .useCustom(let delegate): return delegate.toInt16(key: key, value: value)
            }
        } else if let `value`: UInt32 = value as? UInt32 {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toInt16(key: key, value: value)
            case .useCustom(let delegate): return delegate.toInt16(key: key, value: value)
            }
        } else if let `value`: UInt64 = value as? UInt64 {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toInt16(key: key, value: value)
            case .useCustom(let delegate): return delegate.toInt16(key: key, value: value)
            }
        } else if let `value`: Float = value as? Float {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toInt16(key: key, value: value)
            case .useCustom(let delegate): return delegate.toInt16(key: key, value: value)
            }
        } else if let `value`: Double = value as? Double {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toInt16(key: key, value: value)
            case .useCustom(let delegate): return delegate.toInt16(key: key, value: value)
            }
        } else if let `value`: String = value as? String {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toInt16(key: key, value: value)
            case .useCustom(let delegate): return delegate.toInt16(key: key, value: value)
            }
        } else {
            return 0
        }
    }

    func decodeIfPresent<K>(value: inout Any, type: Int16.Type, forKey key: K) throws -> Int16? where K: CodingKey {
        if let `value`: Int16 = value as? Int16 {
            return value
        } else if let `value`: Bool = value as? Bool {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toInt16(key: key, value: value)
            case .useCustom(let delegate): return delegate.toInt16(key: key, value: value)
            }
        } else if let `value`: Int = value as? Int {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toInt16(key: key, value: value)
            case .useCustom(let delegate): return delegate.toInt16(key: key, value: value)
            }
        } else if let `value`: Int8 = value as? Int8 {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toInt16(key: key, value: value)
            case .useCustom(let delegate): return delegate.toInt16(key: key, value: value)
            }
        } else if let `value`: Int32 = value as? Int32 {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toInt16(key: key, value: value)
            case .useCustom(let delegate): return delegate.toInt16(key: key, value: value)
            }
        } else if let `value`: Int64 = value as? Int64 {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toInt16(key: key, value: value)
            case .useCustom(let delegate): return delegate.toInt16(key: key, value: value)
            }
        } else if let `value`: UInt = value as? UInt {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toInt16(key: key, value: value)
            case .useCustom(let delegate): return delegate.toInt16(key: key, value: value)
            }
        } else if let `value`: UInt8 = value as? UInt8 {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toInt16(key: key, value: value)
            case .useCustom(let delegate): return delegate.toInt16(key: key, value: value)
            }
        } else if let `value`: UInt16 = value as? UInt16 {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toInt16(key: key, value: value)
            case .useCustom(let delegate): return delegate.toInt16(key: key, value: value)
            }
        } else if let `value`: UInt32 = value as? UInt32 {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toInt16(key: key, value: value)
            case .useCustom(let delegate): return delegate.toInt16(key: key, value: value)
            }
        } else if let `value`: UInt64 = value as? UInt64 {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toInt16(key: key, value: value)
            case .useCustom(let delegate): return delegate.toInt16(key: key, value: value)
            }
        } else if let `value`: Float = value as? Float {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toInt16(key: key, value: value)
            case .useCustom(let delegate): return delegate.toInt16(key: key, value: value)
            }
        } else if let `value`: Double = value as? Double {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toInt16(key: key, value: value)
            case .useCustom(let delegate): return delegate.toInt16(key: key, value: value)
            }
        } else if let `value`: String = value as? String {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toInt16(key: key, value: value)
            case .useCustom(let delegate): return delegate.toInt16(key: key, value: value)
            }
        } else {
            return nil
        }
    }
}

// MARK: - 处理Int32和Int32?类型
extension NIOCodableHandle {
    func decode<K>(value: inout Any, type: Int32.Type, forKey key: K) throws -> Int32 where K: CodingKey {
        if let `value`: Int32 = value as? Int32 {
            switch self.scopeExecptionStrategy {
            case .useCustom(let delegate):
                let scope: Set<AnyHashable> = delegate.scope(key: key)
                if scope.contains(value) {
                    return value
                } else {
                    return delegate.execption(key: key, source: value) as? Int32 ?? 0
                }
            default: return value
            }
        } else if let `value`: Bool = value as? Bool {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toInt32(key: key, value: value)
            case .useCustom(let delegate): return delegate.toInt32(key: key, value: value)
            }
        } else if let `value`: Int = value as? Int {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toInt32(key: key, value: value)
            case .useCustom(let delegate): return delegate.toInt32(key: key, value: value)
            }
        } else if let `value`: Int8 = value as? Int8 {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toInt32(key: key, value: value)
            case .useCustom(let delegate): return delegate.toInt32(key: key, value: value)
            }
        } else if let `value`: Int16 = value as? Int16 {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toInt32(key: key, value: value)
            case .useCustom(let delegate): return delegate.toInt32(key: key, value: value)
            }
        } else if let `value`: Int64 = value as? Int64 {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toInt32(key: key, value: value)
            case .useCustom(let delegate): return delegate.toInt32(key: key, value: value)
            }
        } else if let `value`: UInt = value as? UInt {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toInt32(key: key, value: value)
            case .useCustom(let delegate): return delegate.toInt32(key: key, value: value)
            }
        } else if let `value`: UInt8 = value as? UInt8 {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toInt32(key: key, value: value)
            case .useCustom(let delegate): return delegate.toInt32(key: key, value: value)
            }
        } else if let `value`: UInt16 = value as? UInt16 {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toInt32(key: key, value: value)
            case .useCustom(let delegate): return delegate.toInt32(key: key, value: value)
            }
        } else if let `value`: UInt32 = value as? UInt32 {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toInt32(key: key, value: value)
            case .useCustom(let delegate): return delegate.toInt32(key: key, value: value)
            }
        } else if let `value`: UInt64 = value as? UInt64 {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toInt32(key: key, value: value)
            case .useCustom(let delegate): return delegate.toInt32(key: key, value: value)
            }
        } else if let `value`: Float = value as? Float {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toInt32(key: key, value: value)
            case .useCustom(let delegate): return delegate.toInt32(key: key, value: value)
            }
        } else if let `value`: Double = value as? Double {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toInt32(key: key, value: value)
            case .useCustom(let delegate): return delegate.toInt32(key: key, value: value)
            }
        } else if let `value`: String = value as? String {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toInt32(key: key, value: value)
            case .useCustom(let delegate): return delegate.toInt32(key: key, value: value)
            }
        } else {
            return 0
        }
    }

    func decodeIfPresent<K>(value: inout Any, type: Int32.Type, forKey key: K) throws -> Int32? where K: CodingKey {
        if let `value`: Int32 = value as? Int32 {
            return value
        } else if let `value`: Bool = value as? Bool {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toInt32(key: key, value: value)
            case .useCustom(let delegate): return delegate.toInt32(key: key, value: value)
            }
        } else if let `value`: Int = value as? Int {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toInt32(key: key, value: value)
            case .useCustom(let delegate): return delegate.toInt32(key: key, value: value)
            }
        } else if let `value`: Int8 = value as? Int8 {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toInt32(key: key, value: value)
            case .useCustom(let delegate): return delegate.toInt32(key: key, value: value)
            }
        } else if let `value`: Int16 = value as? Int16 {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toInt32(key: key, value: value)
            case .useCustom(let delegate): return delegate.toInt32(key: key, value: value)
            }
        } else if let `value`: Int64 = value as? Int64 {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toInt32(key: key, value: value)
            case .useCustom(let delegate): return delegate.toInt32(key: key, value: value)
            }
        } else if let `value`: UInt = value as? UInt {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toInt32(key: key, value: value)
            case .useCustom(let delegate): return delegate.toInt32(key: key, value: value)
            }
        } else if let `value`: UInt8 = value as? UInt8 {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toInt32(key: key, value: value)
            case .useCustom(let delegate): return delegate.toInt32(key: key, value: value)
            }
        } else if let `value`: UInt16 = value as? UInt16 {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toInt32(key: key, value: value)
            case .useCustom(let delegate): return delegate.toInt32(key: key, value: value)
            }
        } else if let `value`: UInt32 = value as? UInt32 {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toInt32(key: key, value: value)
            case .useCustom(let delegate): return delegate.toInt32(key: key, value: value)
            }
        } else if let `value`: UInt64 = value as? UInt64 {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toInt32(key: key, value: value)
            case .useCustom(let delegate): return delegate.toInt32(key: key, value: value)
            }
        } else if let `value`: Float = value as? Float {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toInt32(key: key, value: value)
            case .useCustom(let delegate): return delegate.toInt32(key: key, value: value)
            }
        } else if let `value`: Double = value as? Double {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toInt32(key: key, value: value)
            case .useCustom(let delegate): return delegate.toInt32(key: key, value: value)
            }
        } else if let `value`: String = value as? String {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toInt32(key: key, value: value)
            case .useCustom(let delegate): return delegate.toInt32(key: key, value: value)
            }
        } else {
            return nil
        }
    }
}

// MARK: - 处理Int64和Int64?类型
extension NIOCodableHandle {
    func decode<K>(value: inout Any, type: Int64.Type, forKey key: K) throws -> Int64 where K: CodingKey {
        if let `value`: Int64 = value as? Int64 {
            switch self.scopeExecptionStrategy {
            case .useCustom(let delegate):
                let scope: Set<AnyHashable> = delegate.scope(key: key)
                if scope.contains(value) {
                    return value
                } else {
                    return delegate.execption(key: key, source: value) as? Int64 ?? 0
                }
            default: return value
            }
        } else if let `value`: Bool = value as? Bool {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toInt64(key: key, value: value)
            case .useCustom(let delegate): return delegate.toInt64(key: key, value: value)
            }
        } else if let `value`: Int = value as? Int {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toInt64(key: key, value: value)
            case .useCustom(let delegate): return delegate.toInt64(key: key, value: value)
            }
        } else if let `value`: Int8 = value as? Int8 {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toInt64(key: key, value: value)
            case .useCustom(let delegate): return delegate.toInt64(key: key, value: value)
            }
        } else if let `value`: Int16 = value as? Int16 {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toInt64(key: key, value: value)
            case .useCustom(let delegate): return delegate.toInt64(key: key, value: value)
            }
        } else if let `value`: Int32 = value as? Int32 {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toInt64(key: key, value: value)
            case .useCustom(let delegate): return delegate.toInt64(key: key, value: value)
            }
        } else if let `value`: UInt = value as? UInt {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toInt64(key: key, value: value)
            case .useCustom(let delegate): return delegate.toInt64(key: key, value: value)
            }
        } else if let `value`: UInt8 = value as? UInt8 {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toInt64(key: key, value: value)
            case .useCustom(let delegate): return delegate.toInt64(key: key, value: value)
            }
        } else if let `value`: UInt16 = value as? UInt16 {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toInt64(key: key, value: value)
            case .useCustom(let delegate): return delegate.toInt64(key: key, value: value)
            }
        } else if let `value`: UInt32 = value as? UInt32 {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toInt64(key: key, value: value)
            case .useCustom(let delegate): return delegate.toInt64(key: key, value: value)
            }
        } else if let `value`: UInt64 = value as? UInt64 {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toInt64(key: key, value: value)
            case .useCustom(let delegate): return delegate.toInt64(key: key, value: value)
            }
        } else if let `value`: Float = value as? Float {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toInt64(key: key, value: value)
            case .useCustom(let delegate): return delegate.toInt64(key: key, value: value)
            }
        } else if let `value`: Double = value as? Double {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toInt64(key: key, value: value)
            case .useCustom(let delegate): return delegate.toInt64(key: key, value: value)
            }
        } else if let `value`: String = value as? String {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toInt64(key: key, value: value)
            case .useCustom(let delegate): return delegate.toInt64(key: key, value: value)
            }
        } else {
            return 0
        }
    }

    func decodeIfPresent<K>(value: inout Any, type: Int64.Type, forKey key: K) throws -> Int64? where K: CodingKey {
        if let `value`: Int64 = value as? Int64 {
            return value
        } else if let `value`: Bool = value as? Bool {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toInt64(key: key, value: value)
            case .useCustom(let delegate): return delegate.toInt64(key: key, value: value)
            }
        } else if let `value`: Int = value as? Int {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toInt64(key: key, value: value)
            case .useCustom(let delegate): return delegate.toInt64(key: key, value: value)
            }
        } else if let `value`: Int8 = value as? Int8 {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toInt64(key: key, value: value)
            case .useCustom(let delegate): return delegate.toInt64(key: key, value: value)
            }
        } else if let `value`: Int16 = value as? Int16 {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toInt64(key: key, value: value)
            case .useCustom(let delegate): return delegate.toInt64(key: key, value: value)
            }
        } else if let `value`: Int32 = value as? Int32 {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toInt64(key: key, value: value)
            case .useCustom(let delegate): return delegate.toInt64(key: key, value: value)
            }
        } else if let `value`: UInt = value as? UInt {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toInt64(key: key, value: value)
            case .useCustom(let delegate): return delegate.toInt64(key: key, value: value)
            }
        } else if let `value`: UInt8 = value as? UInt8 {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toInt64(key: key, value: value)
            case .useCustom(let delegate): return delegate.toInt64(key: key, value: value)
            }
        } else if let `value`: UInt16 = value as? UInt16 {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toInt64(key: key, value: value)
            case .useCustom(let delegate): return delegate.toInt64(key: key, value: value)
            }
        } else if let `value`: UInt32 = value as? UInt32 {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toInt64(key: key, value: value)
            case .useCustom(let delegate): return delegate.toInt64(key: key, value: value)
            }
        } else if let `value`: UInt64 = value as? UInt64 {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toInt64(key: key, value: value)
            case .useCustom(let delegate): return delegate.toInt64(key: key, value: value)
            }
        } else if let `value`: Float = value as? Float {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toInt64(key: key, value: value)
            case .useCustom(let delegate): return delegate.toInt64(key: key, value: value)
            }
        } else if let `value`: Double = value as? Double {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toInt64(key: key, value: value)
            case .useCustom(let delegate): return delegate.toInt64(key: key, value: value)
            }
        } else if let `value`: String = value as? String {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toInt64(key: key, value: value)
            case .useCustom(let delegate): return delegate.toInt64(key: key, value: value)
            }
        } else {
            return nil
        }
    }
}

// MARK: - 处理UInt和UInt?类型
extension NIOCodableHandle {
    func decode<K>(value: inout Any, type: UInt.Type, forKey key: K) throws -> UInt where K: CodingKey {
        if let `value`: UInt = value as? UInt {
            switch self.scopeExecptionStrategy {
            case .useCustom(let delegate):
                let scope: Set<AnyHashable> = delegate.scope(key: key)
                if scope.contains(value) {
                    return value
                } else {
                    return delegate.execption(key: key, source: value) as? UInt ?? 0
                }
            default: return value
            }
        } else if let `value`: Bool = value as? Bool {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toUInt(key: key, value: value)
            case .useCustom(let delegate): return delegate.toUInt(key: key, value: value)
            }
        } else if let `value`: Int = value as? Int {
            switch self.convertTypeStrategy {
            case .useDefaultable: return try self.toUInt(key: key, value: value)
            case .useCustom(let delegate): return try delegate.toUInt(key: key, value: value)
            }
        } else if let `value`: Int8 = value as? Int8 {
            switch self.convertTypeStrategy {
            case .useDefaultable: return try self.toUInt(key: key, value: value)
            case .useCustom(let delegate): return try delegate.toUInt(key: key, value: value)
            }
        } else if let `value`: Int16 = value as? Int16 {
            switch self.convertTypeStrategy {
            case .useDefaultable: return try self.toUInt(key: key, value: value)
            case .useCustom(let delegate): return try delegate.toUInt(key: key, value: value)
            }
        } else if let `value`: Int32 = value as? Int32 {
            switch self.convertTypeStrategy {
            case .useDefaultable: return try self.toUInt(key: key, value: value)
            case .useCustom(let delegate): return try delegate.toUInt(key: key, value: value)
            }
        } else if let `value`: Int64 = value as? Int64 {
            switch self.convertTypeStrategy {
            case .useDefaultable: return try self.toUInt(key: key, value: value)
            case .useCustom(let delegate): return try delegate.toUInt(key: key, value: value)
            }
        } else if let `value`: UInt8 = value as? UInt8 {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toUInt(key: key, value: value)
            case .useCustom(let delegate): return delegate.toUInt(key: key, value: value)
            }
        } else if let `value`: UInt16 = value as? UInt16 {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toUInt(key: key, value: value)
            case .useCustom(let delegate): return delegate.toUInt(key: key, value: value)
            }
        } else if let `value`: UInt32 = value as? UInt32 {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toUInt(key: key, value: value)
            case .useCustom(let delegate): return delegate.toUInt(key: key, value: value)
            }
        } else if let `value`: UInt64 = value as? UInt64 {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toUInt(key: key, value: value)
            case .useCustom(let delegate): return delegate.toUInt(key: key, value: value)
            }
        } else if let `value`: Float = value as? Float {
            switch self.convertTypeStrategy {
            case .useDefaultable: return try self.toUInt(key: key, value: value)
            case .useCustom(let delegate): return try delegate.toUInt(key: key, value: value)
            }
        } else if let `value`: Double = value as? Double {
            switch self.convertTypeStrategy {
            case .useDefaultable: return try self.toUInt(key: key, value: value)
            case .useCustom(let delegate): return try delegate.toUInt(key: key, value: value)
            }
        } else if let `value`: String = value as? String {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toUInt(key: key, value: value)
            case .useCustom(let delegate): return delegate.toUInt(key: key, value: value)
            }
        } else {
            return 0
        }
    }

    func decodeIfPresent<K>(value: inout Any, type: UInt.Type, forKey key: K) throws -> UInt? where K: CodingKey {
        if let `value`: UInt = value as? UInt {
            return value
        } else if let `value`: Bool = value as? Bool {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toUInt(key: key, value: value)
            case .useCustom(let delegate): return delegate.toUInt(key: key, value: value)
            }
        } else if let `value`: Int = value as? Int {
            switch self.convertTypeStrategy {
            case .useDefaultable: return try self.toUInt(key: key, value: value)
            case .useCustom(let delegate): return try delegate.toUInt(key: key, value: value)
            }
        } else if let `value`: Int8 = value as? Int8 {
            switch self.convertTypeStrategy {
            case .useDefaultable: return try self.toUInt(key: key, value: value)
            case .useCustom(let delegate): return try delegate.toUInt(key: key, value: value)
            }
        } else if let `value`: Int16 = value as? Int16 {
            switch self.convertTypeStrategy {
            case .useDefaultable: return try self.toUInt(key: key, value: value)
            case .useCustom(let delegate): return try delegate.toUInt(key: key, value: value)
            }
        } else if let `value`: Int32 = value as? Int32 {
            switch self.convertTypeStrategy {
            case .useDefaultable: return try self.toUInt(key: key, value: value)
            case .useCustom(let delegate): return try delegate.toUInt(key: key, value: value)
            }
        } else if let `value`: Int64 = value as? Int64 {
            switch self.convertTypeStrategy {
            case .useDefaultable: return try self.toUInt(key: key, value: value)
            case .useCustom(let delegate): return try delegate.toUInt(key: key, value: value)
            }
        } else if let `value`: UInt8 = value as? UInt8 {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toUInt(key: key, value: value)
            case .useCustom(let delegate): return delegate.toUInt(key: key, value: value)
            }
        } else if let `value`: UInt16 = value as? UInt16 {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toUInt(key: key, value: value)
            case .useCustom(let delegate): return delegate.toUInt(key: key, value: value)
            }
        } else if let `value`: UInt32 = value as? UInt32 {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toUInt(key: key, value: value)
            case .useCustom(let delegate): return delegate.toUInt(key: key, value: value)
            }
        } else if let `value`: UInt64 = value as? UInt64 {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toUInt(key: key, value: value)
            case .useCustom(let delegate): return delegate.toUInt(key: key, value: value)
            }
        } else if let `value`: Float = value as? Float {
            switch self.convertTypeStrategy {
            case .useDefaultable: return try self.toUInt(key: key, value: value)
            case .useCustom(let delegate): return try delegate.toUInt(key: key, value: value)
            }
        } else if let `value`: Double = value as? Double {
            switch self.convertTypeStrategy {
            case .useDefaultable: return try self.toUInt(key: key, value: value)
            case .useCustom(let delegate): return try delegate.toUInt(key: key, value: value)
            }
        } else if let `value`: String = value as? String {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toUInt(key: key, value: value)
            case .useCustom(let delegate): return delegate.toUInt(key: key, value: value)
            }
        } else {
            return nil
        }
    }
}

// MARK: - 处理UInt8和UInt8?类型
extension NIOCodableHandle {
    func decode<K>(value: inout Any, type: UInt8.Type, forKey key: K) throws -> UInt8 where K: CodingKey {
        if let `value`: UInt8 = value as? UInt8 {
            switch self.scopeExecptionStrategy {
            case .useCustom(let delegate):
                let scope: Set<AnyHashable> = delegate.scope(key: key)
                if scope.contains(value) {
                    return value
                } else {
                    return delegate.execption(key: key, source: value) as? UInt8 ?? 0
                }
            default: return value
            }
        } else if let `value`: Bool = value as? Bool {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toUInt8(key: key, value: value)
            case .useCustom(let delegate): return delegate.toUInt8(key: key, value: value)
            }
        } else if let `value`: Int = value as? Int {
            switch self.convertTypeStrategy {
            case .useDefaultable: return try self.toUInt8(key: key, value: value)
            case .useCustom(let delegate): return try delegate.toUInt8(key: key, value: value)
            }
        } else if let `value`: Int8 = value as? Int8 {
            switch self.convertTypeStrategy {
            case .useDefaultable: return try self.toUInt8(key: key, value: value)
            case .useCustom(let delegate): return try delegate.toUInt8(key: key, value: value)
            }
        } else if let `value`: Int16 = value as? Int16 {
            switch self.convertTypeStrategy {
            case .useDefaultable: return try self.toUInt8(key: key, value: value)
            case .useCustom(let delegate): return try delegate.toUInt8(key: key, value: value)
            }
        } else if let `value`: Int32 = value as? Int32 {
            switch self.convertTypeStrategy {
            case .useDefaultable: return try self.toUInt8(key: key, value: value)
            case .useCustom(let delegate): return try delegate.toUInt8(key: key, value: value)
            }
        } else if let `value`: Int64 = value as? Int64 {
            switch self.convertTypeStrategy {
            case .useDefaultable: return try self.toUInt8(key: key, value: value)
            case .useCustom(let delegate): return try delegate.toUInt8(key: key, value: value)
            }
        } else if let `value`: UInt = value as? UInt {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toUInt8(key: key, value: value)
            case .useCustom(let delegate): return delegate.toUInt8(key: key, value: value)
            }
        } else if let `value`: UInt16 = value as? UInt16 {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toUInt8(key: key, value: value)
            case .useCustom(let delegate): return delegate.toUInt8(key: key, value: value)
            }
        } else if let `value`: UInt32 = value as? UInt32 {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toUInt8(key: key, value: value)
            case .useCustom(let delegate): return delegate.toUInt8(key: key, value: value)
            }
        } else if let `value`: UInt64 = value as? UInt64 {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toUInt8(key: key, value: value)
            case .useCustom(let delegate): return delegate.toUInt8(key: key, value: value)
            }
        } else if let `value`: Float = value as? Float {
            switch self.convertTypeStrategy {
            case .useDefaultable: return try self.toUInt8(key: key, value: value)
            case .useCustom(let delegate): return try delegate.toUInt8(key: key, value: value)
            }
        } else if let `value`: Double = value as? Double {
            switch self.convertTypeStrategy {
            case .useDefaultable: return try self.toUInt8(key: key, value: value)
            case .useCustom(let delegate): return try delegate.toUInt8(key: key, value: value)
            }
        } else if let `value`: String = value as? String {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toUInt8(key: key, value: value)
            case .useCustom(let delegate): return delegate.toUInt8(key: key, value: value)
            }
        } else {
            return 0
        }
    }

    func decodeIfPresent<K>(value: inout Any, type: UInt8.Type, forKey key: K) throws -> UInt8? where K: CodingKey {
        if let `value`: UInt8 = value as? UInt8 {
            return value
        } else if let `value`: Bool = value as? Bool {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toUInt8(key: key, value: value)
            case .useCustom(let delegate): return delegate.toUInt8(key: key, value: value)
            }
        } else if let `value`: Int = value as? Int {
            switch self.convertTypeStrategy {
            case .useDefaultable: return try self.toUInt8(key: key, value: value)
            case .useCustom(let delegate): return try delegate.toUInt8(key: key, value: value)
            }
        } else if let `value`: Int8 = value as? Int8 {
            switch self.convertTypeStrategy {
            case .useDefaultable: return try self.toUInt8(key: key, value: value)
            case .useCustom(let delegate): return try delegate.toUInt8(key: key, value: value)
            }
        } else if let `value`: Int16 = value as? Int16 {
            switch self.convertTypeStrategy {
            case .useDefaultable: return try self.toUInt8(key: key, value: value)
            case .useCustom(let delegate): return try delegate.toUInt8(key: key, value: value)
            }
        } else if let `value`: Int32 = value as? Int32 {
            switch self.convertTypeStrategy {
            case .useDefaultable: return try self.toUInt8(key: key, value: value)
            case .useCustom(let delegate): return try delegate.toUInt8(key: key, value: value)
            }
        } else if let `value`: Int64 = value as? Int64 {
            switch self.convertTypeStrategy {
            case .useDefaultable: return try self.toUInt8(key: key, value: value)
            case .useCustom(let delegate): return try delegate.toUInt8(key: key, value: value)
            }
        } else if let `value`: UInt = value as? UInt {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toUInt8(key: key, value: value)
            case .useCustom(let delegate): return delegate.toUInt8(key: key, value: value)
            }
        } else if let `value`: UInt16 = value as? UInt16 {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toUInt8(key: key, value: value)
            case .useCustom(let delegate): return delegate.toUInt8(key: key, value: value)
            }
        } else if let `value`: UInt32 = value as? UInt32 {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toUInt8(key: key, value: value)
            case .useCustom(let delegate): return delegate.toUInt8(key: key, value: value)
            }
        } else if let `value`: UInt64 = value as? UInt64 {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toUInt8(key: key, value: value)
            case .useCustom(let delegate): return delegate.toUInt8(key: key, value: value)
            }
        } else if let `value`: Float = value as? Float {
            switch self.convertTypeStrategy {
            case .useDefaultable: return try self.toUInt8(key: key, value: value)
            case .useCustom(let delegate): return try delegate.toUInt8(key: key, value: value)
            }
        } else if let `value`: Double = value as? Double {
            switch self.convertTypeStrategy {
            case .useDefaultable: return try self.toUInt8(key: key, value: value)
            case .useCustom(let delegate): return try delegate.toUInt8(key: key, value: value)
            }
        } else if let `value`: String = value as? String {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toUInt8(key: key, value: value)
            case .useCustom(let delegate): return delegate.toUInt8(key: key, value: value)
            }
        } else {
            return nil
        }
    }
}

// MARK: - 处理UInt16和UInt16?类型
extension NIOCodableHandle {
    func decode<K>(value: inout Any, type: UInt16.Type, forKey key: K) throws -> UInt16 where K: CodingKey {
        if let `value`: UInt16 = value as? UInt16 {
            switch self.scopeExecptionStrategy {
            case .useCustom(let delegate):
                let scope: Set<AnyHashable> = delegate.scope(key: key)
                if scope.contains(value) {
                    return value
                } else {
                    return delegate.execption(key: key, source: value) as? UInt16 ?? 0
                }
            default: return value
            }
        } else if let `value`: Bool = value as? Bool {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toUInt16(key: key, value: value)
            case .useCustom(let delegate): return delegate.toUInt16(key: key, value: value)
            }
        } else if let `value`: Int = value as? Int {
            switch self.convertTypeStrategy {
            case .useDefaultable: return try self.toUInt16(key: key, value: value)
            case .useCustom(let delegate): return try delegate.toUInt16(key: key, value: value)
            }
        } else if let `value`: Int8 = value as? Int8 {
            switch self.convertTypeStrategy {
            case .useDefaultable: return try self.toUInt16(key: key, value: value)
            case .useCustom(let delegate): return try delegate.toUInt16(key: key, value: value)
            }
        } else if let `value`: Int16 = value as? Int16 {
            switch self.convertTypeStrategy {
            case .useDefaultable: return try self.toUInt16(key: key, value: value)
            case .useCustom(let delegate): return try delegate.toUInt16(key: key, value: value)
            }
        } else if let `value`: Int32 = value as? Int32 {
            switch self.convertTypeStrategy {
            case .useDefaultable: return try self.toUInt16(key: key, value: value)
            case .useCustom(let delegate): return try delegate.toUInt16(key: key, value: value)
            }
        } else if let `value`: Int64 = value as? Int64 {
            switch self.convertTypeStrategy {
            case .useDefaultable: return try self.toUInt16(key: key, value: value)
            case .useCustom(let delegate): return try delegate.toUInt16(key: key, value: value)
            }
        } else if let `value`: UInt = value as? UInt {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toUInt16(key: key, value: value)
            case .useCustom(let delegate): return delegate.toUInt16(key: key, value: value)
            }
        } else if let `value`: UInt8 = value as? UInt8 {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toUInt16(key: key, value: value)
            case .useCustom(let delegate): return delegate.toUInt16(key: key, value: value)
            }
        } else if let `value`: UInt32 = value as? UInt32 {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toUInt16(key: key, value: value)
            case .useCustom(let delegate): return delegate.toUInt16(key: key, value: value)
            }
        } else if let `value`: UInt64 = value as? UInt64 {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toUInt16(key: key, value: value)
            case .useCustom(let delegate): return delegate.toUInt16(key: key, value: value)
            }
        } else if let `value`: Float = value as? Float {
            switch self.convertTypeStrategy {
            case .useDefaultable: return try self.toUInt16(key: key, value: value)
            case .useCustom(let delegate): return try delegate.toUInt16(key: key, value: value)
            }
        } else if let `value`: Double = value as? Double {
            switch self.convertTypeStrategy {
            case .useDefaultable: return try self.toUInt16(key: key, value: value)
            case .useCustom(let delegate): return try delegate.toUInt16(key: key, value: value)
            }
        } else if let `value`: String = value as? String {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toUInt16(key: key, value: value)
            case .useCustom(let delegate): return delegate.toUInt16(key: key, value: value)
            }
        } else {
            return 0
        }
    }

    func decodeIfPresent<K>(value: inout Any, type: UInt16.Type, forKey key: K) throws -> UInt16? where K: CodingKey {
        if let `value`: UInt16 = value as? UInt16 {
            return value
        } else if let `value`: Bool = value as? Bool {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toUInt16(key: key, value: value)
            case .useCustom(let delegate): return delegate.toUInt16(key: key, value: value)
            }
        } else if let `value`: Int = value as? Int {
            switch self.convertTypeStrategy {
            case .useDefaultable: return try self.toUInt16(key: key, value: value)
            case .useCustom(let delegate): return try delegate.toUInt16(key: key, value: value)
            }
        } else if let `value`: Int8 = value as? Int8 {
            switch self.convertTypeStrategy {
            case .useDefaultable: return try self.toUInt16(key: key, value: value)
            case .useCustom(let delegate): return try delegate.toUInt16(key: key, value: value)
            }
        } else if let `value`: Int16 = value as? Int16 {
            switch self.convertTypeStrategy {
            case .useDefaultable: return try self.toUInt16(key: key, value: value)
            case .useCustom(let delegate): return try delegate.toUInt16(key: key, value: value)
            }
        } else if let `value`: Int32 = value as? Int32 {
            switch self.convertTypeStrategy {
            case .useDefaultable: return try self.toUInt16(key: key, value: value)
            case .useCustom(let delegate): return try delegate.toUInt16(key: key, value: value)
            }
        } else if let `value`: Int64 = value as? Int64 {
            switch self.convertTypeStrategy {
            case .useDefaultable: return try self.toUInt16(key: key, value: value)
            case .useCustom(let delegate): return try delegate.toUInt16(key: key, value: value)
            }
        } else if let `value`: UInt = value as? UInt {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toUInt16(key: key, value: value)
            case .useCustom(let delegate): return delegate.toUInt16(key: key, value: value)
            }
        } else if let `value`: UInt8 = value as? UInt8 {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toUInt16(key: key, value: value)
            case .useCustom(let delegate): return delegate.toUInt16(key: key, value: value)
            }
        } else if let `value`: UInt32 = value as? UInt32 {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toUInt16(key: key, value: value)
            case .useCustom(let delegate): return delegate.toUInt16(key: key, value: value)
            }
        } else if let `value`: UInt64 = value as? UInt64 {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toUInt16(key: key, value: value)
            case .useCustom(let delegate): return delegate.toUInt16(key: key, value: value)
            }
        } else if let `value`: Float = value as? Float {
            switch self.convertTypeStrategy {
            case .useDefaultable: return try self.toUInt16(key: key, value: value)
            case .useCustom(let delegate): return try delegate.toUInt16(key: key, value: value)
            }
        } else if let `value`: Double = value as? Double {
            switch self.convertTypeStrategy {
            case .useDefaultable: return try self.toUInt16(key: key, value: value)
            case .useCustom(let delegate): return try delegate.toUInt16(key: key, value: value)
            }
        } else if let `value`: String = value as? String {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toUInt16(key: key, value: value)
            case .useCustom(let delegate): return delegate.toUInt16(key: key, value: value)
            }
        } else {
            return nil
        }
    }
}

// MARK: - 处理UInt32和UInt32?类型
extension NIOCodableHandle {
    func decode<K>(value: inout Any, type: UInt32.Type, forKey key: K) throws -> UInt32 where K: CodingKey {
        if let `value`: UInt32 = value as? UInt32 {
            switch self.scopeExecptionStrategy {
            case .useCustom(let delegate):
                let scope: Set<AnyHashable> = delegate.scope(key: key)
                if scope.contains(value) {
                    return value
                } else {
                    return delegate.execption(key: key, source: value) as? UInt32 ?? 0
                }
            default: return value
            }
        } else if let `value`: Bool = value as? Bool {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toUInt32(key: key, value: value)
            case .useCustom(let delegate): return delegate.toUInt32(key: key, value: value)
            }
        } else if let `value`: Int = value as? Int {
            switch self.convertTypeStrategy {
            case .useDefaultable: return try self.toUInt32(key: key, value: value)
            case .useCustom(let delegate): return try delegate.toUInt32(key: key, value: value)
            }
        } else if let `value`: Int8 = value as? Int8 {
            switch self.convertTypeStrategy {
            case .useDefaultable: return try self.toUInt32(key: key, value: value)
            case .useCustom(let delegate): return try delegate.toUInt32(key: key, value: value)
            }
        } else if let `value`: Int16 = value as? Int16 {
            switch self.convertTypeStrategy {
            case .useDefaultable: return try self.toUInt32(key: key, value: value)
            case .useCustom(let delegate): return try delegate.toUInt32(key: key, value: value)
            }
        } else if let `value`: Int32 = value as? Int32 {
            switch self.convertTypeStrategy {
            case .useDefaultable: return try self.toUInt32(key: key, value: value)
            case .useCustom(let delegate): return try delegate.toUInt32(key: key, value: value)
            }
        } else if let `value`: Int64 = value as? Int64 {
            switch self.convertTypeStrategy {
            case .useDefaultable: return try self.toUInt32(key: key, value: value)
            case .useCustom(let delegate): return try delegate.toUInt32(key: key, value: value)
            }
        } else if let `value`: UInt = value as? UInt {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toUInt32(key: key, value: value)
            case .useCustom(let delegate): return delegate.toUInt32(key: key, value: value)
            }
        } else if let `value`: UInt8 = value as? UInt8 {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toUInt32(key: key, value: value)
            case .useCustom(let delegate): return delegate.toUInt32(key: key, value: value)
            }
        } else if let `value`: UInt16 = value as? UInt16 {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toUInt32(key: key, value: value)
            case .useCustom(let delegate): return delegate.toUInt32(key: key, value: value)
            }
        } else if let `value`: UInt64 = value as? UInt64 {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toUInt32(key: key, value: value)
            case .useCustom(let delegate): return delegate.toUInt32(key: key, value: value)
            }
        } else if let `value`: Float = value as? Float {
            switch self.convertTypeStrategy {
            case .useDefaultable: return try self.toUInt32(key: key, value: value)
            case .useCustom(let delegate): return try delegate.toUInt32(key: key, value: value)
            }
        } else if let `value`: Double = value as? Double {
            switch self.convertTypeStrategy {
            case .useDefaultable: return try self.toUInt32(key: key, value: value)
            case .useCustom(let delegate): return try delegate.toUInt32(key: key, value: value)
            }
        } else if let `value`: String = value as? String {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toUInt32(key: key, value: value)
            case .useCustom(let delegate): return delegate.toUInt32(key: key, value: value)
            }
        } else {
            return 0
        }
    }

    func decodeIfPresent<K>(value: inout Any, type: UInt32.Type, forKey key: K) throws -> UInt32? where K: CodingKey {
        if let `value`: UInt32 = value as? UInt32 {
            return value
        } else if let `value`: Bool = value as? Bool {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toUInt32(key: key, value: value)
            case .useCustom(let delegate): return delegate.toUInt32(key: key, value: value)
            }
        } else if let `value`: Int = value as? Int {
            switch self.convertTypeStrategy {
            case .useDefaultable: return try self.toUInt32(key: key, value: value)
            case .useCustom(let delegate): return try delegate.toUInt32(key: key, value: value)
            }
        } else if let `value`: Int8 = value as? Int8 {
            switch self.convertTypeStrategy {
            case .useDefaultable: return try self.toUInt32(key: key, value: value)
            case .useCustom(let delegate): return try delegate.toUInt32(key: key, value: value)
            }
        } else if let `value`: Int16 = value as? Int16 {
            switch self.convertTypeStrategy {
            case .useDefaultable: return try self.toUInt32(key: key, value: value)
            case .useCustom(let delegate): return try delegate.toUInt32(key: key, value: value)
            }
        } else if let `value`: Int32 = value as? Int32 {
            switch self.convertTypeStrategy {
            case .useDefaultable: return try self.toUInt32(key: key, value: value)
            case .useCustom(let delegate): return try delegate.toUInt32(key: key, value: value)
            }
        } else if let `value`: Int64 = value as? Int64 {
            switch self.convertTypeStrategy {
            case .useDefaultable: return try self.toUInt32(key: key, value: value)
            case .useCustom(let delegate): return try delegate.toUInt32(key: key, value: value)
            }
        } else if let `value`: UInt = value as? UInt {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toUInt32(key: key, value: value)
            case .useCustom(let delegate): return delegate.toUInt32(key: key, value: value)
            }
        } else if let `value`: UInt8 = value as? UInt8 {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toUInt32(key: key, value: value)
            case .useCustom(let delegate): return delegate.toUInt32(key: key, value: value)
            }
        } else if let `value`: UInt16 = value as? UInt16 {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toUInt32(key: key, value: value)
            case .useCustom(let delegate): return delegate.toUInt32(key: key, value: value)
            }
        } else if let `value`: UInt64 = value as? UInt64 {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toUInt32(key: key, value: value)
            case .useCustom(let delegate): return delegate.toUInt32(key: key, value: value)
            }
        } else if let `value`: Float = value as? Float {
            switch self.convertTypeStrategy {
            case .useDefaultable: return try self.toUInt32(key: key, value: value)
            case .useCustom(let delegate): return try delegate.toUInt32(key: key, value: value)
            }
        } else if let `value`: Double = value as? Double {
            switch self.convertTypeStrategy {
            case .useDefaultable: return try self.toUInt32(key: key, value: value)
            case .useCustom(let delegate): return try delegate.toUInt32(key: key, value: value)
            }
        } else if let `value`: String = value as? String {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toUInt32(key: key, value: value)
            case .useCustom(let delegate): return delegate.toUInt32(key: key, value: value)
            }
        } else {
            return nil
        }
    }
}

// MARK: - 处理UInt64和UInt64?类型
extension NIOCodableHandle {
    func decode<K>(value: inout Any, type: UInt64.Type, forKey key: K) throws -> UInt64 where K: CodingKey {
        if let `value`: UInt64 = value as? UInt64 {
            switch self.scopeExecptionStrategy {
            case .useCustom(let delegate):
                let scope: Set<AnyHashable> = delegate.scope(key: key)
                if scope.contains(value) {
                    return value
                } else {
                    return delegate.execption(key: key, source: value) as? UInt64 ?? 0
                }
            default: return value
            }
        } else if let `value`: Bool = value as? Bool {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toUInt64(key: key, value: value)
            case .useCustom(let delegate): return delegate.toUInt64(key: key, value: value)
            }
        } else if let `value`: Int = value as? Int {
            switch self.convertTypeStrategy {
            case .useDefaultable: return try self.toUInt64(key: key, value: value)
            case .useCustom(let delegate): return try delegate.toUInt64(key: key, value: value)
            }
        } else if let `value`: Int8 = value as? Int8 {
            switch self.convertTypeStrategy {
            case .useDefaultable: return try self.toUInt64(key: key, value: value)
            case .useCustom(let delegate): return try delegate.toUInt64(key: key, value: value)
            }
        } else if let `value`: Int16 = value as? Int16 {
            switch self.convertTypeStrategy {
            case .useDefaultable: return try self.toUInt64(key: key, value: value)
            case .useCustom(let delegate): return try delegate.toUInt64(key: key, value: value)
            }
        } else if let `value`: Int32 = value as? Int32 {
            switch self.convertTypeStrategy {
            case .useDefaultable: return try self.toUInt64(key: key, value: value)
            case .useCustom(let delegate): return try delegate.toUInt64(key: key, value: value)
            }
        } else if let `value`: Int64 = value as? Int64 {
            switch self.convertTypeStrategy {
            case .useDefaultable: return try self.toUInt64(key: key, value: value)
            case .useCustom(let delegate): return try delegate.toUInt64(key: key, value: value)
            }
        } else if let `value`: UInt = value as? UInt {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toUInt64(key: key, value: value)
            case .useCustom(let delegate): return delegate.toUInt64(key: key, value: value)
            }
        } else if let `value`: UInt8 = value as? UInt8 {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toUInt64(key: key, value: value)
            case .useCustom(let delegate): return delegate.toUInt64(key: key, value: value)
            }
        } else if let `value`: UInt16 = value as? UInt16 {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toUInt64(key: key, value: value)
            case .useCustom(let delegate): return delegate.toUInt64(key: key, value: value)
            }
        } else if let `value`: UInt32 = value as? UInt32 {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toUInt64(key: key, value: value)
            case .useCustom(let delegate): return delegate.toUInt64(key: key, value: value)
            }
        } else if let `value`: Float = value as? Float {
            switch self.convertTypeStrategy {
            case .useDefaultable: return try self.toUInt64(key: key, value: value)
            case .useCustom(let delegate): return try delegate.toUInt64(key: key, value: value)
            }
        } else if let `value`: Double = value as? Double {
            switch self.convertTypeStrategy {
            case .useDefaultable: return try self.toUInt64(key: key, value: value)
            case .useCustom(let delegate): return try delegate.toUInt64(key: key, value: value)
            }
        } else if let `value`: String = value as? String {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toUInt64(key: key, value: value)
            case .useCustom(let delegate): return delegate.toUInt64(key: key, value: value)
            }
        } else {
            return 0
        }
    }

    func decodeIfPresent<K>(value: inout Any, type: UInt64.Type, forKey key: K) throws -> UInt64? where K: CodingKey {
        if let `value`: UInt64 = value as? UInt64 {
            return value
        } else if let `value`: Bool = value as? Bool {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toUInt64(key: key, value: value)
            case .useCustom(let delegate): return delegate.toUInt64(key: key, value: value)
            }
        } else if let `value`: Int = value as? Int {
            switch self.convertTypeStrategy {
            case .useDefaultable: return try self.toUInt64(key: key, value: value)
            case .useCustom(let delegate): return try delegate.toUInt64(key: key, value: value)
            }
        } else if let `value`: Int8 = value as? Int8 {
            switch self.convertTypeStrategy {
            case .useDefaultable: return try self.toUInt64(key: key, value: value)
            case .useCustom(let delegate): return try delegate.toUInt64(key: key, value: value)
            }
        } else if let `value`: Int16 = value as? Int16 {
            switch self.convertTypeStrategy {
            case .useDefaultable: return try self.toUInt64(key: key, value: value)
            case .useCustom(let delegate): return try delegate.toUInt64(key: key, value: value)
            }
        } else if let `value`: Int32 = value as? Int32 {
            switch self.convertTypeStrategy {
            case .useDefaultable: return try self.toUInt64(key: key, value: value)
            case .useCustom(let delegate): return try delegate.toUInt64(key: key, value: value)
            }
        } else if let `value`: Int64 = value as? Int64 {
            switch self.convertTypeStrategy {
            case .useDefaultable: return try self.toUInt64(key: key, value: value)
            case .useCustom(let delegate): return try delegate.toUInt64(key: key, value: value)
            }
        } else if let `value`: UInt = value as? UInt {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toUInt64(key: key, value: value)
            case .useCustom(let delegate): return delegate.toUInt64(key: key, value: value)
            }
        } else if let `value`: UInt8 = value as? UInt8 {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toUInt64(key: key, value: value)
            case .useCustom(let delegate): return delegate.toUInt64(key: key, value: value)
            }
        } else if let `value`: UInt16 = value as? UInt16 {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toUInt64(key: key, value: value)
            case .useCustom(let delegate): return delegate.toUInt64(key: key, value: value)
            }
        } else if let `value`: UInt32 = value as? UInt32 {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toUInt64(key: key, value: value)
            case .useCustom(let delegate): return delegate.toUInt64(key: key, value: value)
            }
        } else if let `value`: Float = value as? Float {
            switch self.convertTypeStrategy {
            case .useDefaultable: return try self.toUInt64(key: key, value: value)
            case .useCustom(let delegate): return try delegate.toUInt64(key: key, value: value)
            }
        } else if let `value`: Double = value as? Double {
            switch self.convertTypeStrategy {
            case .useDefaultable: return try self.toUInt64(key: key, value: value)
            case .useCustom(let delegate): return try delegate.toUInt64(key: key, value: value)
            }
        } else if let `value`: String = value as? String {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toUInt64(key: key, value: value)
            case .useCustom(let delegate): return delegate.toUInt64(key: key, value: value)
            }
        } else {
            return nil
        }
    }
}

// MARK: - 处理Float和Float?类型
extension NIOCodableHandle {
    func decode<K>(value: inout Any, type: Float.Type, forKey key: K) throws -> Float where K: CodingKey {
        if let `value`: Float = value as? Float {
            switch self.scopeExecptionStrategy {
            case .useCustom(let delegate):
                let scope: Set<AnyHashable> = delegate.scope(key: key)
                if scope.contains(value) {
                    return value
                } else {
                    return delegate.execption(key: key, source: value) as? Float ?? 0.0
                }
            default: return value
            }
        } else if let `value`: Bool = value as? Bool {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toFloat(key: key, value: value)
            case .useCustom(let delegate): return delegate.toFloat(key: key, value: value)
            }
        } else if let `value`: Int = value as? Int {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toFloat(key: key, value: value)
            case .useCustom(let delegate): return delegate.toFloat(key: key, value: value)
            }
        } else if let `value`: Int8 = value as? Int8 {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toFloat(key: key, value: value)
            case .useCustom(let delegate): return delegate.toFloat(key: key, value: value)
            }
        } else if let `value`: Int16 = value as? Int16 {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toFloat(key: key, value: value)
            case .useCustom(let delegate): return delegate.toFloat(key: key, value: value)
            }
        } else if let `value`: Int32 = value as? Int32 {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toFloat(key: key, value: value)
            case .useCustom(let delegate): return delegate.toFloat(key: key, value: value)
            }
        } else if let `value`: Int64 = value as? Int64 {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toFloat(key: key, value: value)
            case .useCustom(let delegate): return delegate.toFloat(key: key, value: value)
            }
        } else if let `value`: UInt = value as? UInt {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toFloat(key: key, value: value)
            case .useCustom(let delegate): return delegate.toFloat(key: key, value: value)
            }
        } else if let `value`: UInt8 = value as? UInt8 {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toFloat(key: key, value: value)
            case .useCustom(let delegate): return delegate.toFloat(key: key, value: value)
            }
        } else if let `value`: UInt16 = value as? UInt16 {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toFloat(key: key, value: value)
            case .useCustom(let delegate): return delegate.toFloat(key: key, value: value)
            }
        } else if let `value`: UInt32 = value as? UInt32 {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toFloat(key: key, value: value)
            case .useCustom(let delegate): return delegate.toFloat(key: key, value: value)
            }
        } else if let `value`: UInt64 = value as? UInt64 {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toFloat(key: key, value: value)
            case .useCustom(let delegate): return delegate.toFloat(key: key, value: value)
            }
        } else if let `value`: Double = value as? Double {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toFloat(key: key, value: value)
            case .useCustom(let delegate): return delegate.toFloat(key: key, value: value)
            }
        } else if let `value`: String = value as? String {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toFloat(key: key, value: value)
            case .useCustom(let delegate): return delegate.toFloat(key: key, value: value)
            }
        } else {
            return 0
        }
    }

    func decodeIfPresent<K>(value: inout Any, type: Float.Type, forKey key: K) throws -> Float? where K: CodingKey {
        if let `value`: Float = value as? Float {
            return value
        } else if let `value`: Bool = value as? Bool {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toFloat(key: key, value: value)
            case .useCustom(let delegate): return delegate.toFloat(key: key, value: value)
            }
        } else if let `value`: Int = value as? Int {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toFloat(key: key, value: value)
            case .useCustom(let delegate): return delegate.toFloat(key: key, value: value)
            }
        } else if let `value`: Int8 = value as? Int8 {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toFloat(key: key, value: value)
            case .useCustom(let delegate): return delegate.toFloat(key: key, value: value)
            }
        } else if let `value`: Int16 = value as? Int16 {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toFloat(key: key, value: value)
            case .useCustom(let delegate): return delegate.toFloat(key: key, value: value)
            }
        } else if let `value`: Int32 = value as? Int32 {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toFloat(key: key, value: value)
            case .useCustom(let delegate): return delegate.toFloat(key: key, value: value)
            }
        } else if let `value`: Int64 = value as? Int64 {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toFloat(key: key, value: value)
            case .useCustom(let delegate): return delegate.toFloat(key: key, value: value)
            }
        } else if let `value`: UInt = value as? UInt {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toFloat(key: key, value: value)
            case .useCustom(let delegate): return delegate.toFloat(key: key, value: value)
            }
        } else if let `value`: UInt8 = value as? UInt8 {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toFloat(key: key, value: value)
            case .useCustom(let delegate): return delegate.toFloat(key: key, value: value)
            }
        } else if let `value`: UInt16 = value as? UInt16 {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toFloat(key: key, value: value)
            case .useCustom(let delegate): return delegate.toFloat(key: key, value: value)
            }
        } else if let `value`: UInt32 = value as? UInt32 {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toFloat(key: key, value: value)
            case .useCustom(let delegate): return delegate.toFloat(key: key, value: value)
            }
        } else if let `value`: UInt64 = value as? UInt64 {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toFloat(key: key, value: value)
            case .useCustom(let delegate): return delegate.toFloat(key: key, value: value)
            }
        } else if let `value`: Double = value as? Double {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toFloat(key: key, value: value)
            case .useCustom(let delegate): return delegate.toFloat(key: key, value: value)
            }
        } else if let `value`: String = value as? String {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toFloat(key: key, value: value)
            case .useCustom(let delegate): return delegate.toFloat(key: key, value: value)
            }
        } else {
            return nil
        }
    }
}

// MARK: - 处理Double和Double?类型
extension NIOCodableHandle {
    func decode<K>(value: inout Any, type: Double.Type, forKey key: K) throws -> Double where K: CodingKey {
        if let `value`: Double = value as? Double {
            switch self.scopeExecptionStrategy {
            case .useCustom(let delegate):
                let scope: Set<AnyHashable> = delegate.scope(key: key)
                if scope.contains(value) {
                    return value
                } else {
                    return delegate.execption(key: key, source: value) as? Double ?? 0.0
                }
            default: return value
            }
        } else if let `value`: Bool = value as? Bool {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toDouble(key: key, value: value)
            case .useCustom(let delegate): return delegate.toDouble(key: key, value: value)
            }
        } else if let `value`: Int = value as? Int {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toDouble(key: key, value: value)
            case .useCustom(let delegate): return delegate.toDouble(key: key, value: value)
            }
        } else if let `value`: Int8 = value as? Int8 {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toDouble(key: key, value: value)
            case .useCustom(let delegate): return delegate.toDouble(key: key, value: value)
            }
        } else if let `value`: Int16 = value as? Int16 {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toDouble(key: key, value: value)
            case .useCustom(let delegate): return delegate.toDouble(key: key, value: value)
            }
        } else if let `value`: Int32 = value as? Int32 {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toDouble(key: key, value: value)
            case .useCustom(let delegate): return delegate.toDouble(key: key, value: value)
            }
        } else if let `value`: Int64 = value as? Int64 {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toDouble(key: key, value: value)
            case .useCustom(let delegate): return delegate.toDouble(key: key, value: value)
            }
        } else if let `value`: UInt = value as? UInt {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toDouble(key: key, value: value)
            case .useCustom(let delegate): return delegate.toDouble(key: key, value: value)
            }
        } else if let `value`: UInt8 = value as? UInt8 {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toDouble(key: key, value: value)
            case .useCustom(let delegate): return delegate.toDouble(key: key, value: value)
            }
        } else if let `value`: UInt16 = value as? UInt16 {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toDouble(key: key, value: value)
            case .useCustom(let delegate): return delegate.toDouble(key: key, value: value)
            }
        } else if let `value`: UInt32 = value as? UInt32 {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toDouble(key: key, value: value)
            case .useCustom(let delegate): return delegate.toDouble(key: key, value: value)
            }
        } else if let `value`: UInt64 = value as? UInt64 {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toDouble(key: key, value: value)
            case .useCustom(let delegate): return delegate.toDouble(key: key, value: value)
            }
        } else if let `value`: Float = value as? Float {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toDouble(key: key, value: value)
            case .useCustom(let delegate): return delegate.toDouble(key: key, value: value)
            }
        } else if let `value`: String = value as? String {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toDouble(key: key, value: value)
            case .useCustom(let delegate): return delegate.toDouble(key: key, value: value)
            }
        } else {
            return 0
        }
    }

    func decodeIfPresent<K>(value: inout Any, type: Double.Type, forKey key: K) throws -> Double? where K: CodingKey {
        if let `value`: Double = value as? Double {
            return value
        } else if let `value`: Bool = value as? Bool {
            return value == true ? 1 : 0
        } else if let `value`: Int = value as? Int {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toDouble(key: key, value: value)
            case .useCustom(let delegate): return delegate.toDouble(key: key, value: value)
            }
        } else if let `value`: Int8 = value as? Int8 {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toDouble(key: key, value: value)
            case .useCustom(let delegate): return delegate.toDouble(key: key, value: value)
            }
        } else if let `value`: Int16 = value as? Int16 {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toDouble(key: key, value: value)
            case .useCustom(let delegate): return delegate.toDouble(key: key, value: value)
            }
        } else if let `value`: Int32 = value as? Int32 {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toDouble(key: key, value: value)
            case .useCustom(let delegate): return delegate.toDouble(key: key, value: value)
            }
        } else if let `value`: Int64 = value as? Int64 {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toDouble(key: key, value: value)
            case .useCustom(let delegate): return delegate.toDouble(key: key, value: value)
            }
        } else if let `value`: UInt = value as? UInt {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toDouble(key: key, value: value)
            case .useCustom(let delegate): return delegate.toDouble(key: key, value: value)
            }
        } else if let `value`: UInt8 = value as? UInt8 {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toDouble(key: key, value: value)
            case .useCustom(let delegate): return delegate.toDouble(key: key, value: value)
            }
        } else if let `value`: UInt16 = value as? UInt16 {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toDouble(key: key, value: value)
            case .useCustom(let delegate): return delegate.toDouble(key: key, value: value)
            }
        } else if let `value`: UInt32 = value as? UInt32 {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toDouble(key: key, value: value)
            case .useCustom(let delegate): return delegate.toDouble(key: key, value: value)
            }
        } else if let `value`: UInt64 = value as? UInt64 {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toDouble(key: key, value: value)
            case .useCustom(let delegate): return delegate.toDouble(key: key, value: value)
            }
        } else if let `value`: Float = value as? Float {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toDouble(key: key, value: value)
            case .useCustom(let delegate): return delegate.toDouble(key: key, value: value)
            }
        } else if let `value`: String = value as? String {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toDouble(key: key, value: value)
            case .useCustom(let delegate): return delegate.toDouble(key: key, value: value)
            }
        } else {
            return nil
        }
    }
}

// MARK: - 处理String和String?类型
extension NIOCodableHandle {
    func decode<K>(value: inout Any, type: String.Type, forKey key: K) throws -> String where K: CodingKey {
        if let `value`: String = value as? String {
            switch self.scopeExecptionStrategy {
            case .useCustom(let delegate):
                let scope: Set<AnyHashable> = delegate.scope(key: key)
                if scope.contains(value) {
                    return value
                } else {
                    return delegate.execption(key: key, source: value) as? String ?? ""
                }
            default: return value
            }
        } else if let `value`: Bool = value as? Bool {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toString(key: key, value: value)
            case .useCustom(let delegate): return delegate.toString(key: key, value: value)
            }
        } else if let `value`: Int = value as? Int {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toString(key: key, value: value)
            case .useCustom(let delegate): return delegate.toString(key: key, value: value)
            }
        } else if let `value`: Int8 = value as? Int8 {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toString(key: key, value: value)
            case .useCustom(let delegate): return delegate.toString(key: key, value: value)
            }
        } else if let `value`: Int16 = value as? Int16 {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toString(key: key, value: value)
            case .useCustom(let delegate): return delegate.toString(key: key, value: value)
            }
        } else if let `value`: Int32 = value as? Int32 {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toString(key: key, value: value)
            case .useCustom(let delegate): return delegate.toString(key: key, value: value)
            }
        } else if let `value`: Int64 = value as? Int64 {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toString(key: key, value: value)
            case .useCustom(let delegate): return delegate.toString(key: key, value: value)
            }
        } else if let `value`: UInt = value as? UInt {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toString(key: key, value: value)
            case .useCustom(let delegate): return delegate.toString(key: key, value: value)
            }
        } else if let `value`: UInt8 = value as? UInt8 {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toString(key: key, value: value)
            case .useCustom(let delegate): return delegate.toString(key: key, value: value)
            }
        } else if let `value`: UInt16 = value as? UInt16 {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toString(key: key, value: value)
            case .useCustom(let delegate): return delegate.toString(key: key, value: value)
            }
        } else if let `value`: UInt32 = value as? UInt32 {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toString(key: key, value: value)
            case .useCustom(let delegate): return delegate.toString(key: key, value: value)
            }
        } else if let `value`: UInt64 = value as? UInt64 {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toString(key: key, value: value)
            case .useCustom(let delegate): return delegate.toString(key: key, value: value)
            }
        } else if let `value`: Float = value as? Float {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toString(key: key, value: value)
            case .useCustom(let delegate): return delegate.toString(key: key, value: value)
            }
        } else if let `value`: Double = value as? Double {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toString(key: key, value: value)
            case .useCustom(let delegate): return delegate.toString(key: key, value: value)
            }
        } else {
            return ""
        }
    }

    func decodeIfPresent<K>(value: inout Any, type: String.Type, forKey key: K) throws -> String? where K: CodingKey {
        if let `value`: String = value as? String {
            return value
        } else if let `value`: Bool = value as? Bool {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toString(key: key, value: value)
            case .useCustom(let delegate): return delegate.toString(key: key, value: value)
            }
        } else if let `value`: Int = value as? Int {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toString(key: key, value: value)
            case .useCustom(let delegate): return delegate.toString(key: key, value: value)
            }
        } else if let `value`: Int8 = value as? Int8 {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toString(key: key, value: value)
            case .useCustom(let delegate): return delegate.toString(key: key, value: value)
            }
        } else if let `value`: Int16 = value as? Int16 {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toString(key: key, value: value)
            case .useCustom(let delegate): return delegate.toString(key: key, value: value)
            }
        } else if let `value`: Int32 = value as? Int32 {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toString(key: key, value: value)
            case .useCustom(let delegate): return delegate.toString(key: key, value: value)
            }
        } else if let `value`: Int64 = value as? Int64 {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toString(key: key, value: value)
            case .useCustom(let delegate): return delegate.toString(key: key, value: value)
            }
        } else if let `value`: UInt = value as? UInt {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toString(key: key, value: value)
            case .useCustom(let delegate): return delegate.toString(key: key, value: value)
            }
        } else if let `value`: UInt8 = value as? UInt8 {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toString(key: key, value: value)
            case .useCustom(let delegate): return delegate.toString(key: key, value: value)
            }
        } else if let `value`: UInt16 = value as? UInt16 {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toString(key: key, value: value)
            case .useCustom(let delegate): return delegate.toString(key: key, value: value)
            }
        } else if let `value`: UInt32 = value as? UInt32 {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toString(key: key, value: value)
            case .useCustom(let delegate): return delegate.toString(key: key, value: value)
            }
        } else if let `value`: UInt64 = value as? UInt64 {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toString(key: key, value: value)
            case .useCustom(let delegate): return delegate.toString(key: key, value: value)
            }
        } else if let `value`: Float = value as? Float {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toString(key: key, value: value)
            case .useCustom(let delegate): return delegate.toString(key: key, value: value)
            }
        } else if let `value`: Double = value as? Double {
            switch self.convertTypeStrategy {
            case .useDefaultable: return self.toString(key: key, value: value)
            case .useCustom(let delegate): return delegate.toString(key: key, value: value)
            }
        } else {
            return nil
        }
    }
}

