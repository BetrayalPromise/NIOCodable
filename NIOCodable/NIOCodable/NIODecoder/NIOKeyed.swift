import Foundation

struct NIOKeyed<K> : KeyedDecodingContainerProtocol where K: CodingKey {
    typealias Key = K
    var codingPath: [CodingKey]
    var allKeys: [Key] {
        return self.source.keys.compactMap({ (hash) -> Key? in
            guard let `hash`: String = hash as? String else { return Key(stringValue: "") }
            return Key(stringValue: hash)
        })
    }
    let decoder: NIODecoder
    var source: [AnyHashable: Any]
    weak var instance: NIOJSONDecoder?
    let strategy: NIOJSONDecoder.TypeDecodingStrategy
    
    init(instance: NIOJSONDecoder?, source: [AnyHashable: Any], decoder: NIODecoder) {
        self.instance = instance
        self.strategy = self.instance?.typeDecodingStrategy ?? .default
        self.source = source
        self.decoder = decoder
        self.codingPath = decoder.codingPath
    }
    
    func contains(_ key: K) -> Bool {
        return self.source[key.stringValue] != nil
    }
    
    func decodeNil(forKey key: K) throws -> Bool {
        if let entry = self.source[key.stringValue] {
            return entry is NSNull
        } else {
            return false
        }
    }
    
    // MARK: Bool
    func decode(_ type: Bool.Type, forKey key: K) throws -> Bool {
        guard var entry: Any = self.source[key.stringValue] else {
            throw DecodingError.valueNotFound(type, DecodingError.Context(codingPath: [key], debugDescription: "Value不存在"))
        }
        return try self.decode(value: &entry, type: Bool.self, forKey: key)
    }
    
    // MARK: Bool?
    func decodeIfPresent(_ type: Bool.Type, forKey key: K) throws -> Bool? {
        guard var entry: Any = self.source[key.stringValue] else {
            return nil
        }
        return try self.decodeIfPresent(value: &entry, type: Bool.self, forKey: key)
    }
    
    // MARK: Int
    func decode(_ type: Int.Type, forKey key: K) throws -> Int {
        guard var entry: Any = self.source[key.stringValue] else {
            throw DecodingError.valueNotFound(type, DecodingError.Context(codingPath: [key], debugDescription: "Value不存在"))
        }
        return try self.decode(value: &entry, type: Int.self, forKey: key)
    }
    
    // MARK: Int?
    func decodeIfPresent(_ type: Int.Type, forKey key: K) throws -> Int? {
        guard var entry: Any = self.source[key.stringValue] else {
            return nil
        }
        return try self.decodeIfPresent(value: &entry, type: Int.self, forKey: key)
    }
    
    // MARK: Int8
    func decode(_ type: Int8.Type, forKey key: K) throws -> Int8 {
        guard var entry: Any = self.source[key.stringValue] else {
            throw DecodingError.valueNotFound(type, DecodingError.Context(codingPath: [key], debugDescription: "Value不存在"))
        }
        return try self.decode(value: &entry, type: Int8.self, forKey: key)
    }
    
    // MARK: Int8?
    func decodeIfPresent(_ type: Int8.Type, forKey key: K) throws -> Int8? {
        guard var entry: Any = self.source[key.stringValue] else {
            return nil
        }
        return try self.decodeIfPresent(value: &entry, type: Int8.self, forKey: key)
    }
    
    // MARK: Int16
    func decode(_ type: Int16.Type, forKey key: K) throws -> Int16 {
        guard var entry: Any = self.source[key.stringValue] else {
            throw DecodingError.valueNotFound(type, DecodingError.Context(codingPath: [key], debugDescription: "Value不存在"))
        }
        return try self.decode(value: &entry, type: Int16.self, forKey: key)
    }
    
    // MARK: Int16?
    func decodeIfPresent(_ type: Int16.Type, forKey key: K) throws -> Int16? {
        guard var entry: Any = self.source[key.stringValue] else {
            return nil
        }
        return try self.decodeIfPresent(value: &entry, type: Int16.self, forKey: key)
    }
    
    // MARK: Int32
    func decode(_ type: Int32.Type, forKey key: K) throws -> Int32 {
        guard var entry: Any = self.source[key.stringValue] else {
            throw DecodingError.valueNotFound(type, DecodingError.Context(codingPath: [key], debugDescription: "Value不存在"))
        }
        return try self.decode(value: &entry, type: Int32.self, forKey: key)
    }
    
    // MARK: Int32?
    func decodeIfPresent(_ type: Int32.Type, forKey key: K) throws -> Int32? {
        guard var entry: Any = self.source[key.stringValue] else {
            return nil
        }
        return try self.decodeIfPresent(value: &entry, type: Int32.self, forKey: key)
    }
    
    // MARK: Int64
    func decode(_ type: Int64.Type, forKey key: K) throws -> Int64 {
        guard var entry: Any = self.source[key.stringValue] else {
            throw DecodingError.valueNotFound(type, DecodingError.Context(codingPath: [key], debugDescription: "Value不存在"))
        }
        return try self.decode(value: &entry, type: Int64.self, forKey: key)
    }
    
    // MARK: Int64?
    func decodeIfPresent(_ type: Int64.Type, forKey key: K) throws -> Int64? {
        guard var entry: Any = self.source[key.stringValue] else {
            return nil
        }
        return try self.decodeIfPresent(value: &entry, type: Int64.self, forKey: key)
    }
    
    // MARK: UInt
    func decode(_ type: UInt.Type, forKey key: K) throws -> UInt {
        guard var entry: Any = self.source[key.stringValue] else {
            throw DecodingError.valueNotFound(type, DecodingError.Context(codingPath: [key], debugDescription: "Value不存在"))
        }
        return try self.decode(value: &entry, type: UInt.self, forKey: key)
    }
    
    // MARK: UInt?
    func decodeIfPresent(_ type: UInt.Type, forKey key: K) throws -> UInt? {
        guard var entry: Any = self.source[key.stringValue] else {
            return nil
        }
        return try self.decodeIfPresent(value: &entry, type: UInt.self, forKey: key)
    }
    
    // MARK: UInt8
    func decode(_ type: UInt8.Type, forKey key: K) throws -> UInt8 {
        guard var entry: Any = self.source[key.stringValue] else {
            throw DecodingError.valueNotFound(type, DecodingError.Context(codingPath: [key], debugDescription: "Value不存在"))
        }
        return try self.decode(value: &entry, type: UInt8.self, forKey: key)
    }
    
    // MARK: UInt8?
    func decodeIfPresent(_ type: UInt8.Type, forKey key: K) throws -> UInt8? {
        guard var entry: Any = self.source[key.stringValue] else {
            return nil
        }
        return try self.decodeIfPresent(value: &entry, type: UInt8.self, forKey: key)
    }
    
    // MARK: UInt16
    func decode(_ type: UInt16.Type, forKey key: K) throws -> UInt16 {
        guard var entry: Any = self.source[key.stringValue] else {
            throw DecodingError.valueNotFound(type, DecodingError.Context(codingPath: [key], debugDescription: "Value不存在"))
        }
        return try self.decode(value: &entry, type: UInt16.self, forKey: key)
    }
    
    // MARK: UInt16?
    func decodeIfPresent(_ type: UInt16.Type, forKey key: K) throws -> UInt16? {
        guard var entry: Any = self.source[key.stringValue] else {
            return nil
        }
        return try self.decodeIfPresent(value: &entry, type: UInt16.self, forKey: key)
    }
    
    // MARK: UInt32
    func decode(_ type: UInt32.Type, forKey key: K) throws -> UInt32 {
        guard var entry: Any = self.source[key.stringValue] else {
            throw DecodingError.valueNotFound(type, DecodingError.Context(codingPath: [key], debugDescription: "Value不存在"))
        }
        return try self.decode(value: &entry, type: UInt32.self, forKey: key)
    }
    
    // MARK: UInt32?
    func decodeIfPresent(_ type: UInt32.Type, forKey key: K) throws -> UInt32? {
        guard var entry: Any = self.source[key.stringValue] else {
            return nil
        }
        return try self.decodeIfPresent(value: &entry, type: UInt32.self, forKey: key)
    }

    // MARK: UInt64
    func decode(_ type: UInt64.Type, forKey key: K) throws -> UInt64 {
        guard var entry: Any = self.source[key.stringValue] else {
            throw DecodingError.valueNotFound(type, DecodingError.Context(codingPath: [key], debugDescription: "Value不存在"))
        }
        return try self.decode(value: &entry, type: UInt64.self, forKey: key)
    }
    
    // MARK: UInt64?
    func decodeIfPresent(_ type: UInt64.Type, forKey key: K) throws -> UInt64? {
        guard var entry: Any = self.source[key.stringValue] else {
            return nil
        }
        return try self.decodeIfPresent(value: &entry, type: UInt64.self, forKey: key)
    }
    
    // MARK: T
    func decode(_ type: Float.Type, forKey key: K) throws -> Float {
        guard var entry: Any = self.source[key.stringValue] else {
            throw DecodingError.valueNotFound(type, DecodingError.Context(codingPath: [key], debugDescription: "Value不存在"))
        }
        return try self.decode(value: &entry, type: Float.self, forKey: key)
    }
    
    // MARK: T?
    func decodeIfPresent(_ type: Float.Type, forKey key: K) throws -> Float? {
        guard var entry: Any = self.source[key.stringValue] else {
            return nil
        }
        return try self.decodeIfPresent(value: &entry, type: Float.self, forKey: key)
    }
    
    func decode(_ type: Double.Type, forKey key: K) throws -> Double {
        guard var entry: Any = self.source[key.stringValue] else {
            throw DecodingError.valueNotFound(type, DecodingError.Context(codingPath: [key], debugDescription: "Value不存在"))
        }
        return try self.decode(value: &entry, type: Double.self, forKey: key)
    }
    
    func decodeIfPresent(_ type: Double.Type, forKey key: K) throws -> Double? {
        guard var entry: Any = self.source[key.stringValue] else {
            return nil
        }
        return try self.decodeIfPresent(value: &entry, type: Double.self, forKey: key)
    }
    
    // MARK: String
    func decode(_ type: String.Type, forKey key: K) throws -> String {
        guard var entry: Any = self.source[key.stringValue] else {
            throw DecodingError.valueNotFound(type, DecodingError.Context(codingPath: [key], debugDescription: "Value不存在"))
        }
        return try self.decode(value: &entry, type: String.self, forKey: key)
    }
    
    // MARK: String?
    func decodeIfPresent(_ type: String.Type, forKey key: K) throws -> String? {
        guard var entry: Any = self.source[key.stringValue] else {
            return nil
        }
        return try self.decodeIfPresent(value: &entry, type: String.self, forKey: key)
    }
    
    // MARK: T
    func decode<T>(_ type: T.Type, forKey key: K) throws -> T where T : Decodable {
        return try type.init(from: self.decoder)
    }
    
    // MARK: T?
    func decodeIfPresent<T>(_ type: T.Type, forKey key: K) throws -> T? where T : Decodable {
        return try type.init(from: self.decoder)
    }
    
    func nestedContainer<NestedKey>(keyedBy type: NestedKey.Type, forKey key: K) throws -> KeyedDecodingContainer<NestedKey> where NestedKey : CodingKey {
        self.decoder.codingPath.append(key)
        defer {
            self.decoder.codingPath.removeLast()
        }

        guard let dictionary: [AnyHashable: Any] = self.source[key.stringValue] as? [AnyHashable: Any] else {
            return KeyedDecodingContainer(NIOKeyed<NestedKey>(instance: self.instance, source: [:], decoder: self.decoder))
        }
        return KeyedDecodingContainer(NIOKeyed<NestedKey>(instance: self.instance, source: dictionary, decoder: self.decoder))
    }
    
    func nestedUnkeyedContainer(forKey key: K) throws -> UnkeyedDecodingContainer {
        self.decoder.codingPath.append(key)
        defer {
            self.decoder.codingPath.removeLast()
        }
        guard let array: [Any] = self.source[key.stringValue] as? [Any] else {
            return NIOUnkeyed(instance: self.instance, source: [], decoder: self.decoder)
        }
        return NIOUnkeyed(instance: self.instance, source: array, decoder: self.decoder)
    }
    
    func superDecoder() throws -> Decoder {
        return self.decoder
    }
    
    func superDecoder(forKey key: K) throws -> Decoder {
        return self.decoder
    }
}

extension NIOKeyed: CustomConvertible {}

// MARK: - 处理Bool和Bool?类型
extension NIOKeyed {
    func decode<K>(value: inout Any, type: Bool.Type, forKey key: K) throws -> Bool where K: CodingKey {
        self.decoder.codingPath.append(key)
        self.decoder.storage.push(value)
        defer {
            self.decoder.codingPath.removeLast()
            self.decoder.storage.pop()
        }
        
        if let `value`: Bool = value as? Bool {
            return value
        } else if let `value`: Int = value as? Int {
            switch self.strategy {
            case .default: return self.toBool(key: key, value: value)
            case .custom(let delegate): return delegate.toBool(key: key, value: value)
            }
        } else if let `value`: Int8 = value as? Int8 {
            switch self.strategy {
            case .default: return self.toBool(key: key, value: value)
            case .custom(let delegate): return delegate.toBool(key: key, value: value)
            }
        } else if let `value`: Int16 = value as? Int16 {
            switch self.strategy {
            case .default: return self.toBool(key: key, value: value)
            case .custom(let delegate): return delegate.toBool(key: key, value: value)
            }
        } else if let `value`: Int32 = value as? Int32 {
            switch self.strategy {
            case .default: return self.toBool(key: key, value: value)
            case .custom(let delegate): return delegate.toBool(key: key, value: value)
            }
        } else if let `value`: Int64 = value as? Int64 {
            switch self.strategy {
            case .default: return self.toBool(key: key, value: value)
            case .custom(let delegate): return delegate.toBool(key: key, value: value)
            }
        } else if let `value`: UInt = value as? UInt {
            switch self.strategy {
            case .default: return self.toBool(key: key, value: value)
            case .custom(let delegate): return delegate.toBool(key: key, value: value)
            }
        } else if let `value`: UInt8 = value as? UInt8 {
            switch self.strategy {
            case .default: return self.toBool(key: key, value: value)
            case .custom(let delegate): return delegate.toBool(key: key, value: value)
            }
        } else if let `value`: UInt16 = value as? UInt16 {
            switch self.strategy {
            case .default: return self.toBool(key: key, value: value)
            case .custom(let delegate): return delegate.toBool(key: key, value: value)
            }
        } else if let `value`: UInt32 = value as? UInt32 {
            switch self.strategy {
            case .default: return self.toBool(key: key, value: value)
            case .custom(let delegate): return delegate.toBool(key: key, value: value)
            }
        } else if let `value`: UInt64 = value as? UInt64 {
            switch self.strategy {
            case .default: return self.toBool(key: key, value: value)
            case .custom(let delegate): return delegate.toBool(key: key, value: value)
            }
        } else if let `value`: Float = value as? Float {
            switch self.strategy {
            case .default: return self.toBool(key: key, value: value)
            case .custom(let delegate): return delegate.toBool(key: key, value: value)
            }
        } else if let `value`: Double = value as? Double {
            switch self.strategy {
            case .default: return self.toBool(key: key, value: value)
            case .custom(let delegate): return delegate.toBool(key: key, value: value)
            }
        } else if let `value`: String = value as? String {
            switch self.strategy {
            case .default: return self.toBool(key: key, value: value)
            case .custom(let delegate): return delegate.toBool(key: key, value: value)
            }
        } else {
            return false
        }
    }
    
    func decodeIfPresent<K>(value: inout Any, type: Bool.Type, forKey key: K) throws -> Bool? where K: CodingKey {
        self.decoder.codingPath.append(key)
        self.decoder.storage.push(value)
        defer {
            self.decoder.codingPath.removeLast()
            self.decoder.storage.pop()
        }
        
        if let `value`: Bool = value as? Bool {
            return value
        } else if let `value`: Int = value as? Int {
            switch self.strategy {
            case .default: return self.toBool(key: key, value: value)
            case .custom(let delegate): return delegate.toBool(key: key, value: value)
            }
        } else if let `value`: Int8 = value as? Int8 {
            switch self.strategy {
            case .default: return self.toBool(key: key, value: value)
            case .custom(let delegate): return delegate.toBool(key: key, value: value)
            }
        } else if let `value`: Int16 = value as? Int16 {
            switch self.strategy {
            case .default: return self.toBool(key: key, value: value)
            case .custom(let delegate): return delegate.toBool(key: key, value: value)
            }
        } else if let `value`: Int32 = value as? Int32 {
            switch self.strategy {
            case .default: return self.toBool(key: key, value: value)
            case .custom(let delegate): return delegate.toBool(key: key, value: value)
            }
        } else if let `value`: Int64 = value as? Int64 {
            switch self.strategy {
            case .default: return self.toBool(key: key, value: value)
            case .custom(let delegate): return delegate.toBool(key: key, value: value)
            }
        } else if let `value`: UInt = value as? UInt {
            switch self.strategy {
            case .default: return self.toBool(key: key, value: value)
            case .custom(let delegate): return delegate.toBool(key: key, value: value)
            }
        } else if let `value`: UInt8 = value as? UInt8 {
            switch self.strategy {
            case .default: return self.toBool(key: key, value: value)
            case .custom(let delegate): return delegate.toBool(key: key, value: value)
            }
        } else if let `value`: UInt16 = value as? UInt16 {
            switch self.strategy {
            case .default: return self.toBool(key: key, value: value)
            case .custom(let delegate): return delegate.toBool(key: key, value: value)
            }
        } else if let `value`: UInt32 = value as? UInt32 {
            switch self.strategy {
            case .default: return self.toBool(key: key, value: value)
            case .custom(let delegate): return delegate.toBool(key: key, value: value)
            }
        } else if let `value`: UInt64 = value as? UInt64 {
            switch self.strategy {
            case .default: return self.toBool(key: key, value: value)
            case .custom(let delegate): return delegate.toBool(key: key, value: value)
            }
        } else if let `value`: Float = value as? Float {
            switch self.strategy {
            case .default: return self.toBool(key: key, value: value)
            case .custom(let delegate): return delegate.toBool(key: key, value: value)
            }
        } else if let `value`: Double = value as? Double {
            switch self.strategy {
            case .default: return self.toBool(key: key, value: value)
            case .custom(let delegate): return delegate.toBool(key: key, value: value)
            }
        } else if let `value`: String = value as? String {
            switch self.strategy {
            case .default: return self.toBool(key: key, value: value)
            case .custom(let delegate): return delegate.toBool(key: key, value: value)
            }
        } else {
            return nil
        }
    }
}

// MARK: - 处理Int和Int?类型
extension NIOKeyed {
    func decode<K>(value: inout Any, type: Int.Type, forKey key: K) throws -> Int where K: CodingKey {
        self.decoder.codingPath.append(key)
        self.decoder.storage.push(value)
        defer {
            self.decoder.codingPath.removeLast()
            self.decoder.storage.pop()
        }
        
        if let `value`: Int = value as? Int {
            return value
        } else if let `value`: Bool = value as? Bool {
            switch self.strategy {
            case .default: return self.toInt(key: key, value: value)
            case .custom(let delegate): return delegate.toInt(key: key, value: value)
            }
        } else if let `value`: Int8 = value as? Int8 {
            switch self.strategy {
            case .default: return self.toInt(key: key, value: value)
            case .custom(let delegate): return delegate.toInt(key: key, value: value)
            }
        } else if let `value`: Int16 = value as? Int16 {
            switch self.strategy {
            case .default: return self.toInt(key: key, value: value)
            case .custom(let delegate): return delegate.toInt(key: key, value: value)
            }
        } else if let `value`: Int32 = value as? Int32 {
            switch self.strategy {
            case .default: return self.toInt(key: key, value: value)
            case .custom(let delegate): return delegate.toInt(key: key, value: value)
            }
        } else if let `value`: Int64 = value as? Int64 {
            switch self.strategy {
            case .default: return self.toInt(key: key, value: value)
            case .custom(let delegate): return delegate.toInt(key: key, value: value)
            }
        } else if let `value`: UInt = value as? UInt {
            switch self.strategy {
            case .default: return self.toInt(key: key, value: value)
            case .custom(let delegate): return delegate.toInt(key: key, value: value)
            }
        } else if let `value`: UInt8 = value as? UInt8 {
            switch self.strategy {
            case .default: return self.toInt(key: key, value: value)
            case .custom(let delegate): return delegate.toInt(key: key, value: value)
            }
        } else if let `value`: UInt16 = value as? UInt16 {
            switch self.strategy {
            case .default: return self.toInt(key: key, value: value)
            case .custom(let delegate): return delegate.toInt(key: key, value: value)
            }
        } else if let `value`: UInt32 = value as? UInt32 {
            switch self.strategy {
            case .default: return self.toInt(key: key, value: value)
            case .custom(let delegate): return delegate.toInt(key: key, value: value)
            }
        } else if let `value`: UInt64 = value as? UInt64 {
            switch self.strategy {
            case .default: return self.toInt(key: key, value: value)
            case .custom(let delegate): return delegate.toInt(key: key, value: value)
            }
        } else if let `value`: Float = value as? Float {
            switch self.strategy {
            case .default: return self.toInt(key: key, value: value)
            case .custom(let delegate): return delegate.toInt(key: key, value: value)
            }
        } else if let `value`: Double = value as? Double {
            switch self.strategy {
            case .default: return self.toInt(key: key, value: value)
            case .custom(let delegate): return delegate.toInt(key: key, value: value)
            }
        } else if let `value`: String = value as? String {
            switch self.strategy {
            case .default: return self.toInt(key: key, value: value)
            case .custom(let delegate): return delegate.toInt(key: key, value: value)
            }
        } else {
            return 0
        }
    }
    
    func decodeIfPresent<K>(value: inout Any, type: Int.Type, forKey key: K) throws -> Int? where K: CodingKey {
        self.decoder.codingPath.append(key)
        self.decoder.storage.push(value)
        defer {
            self.decoder.codingPath.removeLast()
            self.decoder.storage.pop()
        }
        
        if let `value`: Int = value as? Int {
            return value
        } else if let `value`: Bool = value as? Bool {
            switch self.strategy {
            case .default: return self.toInt(key: key, value: value)
            case .custom(let delegate): return delegate.toInt(key: key, value: value)
            }
        } else if let `value`: Int8 = value as? Int8 {
            switch self.strategy {
            case .default: return self.toInt(key: key, value: value)
            case .custom(let delegate): return delegate.toInt(key: key, value: value)
            }
        } else if let `value`: Int16 = value as? Int16 {
            switch self.strategy {
            case .default: return self.toInt(key: key, value: value)
            case .custom(let delegate): return delegate.toInt(key: key, value: value)
            }
        } else if let `value`: Int32 = value as? Int32 {
            switch self.strategy {
            case .default: return self.toInt(key: key, value: value)
            case .custom(let delegate): return delegate.toInt(key: key, value: value)
            }
        } else if let `value`: Int64 = value as? Int64 {
            switch self.strategy {
            case .default: return self.toInt(key: key, value: value)
            case .custom(let delegate): return delegate.toInt(key: key, value: value)
            }
        } else if let `value`: UInt = value as? UInt {
            switch self.strategy {
            case .default: return self.toInt(key: key, value: value)
            case .custom(let delegate): return delegate.toInt(key: key, value: value)
            }
        } else if let `value`: UInt8 = value as? UInt8 {
            switch self.strategy {
            case .default: return self.toInt(key: key, value: value)
            case .custom(let delegate): return delegate.toInt(key: key, value: value)
            }
        } else if let `value`: UInt16 = value as? UInt16 {
            switch self.strategy {
            case .default: return self.toInt(key: key, value: value)
            case .custom(let delegate): return delegate.toInt(key: key, value: value)
            }
        } else if let `value`: UInt32 = value as? UInt32 {
            switch self.strategy {
            case .default: return self.toInt(key: key, value: value)
            case .custom(let delegate): return delegate.toInt(key: key, value: value)
            }
        } else if let `value`: UInt64 = value as? UInt64 {
            switch self.strategy {
            case .default: return self.toInt(key: key, value: value)
            case .custom(let delegate): return delegate.toInt(key: key, value: value)
            }
        } else if let `value`: Float = value as? Float {
            switch self.strategy {
            case .default: return self.toInt(key: key, value: value)
            case .custom(let delegate): return delegate.toInt(key: key, value: value)
            }
        } else if let `value`: Double = value as? Double {
            switch self.strategy {
            case .default: return self.toInt(key: key, value: value)
            case .custom(let delegate): return delegate.toInt(key: key, value: value)
            }
        } else if let `value`: String = value as? String {
            switch self.strategy {
            case .default: return self.toInt(key: key, value: value)
            case .custom(let delegate): return delegate.toInt(key: key, value: value)
            }
        } else {
            return nil
        }
    }
}

// MARK: - 处理Int8和Int8?类型
extension NIOKeyed {
    func decode<K>(value: inout Any, type: Int8.Type, forKey key: K) throws -> Int8 where K: CodingKey {
        self.decoder.codingPath.append(key)
        self.decoder.storage.push(value)
        defer {
            self.decoder.codingPath.removeLast()
            self.decoder.storage.pop()
        }
        
        if let `value`: Int8 = value as? Int8 {
            return value
        } else if let `value`: Bool = value as? Bool {
            switch self.strategy {
            case .default: return self.toInt8(key: key, value: value)
            case .custom(let delegate): return delegate.toInt8(key: key, value: value)
            }
        } else if let `value`: Int = value as? Int {
            switch self.strategy {
            case .default: return self.toInt8(key: key, value: value)
            case .custom(let delegate): return delegate.toInt8(key: key, value: value)
            }
        } else if let `value`: Int16 = value as? Int16 {
            switch self.strategy {
            case .default: return self.toInt8(key: key, value: value)
            case .custom(let delegate): return delegate.toInt8(key: key, value: value)
            }
        } else if let `value`: Int32 = value as? Int32 {
            switch self.strategy {
            case .default: return self.toInt8(key: key, value: value)
            case .custom(let delegate): return delegate.toInt8(key: key, value: value)
            }
        } else if let `value`: Int64 = value as? Int64 {
            switch self.strategy {
            case .default: return self.toInt8(key: key, value: value)
            case .custom(let delegate): return delegate.toInt8(key: key, value: value)
            }
        } else if let `value`: UInt = value as? UInt {
            switch self.strategy {
            case .default: return self.toInt8(key: key, value: value)
            case .custom(let delegate): return delegate.toInt8(key: key, value: value)
            }
        } else if let `value`: UInt8 = value as? UInt8 {
            switch self.strategy {
            case .default: return self.toInt8(key: key, value: value)
            case .custom(let delegate): return delegate.toInt8(key: key, value: value)
            }
        } else if let `value`: UInt16 = value as? UInt16 {
            switch self.strategy {
            case .default: return self.toInt8(key: key, value: value)
            case .custom(let delegate): return delegate.toInt8(key: key, value: value)
            }
        } else if let `value`: UInt32 = value as? UInt32 {
            switch self.strategy {
            case .default: return self.toInt8(key: key, value: value)
            case .custom(let delegate): return delegate.toInt8(key: key, value: value)
            }
        } else if let `value`: UInt64 = value as? UInt64 {
            switch self.strategy {
            case .default: return self.toInt8(key: key, value: value)
            case .custom(let delegate): return delegate.toInt8(key: key, value: value)
            }
        } else if let `value`: Float = value as? Float {
            switch self.strategy {
            case .default: return self.toInt8(key: key, value: value)
            case .custom(let delegate): return delegate.toInt8(key: key, value: value)
            }
        } else if let `value`: Double = value as? Double {
            switch self.strategy {
            case .default: return self.toInt8(key: key, value: value)
            case .custom(let delegate): return delegate.toInt8(key: key, value: value)
            }
        } else if let `value`: String = value as? String {
            switch self.strategy {
            case .default: return self.toInt8(key: key, value: value)
            case .custom(let delegate): return delegate.toInt8(key: key, value: value)
            }
        } else {
            return 0
        }
    }
    
    func decodeIfPresent<K>(value: inout Any, type: Int8.Type, forKey key: K) throws -> Int8? where K: CodingKey {
        self.decoder.codingPath.append(key)
        self.decoder.storage.push(value)
        defer {
            self.decoder.codingPath.removeLast()
            self.decoder.storage.pop()
        }
        
        if let `value`: Int8 = value as? Int8 {
            return value
        } else if let `value`: Bool = value as? Bool {
            switch self.strategy {
            case .default: return self.toInt8(key: key, value: value)
            case .custom(let delegate): return delegate.toInt8(key: key, value: value)
            }
        } else if let `value`: Int = value as? Int {
            switch self.strategy {
            case .default: return self.toInt8(key: key, value: value)
            case .custom(let delegate): return delegate.toInt8(key: key, value: value)
            }
        } else if let `value`: Int16 = value as? Int16 {
            switch self.strategy {
            case .default: return self.toInt8(key: key, value: value)
            case .custom(let delegate): return delegate.toInt8(key: key, value: value)
            }
        } else if let `value`: Int32 = value as? Int32 {
            switch self.strategy {
            case .default: return self.toInt8(key: key, value: value)
            case .custom(let delegate): return delegate.toInt8(key: key, value: value)
            }
        } else if let `value`: Int64 = value as? Int64 {
            switch self.strategy {
            case .default: return self.toInt8(key: key, value: value)
            case .custom(let delegate): return delegate.toInt8(key: key, value: value)
            }
        } else if let `value`: UInt = value as? UInt {
            switch self.strategy {
            case .default: return self.toInt8(key: key, value: value)
            case .custom(let delegate): return delegate.toInt8(key: key, value: value)
            }
        } else if let `value`: UInt8 = value as? UInt8 {
            switch self.strategy {
            case .default: return self.toInt8(key: key, value: value)
            case .custom(let delegate): return delegate.toInt8(key: key, value: value)
            }
        } else if let `value`: UInt16 = value as? UInt16 {
            switch self.strategy {
            case .default: return self.toInt8(key: key, value: value)
            case .custom(let delegate): return delegate.toInt8(key: key, value: value)
            }
        } else if let `value`: UInt32 = value as? UInt32 {
            switch self.strategy {
            case .default: return self.toInt8(key: key, value: value)
            case .custom(let delegate): return delegate.toInt8(key: key, value: value)
            }
        } else if let `value`: UInt64 = value as? UInt64 {
            switch self.strategy {
            case .default: return self.toInt8(key: key, value: value)
            case .custom(let delegate): return delegate.toInt8(key: key, value: value)
            }
        } else if let `value`: Float = value as? Float {
            switch self.strategy {
            case .default: return self.toInt8(key: key, value: value)
            case .custom(let delegate): return delegate.toInt8(key: key, value: value)
            }
        } else if let `value`: Double = value as? Double {
            switch self.strategy {
            case .default: return self.toInt8(key: key, value: value)
            case .custom(let delegate): return delegate.toInt8(key: key, value: value)
            }
        } else if let `value`: String = value as? String {
            switch self.strategy {
            case .default: return self.toInt8(key: key, value: value)
            case .custom(let delegate): return delegate.toInt8(key: key, value: value)
            }
        } else {
            return nil
        }
    }
}

// MARK: - 处理Int16和Int16?类型
extension NIOKeyed {
    func decode<K>(value: inout Any, type: Int16.Type, forKey key: K) throws -> Int16 where K: CodingKey {
        self.decoder.codingPath.append(key)
        self.decoder.storage.push(value)
        defer {
            self.decoder.codingPath.removeLast()
            self.decoder.storage.pop()
        }
        
        if let `value`: Int16 = value as? Int16 {
            return value
        } else if let `value`: Bool = value as? Bool {
            switch self.strategy {
            case .default: return self.toInt16(key: key, value: value)
            case .custom(let delegate): return delegate.toInt16(key: key, value: value)
            }
        } else if let `value`: Int = value as? Int {
            switch self.strategy {
            case .default: return self.toInt16(key: key, value: value)
            case .custom(let delegate): return delegate.toInt16(key: key, value: value)
            }
        } else if let `value`: Int8 = value as? Int8 {
            switch self.strategy {
            case .default: return self.toInt16(key: key, value: value)
            case .custom(let delegate): return delegate.toInt16(key: key, value: value)
            }
        } else if let `value`: Int32 = value as? Int32 {
            switch self.strategy {
            case .default: return self.toInt16(key: key, value: value)
            case .custom(let delegate): return delegate.toInt16(key: key, value: value)
            }
        } else if let `value`: Int64 = value as? Int64 {
            switch self.strategy {
            case .default: return self.toInt16(key: key, value: value)
            case .custom(let delegate): return delegate.toInt16(key: key, value: value)
            }
        } else if let `value`: UInt = value as? UInt {
            switch self.strategy {
            case .default: return self.toInt16(key: key, value: value)
            case .custom(let delegate): return delegate.toInt16(key: key, value: value)
            }
        } else if let `value`: UInt8 = value as? UInt8 {
            switch self.strategy {
            case .default: return self.toInt16(key: key, value: value)
            case .custom(let delegate): return delegate.toInt16(key: key, value: value)
            }
        } else if let `value`: UInt16 = value as? UInt16 {
            switch self.strategy {
            case .default: return self.toInt16(key: key, value: value)
            case .custom(let delegate): return delegate.toInt16(key: key, value: value)
            }
        } else if let `value`: UInt32 = value as? UInt32 {
            switch self.strategy {
            case .default: return self.toInt16(key: key, value: value)
            case .custom(let delegate): return delegate.toInt16(key: key, value: value)
            }
        } else if let `value`: UInt64 = value as? UInt64 {
            switch self.strategy {
            case .default: return self.toInt16(key: key, value: value)
            case .custom(let delegate): return delegate.toInt16(key: key, value: value)
            }
        } else if let `value`: Float = value as? Float {
            switch self.strategy {
            case .default: return self.toInt16(key: key, value: value)
            case .custom(let delegate): return delegate.toInt16(key: key, value: value)
            }
        } else if let `value`: Double = value as? Double {
            switch self.strategy {
            case .default: return self.toInt16(key: key, value: value)
            case .custom(let delegate): return delegate.toInt16(key: key, value: value)
            }
        } else if let `value`: String = value as? String {
            switch self.strategy {
            case .default: return self.toInt16(key: key, value: value)
            case .custom(let delegate): return delegate.toInt16(key: key, value: value)
            }
        } else {
            return 0
        }
    }
    
    func decodeIfPresent<K>(value: inout Any, type: Int16.Type, forKey key: K) throws -> Int16? where K: CodingKey {
        self.decoder.codingPath.append(key)
        self.decoder.storage.push(value)
        defer {
            self.decoder.codingPath.removeLast()
            self.decoder.storage.pop()
        }
        
        if let `value`: Int16 = value as? Int16 {
            return value
        } else if let `value`: Bool = value as? Bool {
            switch self.strategy {
            case .default: return self.toInt16(key: key, value: value)
            case .custom(let delegate): return delegate.toInt16(key: key, value: value)
            }
        } else if let `value`: Int = value as? Int {
            switch self.strategy {
            case .default: return self.toInt16(key: key, value: value)
            case .custom(let delegate): return delegate.toInt16(key: key, value: value)
            }
        } else if let `value`: Int8 = value as? Int8 {
            switch self.strategy {
            case .default: return self.toInt16(key: key, value: value)
            case .custom(let delegate): return delegate.toInt16(key: key, value: value)
            }
        } else if let `value`: Int32 = value as? Int32 {
            switch self.strategy {
            case .default: return self.toInt16(key: key, value: value)
            case .custom(let delegate): return delegate.toInt16(key: key, value: value)
            }
        } else if let `value`: Int64 = value as? Int64 {
            switch self.strategy {
            case .default: return self.toInt16(key: key, value: value)
            case .custom(let delegate): return delegate.toInt16(key: key, value: value)
            }
        } else if let `value`: UInt = value as? UInt {
            switch self.strategy {
            case .default: return self.toInt16(key: key, value: value)
            case .custom(let delegate): return delegate.toInt16(key: key, value: value)
            }
        } else if let `value`: UInt8 = value as? UInt8 {
            switch self.strategy {
            case .default: return self.toInt16(key: key, value: value)
            case .custom(let delegate): return delegate.toInt16(key: key, value: value)
            }
        } else if let `value`: UInt16 = value as? UInt16 {
            switch self.strategy {
            case .default: return self.toInt16(key: key, value: value)
            case .custom(let delegate): return delegate.toInt16(key: key, value: value)
            }
        } else if let `value`: UInt32 = value as? UInt32 {
            switch self.strategy {
            case .default: return self.toInt16(key: key, value: value)
            case .custom(let delegate): return delegate.toInt16(key: key, value: value)
            }
        } else if let `value`: UInt64 = value as? UInt64 {
            switch self.strategy {
            case .default: return self.toInt16(key: key, value: value)
            case .custom(let delegate): return delegate.toInt16(key: key, value: value)
            }
        } else if let `value`: Float = value as? Float {
            switch self.strategy {
            case .default: return self.toInt16(key: key, value: value)
            case .custom(let delegate): return delegate.toInt16(key: key, value: value)
            }
        } else if let `value`: Double = value as? Double {
            switch self.strategy {
            case .default: return self.toInt16(key: key, value: value)
            case .custom(let delegate): return delegate.toInt16(key: key, value: value)
            }
        } else if let `value`: String = value as? String {
            switch self.strategy {
            case .default: return self.toInt16(key: key, value: value)
            case .custom(let delegate): return delegate.toInt16(key: key, value: value)
            }
        } else {
            return nil
        }
    }
}

// MARK: - 处理Int32和Int32?类型
extension NIOKeyed {
    func decode<K>(value: inout Any, type: Int32.Type, forKey key: K) throws -> Int32 where K: CodingKey {
        self.decoder.codingPath.append(key)
        self.decoder.storage.push(value)
        defer {
            self.decoder.codingPath.removeLast()
            self.decoder.storage.pop()
        }
        
        if let `value`: Int32 = value as? Int32 {
            return value
        } else if let `value`: Bool = value as? Bool {
            switch self.strategy {
            case .default: return self.toInt32(key: key, value: value)
            case .custom(let delegate): return delegate.toInt32(key: key, value: value)
            }
        } else if let `value`: Int = value as? Int {
            switch self.strategy {
            case .default: return self.toInt32(key: key, value: value)
            case .custom(let delegate): return delegate.toInt32(key: key, value: value)
            }
        } else if let `value`: Int8 = value as? Int8 {
            switch self.strategy {
            case .default: return self.toInt32(key: key, value: value)
            case .custom(let delegate): return delegate.toInt32(key: key, value: value)
            }
        } else if let `value`: Int16 = value as? Int16 {
            switch self.strategy {
            case .default: return self.toInt32(key: key, value: value)
            case .custom(let delegate): return delegate.toInt32(key: key, value: value)
            }
        } else if let `value`: Int64 = value as? Int64 {
            switch self.strategy {
            case .default: return self.toInt32(key: key, value: value)
            case .custom(let delegate): return delegate.toInt32(key: key, value: value)
            }
        } else if let `value`: UInt = value as? UInt {
            switch self.strategy {
            case .default: return self.toInt32(key: key, value: value)
            case .custom(let delegate): return delegate.toInt32(key: key, value: value)
            }
        } else if let `value`: UInt8 = value as? UInt8 {
            switch self.strategy {
            case .default: return self.toInt32(key: key, value: value)
            case .custom(let delegate): return delegate.toInt32(key: key, value: value)
            }
        } else if let `value`: UInt16 = value as? UInt16 {
            switch self.strategy {
            case .default: return self.toInt32(key: key, value: value)
            case .custom(let delegate): return delegate.toInt32(key: key, value: value)
            }
        } else if let `value`: UInt32 = value as? UInt32 {
            switch self.strategy {
            case .default: return self.toInt32(key: key, value: value)
            case .custom(let delegate): return delegate.toInt32(key: key, value: value)
            }
        } else if let `value`: UInt64 = value as? UInt64 {
            switch self.strategy {
            case .default: return self.toInt32(key: key, value: value)
            case .custom(let delegate): return delegate.toInt32(key: key, value: value)
            }
        } else if let `value`: Float = value as? Float {
            switch self.strategy {
            case .default: return self.toInt32(key: key, value: value)
            case .custom(let delegate): return delegate.toInt32(key: key, value: value)
            }
        } else if let `value`: Double = value as? Double {
            switch self.strategy {
            case .default: return self.toInt32(key: key, value: value)
            case .custom(let delegate): return delegate.toInt32(key: key, value: value)
            }
        } else if let `value`: String = value as? String {
            switch self.strategy {
            case .default: return self.toInt32(key: key, value: value)
            case .custom(let delegate): return delegate.toInt32(key: key, value: value)
            }
        } else {
            return 0
        }
    }
    
    func decodeIfPresent<K>(value: inout Any, type: Int32.Type, forKey key: K) throws -> Int32? where K: CodingKey {
        self.decoder.codingPath.append(key)
        self.decoder.storage.push(value)
        defer {
            self.decoder.codingPath.removeLast()
            self.decoder.storage.pop()
        }
        
        if let `value`: Int32 = value as? Int32 {
            return value
        } else if let `value`: Bool = value as? Bool {
            switch self.strategy {
            case .default: return self.toInt32(key: key, value: value)
            case .custom(let delegate): return delegate.toInt32(key: key, value: value)
            }
        } else if let `value`: Int = value as? Int {
            switch self.strategy {
            case .default: return self.toInt32(key: key, value: value)
            case .custom(let delegate): return delegate.toInt32(key: key, value: value)
            }
        } else if let `value`: Int8 = value as? Int8 {
            switch self.strategy {
            case .default: return self.toInt32(key: key, value: value)
            case .custom(let delegate): return delegate.toInt32(key: key, value: value)
            }
        } else if let `value`: Int16 = value as? Int16 {
            switch self.strategy {
            case .default: return self.toInt32(key: key, value: value)
            case .custom(let delegate): return delegate.toInt32(key: key, value: value)
            }
        } else if let `value`: Int64 = value as? Int64 {
            switch self.strategy {
            case .default: return self.toInt32(key: key, value: value)
            case .custom(let delegate): return delegate.toInt32(key: key, value: value)
            }
        } else if let `value`: UInt = value as? UInt {
            switch self.strategy {
            case .default: return self.toInt32(key: key, value: value)
            case .custom(let delegate): return delegate.toInt32(key: key, value: value)
            }
        } else if let `value`: UInt8 = value as? UInt8 {
            switch self.strategy {
            case .default: return self.toInt32(key: key, value: value)
            case .custom(let delegate): return delegate.toInt32(key: key, value: value)
            }
        } else if let `value`: UInt16 = value as? UInt16 {
            switch self.strategy {
            case .default: return self.toInt32(key: key, value: value)
            case .custom(let delegate): return delegate.toInt32(key: key, value: value)
            }
        } else if let `value`: UInt32 = value as? UInt32 {
            switch self.strategy {
            case .default: return self.toInt32(key: key, value: value)
            case .custom(let delegate): return delegate.toInt32(key: key, value: value)
            }
        } else if let `value`: UInt64 = value as? UInt64 {
            switch self.strategy {
            case .default: return self.toInt32(key: key, value: value)
            case .custom(let delegate): return delegate.toInt32(key: key, value: value)
            }
        } else if let `value`: Float = value as? Float {
            switch self.strategy {
            case .default: return self.toInt32(key: key, value: value)
            case .custom(let delegate): return delegate.toInt32(key: key, value: value)
            }
        } else if let `value`: Double = value as? Double {
            switch self.strategy {
            case .default: return self.toInt32(key: key, value: value)
            case .custom(let delegate): return delegate.toInt32(key: key, value: value)
            }
        } else if let `value`: String = value as? String {
            switch self.strategy {
            case .default: return self.toInt32(key: key, value: value)
            case .custom(let delegate): return delegate.toInt32(key: key, value: value)
            }
        } else {
            return nil
        }
    }
}

// MARK: - 处理Int64和Int64?类型
extension NIOKeyed {
    func decode<K>(value: inout Any, type: Int64.Type, forKey key: K) throws -> Int64 where K: CodingKey {
        self.decoder.codingPath.append(key)
        self.decoder.storage.push(value)
        defer {
            self.decoder.codingPath.removeLast()
            self.decoder.storage.pop()
        }
        
        if let `value`: Int64 = value as? Int64 {
            return value
        } else if let `value`: Bool = value as? Bool {
            switch self.strategy {
            case .default: return self.toInt64(key: key, value: value)
            case .custom(let delegate): return delegate.toInt64(key: key, value: value)
            }
        } else if let `value`: Int = value as? Int {
            switch self.strategy {
            case .default: return self.toInt64(key: key, value: value)
            case .custom(let delegate): return delegate.toInt64(key: key, value: value)
            }
        } else if let `value`: Int8 = value as? Int8 {
            switch self.strategy {
            case .default: return self.toInt64(key: key, value: value)
            case .custom(let delegate): return delegate.toInt64(key: key, value: value)
            }
        } else if let `value`: Int16 = value as? Int16 {
            switch self.strategy {
            case .default: return self.toInt64(key: key, value: value)
            case .custom(let delegate): return delegate.toInt64(key: key, value: value)
            }
        } else if let `value`: Int32 = value as? Int32 {
            switch self.strategy {
            case .default: return self.toInt64(key: key, value: value)
            case .custom(let delegate): return delegate.toInt64(key: key, value: value)
            }
        } else if let `value`: UInt = value as? UInt {
            switch self.strategy {
            case .default: return self.toInt64(key: key, value: value)
            case .custom(let delegate): return delegate.toInt64(key: key, value: value)
            }
        } else if let `value`: UInt8 = value as? UInt8 {
            switch self.strategy {
            case .default: return self.toInt64(key: key, value: value)
            case .custom(let delegate): return delegate.toInt64(key: key, value: value)
            }
        } else if let `value`: UInt16 = value as? UInt16 {
            switch self.strategy {
            case .default: return self.toInt64(key: key, value: value)
            case .custom(let delegate): return delegate.toInt64(key: key, value: value)
            }
        } else if let `value`: UInt32 = value as? UInt32 {
            switch self.strategy {
            case .default: return self.toInt64(key: key, value: value)
            case .custom(let delegate): return delegate.toInt64(key: key, value: value)
            }
        } else if let `value`: UInt64 = value as? UInt64 {
            switch self.strategy {
            case .default: return self.toInt64(key: key, value: value)
            case .custom(let delegate): return delegate.toInt64(key: key, value: value)
            }
        } else if let `value`: Float = value as? Float {
            switch self.strategy {
            case .default: return self.toInt64(key: key, value: value)
            case .custom(let delegate): return delegate.toInt64(key: key, value: value)
            }
        } else if let `value`: Double = value as? Double {
            switch self.strategy {
            case .default: return self.toInt64(key: key, value: value)
            case .custom(let delegate): return delegate.toInt64(key: key, value: value)
            }
        } else if let `value`: String = value as? String {
            switch self.strategy {
            case .default: return self.toInt64(key: key, value: value)
            case .custom(let delegate): return delegate.toInt64(key: key, value: value)
            }
        } else {
            return 0
        }
    }
    
    func decodeIfPresent<K>(value: inout Any, type: Int64.Type, forKey key: K) throws -> Int64? where K: CodingKey {
        self.decoder.codingPath.append(key)
        self.decoder.storage.push(value)
        defer {
            self.decoder.codingPath.removeLast()
            self.decoder.storage.pop()
        }
        
        if let `value`: Int64 = value as? Int64 {
            return value
        } else if let `value`: Bool = value as? Bool {
            switch self.strategy {
            case .default: return self.toInt64(key: key, value: value)
            case .custom(let delegate): return delegate.toInt64(key: key, value: value)
            }
        } else if let `value`: Int = value as? Int {
            switch self.strategy {
            case .default: return self.toInt64(key: key, value: value)
            case .custom(let delegate): return delegate.toInt64(key: key, value: value)
            }
        } else if let `value`: Int8 = value as? Int8 {
            switch self.strategy {
            case .default: return self.toInt64(key: key, value: value)
            case .custom(let delegate): return delegate.toInt64(key: key, value: value)
            }
        } else if let `value`: Int16 = value as? Int16 {
            switch self.strategy {
            case .default: return self.toInt64(key: key, value: value)
            case .custom(let delegate): return delegate.toInt64(key: key, value: value)
            }
        } else if let `value`: Int32 = value as? Int32 {
            switch self.strategy {
            case .default: return self.toInt64(key: key, value: value)
            case .custom(let delegate): return delegate.toInt64(key: key, value: value)
            }
        } else if let `value`: UInt = value as? UInt {
            switch self.strategy {
            case .default: return self.toInt64(key: key, value: value)
            case .custom(let delegate): return delegate.toInt64(key: key, value: value)
            }
        } else if let `value`: UInt8 = value as? UInt8 {
            switch self.strategy {
            case .default: return self.toInt64(key: key, value: value)
            case .custom(let delegate): return delegate.toInt64(key: key, value: value)
            }
        } else if let `value`: UInt16 = value as? UInt16 {
            switch self.strategy {
            case .default: return self.toInt64(key: key, value: value)
            case .custom(let delegate): return delegate.toInt64(key: key, value: value)
            }
        } else if let `value`: UInt32 = value as? UInt32 {
            switch self.strategy {
            case .default: return self.toInt64(key: key, value: value)
            case .custom(let delegate): return delegate.toInt64(key: key, value: value)
            }
        } else if let `value`: UInt64 = value as? UInt64 {
            switch self.strategy {
            case .default: return self.toInt64(key: key, value: value)
            case .custom(let delegate): return delegate.toInt64(key: key, value: value)
            }
        } else if let `value`: Float = value as? Float {
            switch self.strategy {
            case .default: return self.toInt64(key: key, value: value)
            case .custom(let delegate): return delegate.toInt64(key: key, value: value)
            }
        } else if let `value`: Double = value as? Double {
            switch self.strategy {
            case .default: return self.toInt64(key: key, value: value)
            case .custom(let delegate): return delegate.toInt64(key: key, value: value)
            }
        } else if let `value`: String = value as? String {
            switch self.strategy {
            case .default: return self.toInt64(key: key, value: value)
            case .custom(let delegate): return delegate.toInt64(key: key, value: value)
            }
        } else {
            return nil
        }
    }
}

// MARK: - 处理UInt和UInt?类型
extension NIOKeyed {
    func decode<K>(value: inout Any, type: UInt.Type, forKey key: K) throws -> UInt where K: CodingKey {
        self.decoder.codingPath.append(key)
        self.decoder.storage.push(value)
        defer {
            self.decoder.codingPath.removeLast()
            self.decoder.storage.pop()
        }
        
        if let `value`: UInt = value as? UInt {
            return value
        } else if let `value`: Bool = value as? Bool {
            switch self.strategy {
            case .default: return self.toUInt(key: key, value: value)
            case .custom(let delegate): return delegate.toUInt(key: key, value: value)
            }
        } else if let `value`: Int = value as? Int {
            switch self.strategy {
            case .default: return self.toUInt(key: key, value: value)
            case .custom(let delegate): return delegate.toUInt(key: key, value: value)
            }
        } else if let `value`: Int8 = value as? Int8 {
            switch self.strategy {
            case .default: return self.toUInt(key: key, value: value)
            case .custom(let delegate): return delegate.toUInt(key: key, value: value)
            }
        } else if let `value`: Int16 = value as? Int16 {
            switch self.strategy {
            case .default: return self.toUInt(key: key, value: value)
            case .custom(let delegate): return delegate.toUInt(key: key, value: value)
            }
        } else if let `value`: Int32 = value as? Int32 {
            switch self.strategy {
            case .default: return self.toUInt(key: key, value: value)
            case .custom(let delegate): return delegate.toUInt(key: key, value: value)
            }
        } else if let `value`: Int64 = value as? Int64 {
            switch self.strategy {
            case .default: return self.toUInt(key: key, value: value)
            case .custom(let delegate): return delegate.toUInt(key: key, value: value)
            }
        } else if let `value`: UInt8 = value as? UInt8 {
            switch self.strategy {
            case .default: return self.toUInt(key: key, value: value)
            case .custom(let delegate): return delegate.toUInt(key: key, value: value)
            }
        } else if let `value`: UInt16 = value as? UInt16 {
            switch self.strategy {
            case .default: return self.toUInt(key: key, value: value)
            case .custom(let delegate): return delegate.toUInt(key: key, value: value)
            }
        } else if let `value`: UInt32 = value as? UInt32 {
            switch self.strategy {
            case .default: return self.toUInt(key: key, value: value)
            case .custom(let delegate): return delegate.toUInt(key: key, value: value)
            }
        } else if let `value`: UInt64 = value as? UInt64 {
            switch self.strategy {
            case .default: return self.toUInt(key: key, value: value)
            case .custom(let delegate): return delegate.toUInt(key: key, value: value)
            }
        } else if let `value`: Float = value as? Float {
            switch self.strategy {
            case .default: return self.toUInt(key: key, value: value)
            case .custom(let delegate): return delegate.toUInt(key: key, value: value)
            }
        } else if let `value`: Double = value as? Double {
            switch self.strategy {
            case .default: return self.toUInt(key: key, value: value)
            case .custom(let delegate): return delegate.toUInt(key: key, value: value)
            }
        } else if let `value`: String = value as? String {
            switch self.strategy {
            case .default: return self.toUInt(key: key, value: value)
            case .custom(let delegate): return delegate.toUInt(key: key, value: value)
            }
        } else {
            return 0
        }
    }
    
    func decodeIfPresent<K>(value: inout Any, type: UInt.Type, forKey key: K) throws -> UInt? where K: CodingKey {
        self.decoder.codingPath.append(key)
        self.decoder.storage.push(value)
        defer {
            self.decoder.codingPath.removeLast()
            self.decoder.storage.pop()
        }
        
        if let `value`: UInt = value as? UInt {
            return value
        } else if let `value`: Bool = value as? Bool {
            switch self.strategy {
            case .default: return self.toUInt(key: key, value: value)
            case .custom(let delegate): return delegate.toUInt(key: key, value: value)
            }
        } else if let `value`: Int = value as? Int {
            switch self.strategy {
            case .default: return self.toUInt(key: key, value: value)
            case .custom(let delegate): return delegate.toUInt(key: key, value: value)
            }
        } else if let `value`: Int8 = value as? Int8 {
            switch self.strategy {
            case .default: return self.toUInt(key: key, value: value)
            case .custom(let delegate): return delegate.toUInt(key: key, value: value)
            }
        } else if let `value`: Int16 = value as? Int16 {
            switch self.strategy {
            case .default: return self.toUInt(key: key, value: value)
            case .custom(let delegate): return delegate.toUInt(key: key, value: value)
            }
        } else if let `value`: Int32 = value as? Int32 {
            switch self.strategy {
            case .default: return self.toUInt(key: key, value: value)
            case .custom(let delegate): return delegate.toUInt(key: key, value: value)
            }
        } else if let `value`: Int64 = value as? Int64 {
            switch self.strategy {
            case .default: return self.toUInt(key: key, value: value)
            case .custom(let delegate): return delegate.toUInt(key: key, value: value)
            }
        } else if let `value`: UInt8 = value as? UInt8 {
            switch self.strategy {
            case .default: return self.toUInt(key: key, value: value)
            case .custom(let delegate): return delegate.toUInt(key: key, value: value)
            }
        } else if let `value`: UInt16 = value as? UInt16 {
            switch self.strategy {
            case .default: return self.toUInt(key: key, value: value)
            case .custom(let delegate): return delegate.toUInt(key: key, value: value)
            }
        } else if let `value`: UInt32 = value as? UInt32 {
            switch self.strategy {
            case .default: return self.toUInt(key: key, value: value)
            case .custom(let delegate): return delegate.toUInt(key: key, value: value)
            }
        } else if let `value`: UInt64 = value as? UInt64 {
            switch self.strategy {
            case .default: return self.toUInt(key: key, value: value)
            case .custom(let delegate): return delegate.toUInt(key: key, value: value)
            }
        } else if let `value`: Float = value as? Float {
            switch self.strategy {
            case .default: return self.toUInt(key: key, value: value)
            case .custom(let delegate): return delegate.toUInt(key: key, value: value)
            }
        } else if let `value`: Double = value as? Double {
            switch self.strategy {
            case .default: return self.toUInt(key: key, value: value)
            case .custom(let delegate): return delegate.toUInt(key: key, value: value)
            }
        } else if let `value`: String = value as? String {
            switch self.strategy {
            case .default: return self.toUInt(key: key, value: value)
            case .custom(let delegate): return delegate.toUInt(key: key, value: value)
            }
        } else {
            return nil
        }
    }
}

// MARK: - 处理UInt8和UInt8?类型
extension NIOKeyed {
    func decode<K>(value: inout Any, type: UInt8.Type, forKey key: K) throws -> UInt8 where K: CodingKey {
        self.decoder.codingPath.append(key)
        self.decoder.storage.push(value)
        defer {
            self.decoder.codingPath.removeLast()
            self.decoder.storage.pop()
        }
        
        if let `value`: UInt8 = value as? UInt8 {
            return value
        } else if let `value`: Bool = value as? Bool {
            switch self.strategy {
            case .default: return self.toUInt8(key: key, value: value)
            case .custom(let delegate): return delegate.toUInt8(key: key, value: value)
            }
        } else if let `value`: Int = value as? Int {
            switch self.strategy {
            case .default: return self.toUInt8(key: key, value: value)
            case .custom(let delegate): return delegate.toUInt8(key: key, value: value)
            }
        } else if let `value`: Int8 = value as? Int8 {
            switch self.strategy {
            case .default: return self.toUInt8(key: key, value: value)
            case .custom(let delegate): return delegate.toUInt8(key: key, value: value)
            }
        } else if let `value`: Int16 = value as? Int16 {
            switch self.strategy {
            case .default: return self.toUInt8(key: key, value: value)
            case .custom(let delegate): return delegate.toUInt8(key: key, value: value)
            }
        } else if let `value`: Int32 = value as? Int32 {
            switch self.strategy {
            case .default: return self.toUInt8(key: key, value: value)
            case .custom(let delegate): return delegate.toUInt8(key: key, value: value)
            }
        } else if let `value`: Int64 = value as? Int64 {
            switch self.strategy {
            case .default: return self.toUInt8(key: key, value: value)
            case .custom(let delegate): return delegate.toUInt8(key: key, value: value)
            }
        } else if let `value`: UInt = value as? UInt {
            switch self.strategy {
            case .default: return self.toUInt8(key: key, value: value)
            case .custom(let delegate): return delegate.toUInt8(key: key, value: value)
            }
        } else if let `value`: UInt16 = value as? UInt16 {
            switch self.strategy {
            case .default: return self.toUInt8(key: key, value: value)
            case .custom(let delegate): return delegate.toUInt8(key: key, value: value)
            }
        } else if let `value`: UInt32 = value as? UInt32 {
            switch self.strategy {
            case .default: return self.toUInt8(key: key, value: value)
            case .custom(let delegate): return delegate.toUInt8(key: key, value: value)
            }
        } else if let `value`: UInt64 = value as? UInt64 {
            switch self.strategy {
            case .default: return self.toUInt8(key: key, value: value)
            case .custom(let delegate): return delegate.toUInt8(key: key, value: value)
            }
        } else if let `value`: Float = value as? Float {
            switch self.strategy {
            case .default: return self.toUInt8(key: key, value: value)
            case .custom(let delegate): return delegate.toUInt8(key: key, value: value)
            }
        } else if let `value`: Double = value as? Double {
            switch self.strategy {
            case .default: return self.toUInt8(key: key, value: value)
            case .custom(let delegate): return delegate.toUInt8(key: key, value: value)
            }
        } else if let `value`: String = value as? String {
            switch self.strategy {
            case .default: return self.toUInt8(key: key, value: value)
            case .custom(let delegate): return delegate.toUInt8(key: key, value: value)
            }
        } else {
            return 0
        }
    }
    
    func decodeIfPresent<K>(value: inout Any, type: UInt8.Type, forKey key: K) throws -> UInt8? where K: CodingKey {
        self.decoder.codingPath.append(key)
        self.decoder.storage.push(value)
        defer {
            self.decoder.codingPath.removeLast()
            self.decoder.storage.pop()
        }
        
        if let `value`: UInt8 = value as? UInt8 {
            return value
        } else if let `value`: Bool = value as? Bool {
            switch self.strategy {
            case .default: return self.toUInt8(key: key, value: value)
            case .custom(let delegate): return delegate.toUInt8(key: key, value: value)
            }
        } else if let `value`: Int = value as? Int {
            switch self.strategy {
            case .default: return self.toUInt8(key: key, value: value)
            case .custom(let delegate): return delegate.toUInt8(key: key, value: value)
            }
        } else if let `value`: Int8 = value as? Int8 {
            switch self.strategy {
            case .default: return self.toUInt8(key: key, value: value)
            case .custom(let delegate): return delegate.toUInt8(key: key, value: value)
            }
        } else if let `value`: Int16 = value as? Int16 {
            switch self.strategy {
            case .default: return self.toUInt8(key: key, value: value)
            case .custom(let delegate): return delegate.toUInt8(key: key, value: value)
            }
        } else if let `value`: Int32 = value as? Int32 {
            switch self.strategy {
            case .default: return self.toUInt8(key: key, value: value)
            case .custom(let delegate): return delegate.toUInt8(key: key, value: value)
            }
        } else if let `value`: Int64 = value as? Int64 {
            switch self.strategy {
            case .default: return self.toUInt8(key: key, value: value)
            case .custom(let delegate): return delegate.toUInt8(key: key, value: value)
            }
        } else if let `value`: UInt = value as? UInt {
            switch self.strategy {
            case .default: return self.toUInt8(key: key, value: value)
            case .custom(let delegate): return delegate.toUInt8(key: key, value: value)
            }
        } else if let `value`: UInt16 = value as? UInt16 {
            switch self.strategy {
            case .default: return self.toUInt8(key: key, value: value)
            case .custom(let delegate): return delegate.toUInt8(key: key, value: value)
            }
        } else if let `value`: UInt32 = value as? UInt32 {
            switch self.strategy {
            case .default: return self.toUInt8(key: key, value: value)
            case .custom(let delegate): return delegate.toUInt8(key: key, value: value)
            }
        } else if let `value`: UInt64 = value as? UInt64 {
            switch self.strategy {
            case .default: return self.toUInt8(key: key, value: value)
            case .custom(let delegate): return delegate.toUInt8(key: key, value: value)
            }
        } else if let `value`: Float = value as? Float {
            switch self.strategy {
            case .default: return self.toUInt8(key: key, value: value)
            case .custom(let delegate): return delegate.toUInt8(key: key, value: value)
            }
        } else if let `value`: Double = value as? Double {
            switch self.strategy {
            case .default: return self.toUInt8(key: key, value: value)
            case .custom(let delegate): return delegate.toUInt8(key: key, value: value)
            }
        } else if let `value`: String = value as? String {
            switch self.strategy {
            case .default: return self.toUInt8(key: key, value: value)
            case .custom(let delegate): return delegate.toUInt8(key: key, value: value)
            }
        } else {
            return nil
        }
    }
}

// MARK: - 处理UInt16和UInt16?类型
extension NIOKeyed {
    func decode<K>(value: inout Any, type: UInt16.Type, forKey key: K) throws -> UInt16 where K: CodingKey {
        self.decoder.codingPath.append(key)
        self.decoder.storage.push(value)
        defer {
            self.decoder.codingPath.removeLast()
            self.decoder.storage.pop()
        }
        
        if let `value`: UInt16 = value as? UInt16 {
            return value
        } else if let `value`: Bool = value as? Bool {
            switch self.strategy {
            case .default: return self.toUInt16(key: key, value: value)
            case .custom(let delegate): return delegate.toUInt16(key: key, value: value)
            }
        } else if let `value`: Int = value as? Int {
            switch self.strategy {
            case .default: return self.toUInt16(key: key, value: value)
            case .custom(let delegate): return delegate.toUInt16(key: key, value: value)
            }
        } else if let `value`: Int8 = value as? Int8 {
            switch self.strategy {
            case .default: return self.toUInt16(key: key, value: value)
            case .custom(let delegate): return delegate.toUInt16(key: key, value: value)
            }
        } else if let `value`: Int16 = value as? Int16 {
            switch self.strategy {
            case .default: return self.toUInt16(key: key, value: value)
            case .custom(let delegate): return delegate.toUInt16(key: key, value: value)
            }
        } else if let `value`: Int32 = value as? Int32 {
            switch self.strategy {
            case .default: return self.toUInt16(key: key, value: value)
            case .custom(let delegate): return delegate.toUInt16(key: key, value: value)
            }
        } else if let `value`: Int64 = value as? Int64 {
            switch self.strategy {
            case .default: return self.toUInt16(key: key, value: value)
            case .custom(let delegate): return delegate.toUInt16(key: key, value: value)
            }
        } else if let `value`: UInt = value as? UInt {
            switch self.strategy {
            case .default: return self.toUInt16(key: key, value: value)
            case .custom(let delegate): return delegate.toUInt16(key: key, value: value)
            }
        } else if let `value`: UInt8 = value as? UInt8 {
            switch self.strategy {
            case .default: return self.toUInt16(key: key, value: value)
            case .custom(let delegate): return delegate.toUInt16(key: key, value: value)
            }
        } else if let `value`: UInt32 = value as? UInt32 {
            switch self.strategy {
            case .default: return self.toUInt16(key: key, value: value)
            case .custom(let delegate): return delegate.toUInt16(key: key, value: value)
            }
        } else if let `value`: UInt64 = value as? UInt64 {
            switch self.strategy {
            case .default: return self.toUInt16(key: key, value: value)
            case .custom(let delegate): return delegate.toUInt16(key: key, value: value)
            }
        } else if let `value`: Float = value as? Float {
            switch self.strategy {
            case .default: return self.toUInt16(key: key, value: value)
            case .custom(let delegate): return delegate.toUInt16(key: key, value: value)
            }
        } else if let `value`: Double = value as? Double {
            switch self.strategy {
            case .default: return self.toUInt16(key: key, value: value)
            case .custom(let delegate): return delegate.toUInt16(key: key, value: value)
            }
        } else if let `value`: String = value as? String {
            switch self.strategy {
            case .default: return self.toUInt16(key: key, value: value)
            case .custom(let delegate): return delegate.toUInt16(key: key, value: value)
            }
        } else {
            return 0
        }
    }
    
    func decodeIfPresent<K>(value: inout Any, type: UInt16.Type, forKey key: K) throws -> UInt16? where K: CodingKey {
        self.decoder.codingPath.append(key)
        self.decoder.storage.push(value)
        defer {
            self.decoder.codingPath.removeLast()
            self.decoder.storage.pop()
        }
        
        if let `value`: UInt16 = value as? UInt16 {
            return value
        } else if let `value`: Bool = value as? Bool {
            switch self.strategy {
            case .default: return self.toUInt16(key: key, value: value)
            case .custom(let delegate): return delegate.toUInt16(key: key, value: value)
            }
        } else if let `value`: Int = value as? Int {
            switch self.strategy {
            case .default: return self.toUInt16(key: key, value: value)
            case .custom(let delegate): return delegate.toUInt16(key: key, value: value)
            }
        } else if let `value`: Int8 = value as? Int8 {
            switch self.strategy {
            case .default: return self.toUInt16(key: key, value: value)
            case .custom(let delegate): return delegate.toUInt16(key: key, value: value)
            }
        } else if let `value`: Int16 = value as? Int16 {
            switch self.strategy {
            case .default: return self.toUInt16(key: key, value: value)
            case .custom(let delegate): return delegate.toUInt16(key: key, value: value)
            }
        } else if let `value`: Int32 = value as? Int32 {
            switch self.strategy {
            case .default: return self.toUInt16(key: key, value: value)
            case .custom(let delegate): return delegate.toUInt16(key: key, value: value)
            }
        } else if let `value`: Int64 = value as? Int64 {
            switch self.strategy {
            case .default: return self.toUInt16(key: key, value: value)
            case .custom(let delegate): return delegate.toUInt16(key: key, value: value)
            }
        } else if let `value`: UInt = value as? UInt {
            switch self.strategy {
            case .default: return self.toUInt16(key: key, value: value)
            case .custom(let delegate): return delegate.toUInt16(key: key, value: value)
            }
        } else if let `value`: UInt8 = value as? UInt8 {
            switch self.strategy {
            case .default: return self.toUInt16(key: key, value: value)
            case .custom(let delegate): return delegate.toUInt16(key: key, value: value)
            }
        } else if let `value`: UInt32 = value as? UInt32 {
            switch self.strategy {
            case .default: return self.toUInt16(key: key, value: value)
            case .custom(let delegate): return delegate.toUInt16(key: key, value: value)
            }
        } else if let `value`: UInt64 = value as? UInt64 {
            switch self.strategy {
            case .default: return self.toUInt16(key: key, value: value)
            case .custom(let delegate): return delegate.toUInt16(key: key, value: value)
            }
        } else if let `value`: Float = value as? Float {
            switch self.strategy {
            case .default: return self.toUInt16(key: key, value: value)
            case .custom(let delegate): return delegate.toUInt16(key: key, value: value)
            }
        } else if let `value`: Double = value as? Double {
            switch self.strategy {
            case .default: return self.toUInt16(key: key, value: value)
            case .custom(let delegate): return delegate.toUInt16(key: key, value: value)
            }
        } else if let `value`: String = value as? String {
            switch self.strategy {
            case .default: return self.toUInt16(key: key, value: value)
            case .custom(let delegate): return delegate.toUInt16(key: key, value: value)
            }
        } else {
            return nil
        }
    }
}

// MARK: - 处理UInt32和UInt32?类型
extension NIOKeyed {
    func decode<K>(value: inout Any, type: UInt32.Type, forKey key: K) throws -> UInt32 where K: CodingKey {
        self.decoder.codingPath.append(key)
        self.decoder.storage.push(value)
        defer {
            self.decoder.codingPath.removeLast()
            self.decoder.storage.pop()
        }
        
        if let `value`: UInt32 = value as? UInt32 {
            return value
        } else if let `value`: Bool = value as? Bool {
            switch self.strategy {
            case .default: return self.toUInt32(key: key, value: value)
            case .custom(let delegate): return delegate.toUInt32(key: key, value: value)
            }
        } else if let `value`: Int = value as? Int {
            switch self.strategy {
            case .default: return self.toUInt32(key: key, value: value)
            case .custom(let delegate): return delegate.toUInt32(key: key, value: value)
            }
        } else if let `value`: Int8 = value as? Int8 {
            switch self.strategy {
            case .default: return self.toUInt32(key: key, value: value)
            case .custom(let delegate): return delegate.toUInt32(key: key, value: value)
            }
        } else if let `value`: Int16 = value as? Int16 {
            switch self.strategy {
            case .default: return self.toUInt32(key: key, value: value)
            case .custom(let delegate): return delegate.toUInt32(key: key, value: value)
            }
        } else if let `value`: Int32 = value as? Int32 {
            switch self.strategy {
            case .default: return self.toUInt32(key: key, value: value)
            case .custom(let delegate): return delegate.toUInt32(key: key, value: value)
            }
        } else if let `value`: Int64 = value as? Int64 {
            switch self.strategy {
            case .default: return self.toUInt32(key: key, value: value)
            case .custom(let delegate): return delegate.toUInt32(key: key, value: value)
            }
        } else if let `value`: UInt = value as? UInt {
            switch self.strategy {
            case .default: return self.toUInt32(key: key, value: value)
            case .custom(let delegate): return delegate.toUInt32(key: key, value: value)
            }
        } else if let `value`: UInt8 = value as? UInt8 {
            switch self.strategy {
            case .default: return self.toUInt32(key: key, value: value)
            case .custom(let delegate): return delegate.toUInt32(key: key, value: value)
            }
        } else if let `value`: UInt16 = value as? UInt16 {
            switch self.strategy {
            case .default: return self.toUInt32(key: key, value: value)
            case .custom(let delegate): return delegate.toUInt32(key: key, value: value)
            }
        } else if let `value`: UInt64 = value as? UInt64 {
            switch self.strategy {
            case .default: return self.toUInt32(key: key, value: value)
            case .custom(let delegate): return delegate.toUInt32(key: key, value: value)
            }
        } else if let `value`: Float = value as? Float {
            switch self.strategy {
            case .default: return self.toUInt32(key: key, value: value)
            case .custom(let delegate): return delegate.toUInt32(key: key, value: value)
            }
        } else if let `value`: Double = value as? Double {
            switch self.strategy {
            case .default: return self.toUInt32(key: key, value: value)
            case .custom(let delegate): return delegate.toUInt32(key: key, value: value)
            }
        } else if let `value`: String = value as? String {
            switch self.strategy {
            case .default: return self.toUInt32(key: key, value: value)
            case .custom(let delegate): return delegate.toUInt32(key: key, value: value)
            }
        } else {
            return 0
        }
    }
    
    func decodeIfPresent<K>(value: inout Any, type: UInt32.Type, forKey key: K) throws -> UInt32? where K: CodingKey {
        self.decoder.codingPath.append(key)
        self.decoder.storage.push(value)
        defer {
            self.decoder.codingPath.removeLast()
            self.decoder.storage.pop()
        }
        
        if let `value`: UInt32 = value as? UInt32 {
            return value
        } else if let `value`: Bool = value as? Bool {
            switch self.strategy {
            case .default: return self.toUInt32(key: key, value: value)
            case .custom(let delegate): return delegate.toUInt32(key: key, value: value)
            }
        } else if let `value`: Int = value as? Int {
            switch self.strategy {
            case .default: return self.toUInt32(key: key, value: value)
            case .custom(let delegate): return delegate.toUInt32(key: key, value: value)
            }
        } else if let `value`: Int8 = value as? Int8 {
            switch self.strategy {
            case .default: return self.toUInt32(key: key, value: value)
            case .custom(let delegate): return delegate.toUInt32(key: key, value: value)
            }
        } else if let `value`: Int16 = value as? Int16 {
            switch self.strategy {
            case .default: return self.toUInt32(key: key, value: value)
            case .custom(let delegate): return delegate.toUInt32(key: key, value: value)
            }
        } else if let `value`: Int32 = value as? Int32 {
            switch self.strategy {
            case .default: return self.toUInt32(key: key, value: value)
            case .custom(let delegate): return delegate.toUInt32(key: key, value: value)
            }
        } else if let `value`: Int64 = value as? Int64 {
            switch self.strategy {
            case .default: return self.toUInt32(key: key, value: value)
            case .custom(let delegate): return delegate.toUInt32(key: key, value: value)
            }
        } else if let `value`: UInt = value as? UInt {
            switch self.strategy {
            case .default: return self.toUInt32(key: key, value: value)
            case .custom(let delegate): return delegate.toUInt32(key: key, value: value)
            }
        } else if let `value`: UInt8 = value as? UInt8 {
            switch self.strategy {
            case .default: return self.toUInt32(key: key, value: value)
            case .custom(let delegate): return delegate.toUInt32(key: key, value: value)
            }
        } else if let `value`: UInt16 = value as? UInt16 {
            switch self.strategy {
            case .default: return self.toUInt32(key: key, value: value)
            case .custom(let delegate): return delegate.toUInt32(key: key, value: value)
            }
        } else if let `value`: UInt64 = value as? UInt64 {
            switch self.strategy {
            case .default: return self.toUInt32(key: key, value: value)
            case .custom(let delegate): return delegate.toUInt32(key: key, value: value)
            }
        } else if let `value`: Float = value as? Float {
            switch self.strategy {
            case .default: return self.toUInt32(key: key, value: value)
            case .custom(let delegate): return delegate.toUInt32(key: key, value: value)
            }
        } else if let `value`: Double = value as? Double {
            switch self.strategy {
            case .default: return self.toUInt32(key: key, value: value)
            case .custom(let delegate): return delegate.toUInt32(key: key, value: value)
            }
        } else if let `value`: String = value as? String {
            switch self.strategy {
            case .default: return self.toUInt32(key: key, value: value)
            case .custom(let delegate): return delegate.toUInt32(key: key, value: value)
            }
        } else {
            return nil
        }
    }
}

// MARK: - 处理UInt64和UInt64?类型
extension NIOKeyed {
    func decode<K>(value: inout Any, type: UInt64.Type, forKey key: K) throws -> UInt64 where K: CodingKey {
        self.decoder.codingPath.append(key)
        self.decoder.storage.push(value)
        defer {
            self.decoder.codingPath.removeLast()
            self.decoder.storage.pop()
        }
        
        if let `value`: UInt64 = value as? UInt64 {
            return value
        } else if let `value`: Bool = value as? Bool {
            switch self.strategy {
            case .default: return self.toUInt64(key: key, value: value)
            case .custom(let delegate): return delegate.toUInt64(key: key, value: value)
            }
        } else if let `value`: Int = value as? Int {
            switch self.strategy {
            case .default: return self.toUInt64(key: key, value: value)
            case .custom(let delegate): return delegate.toUInt64(key: key, value: value)
            }
        } else if let `value`: Int8 = value as? Int8 {
            switch self.strategy {
            case .default: return self.toUInt64(key: key, value: value)
            case .custom(let delegate): return delegate.toUInt64(key: key, value: value)
            }
        } else if let `value`: Int16 = value as? Int16 {
            switch self.strategy {
            case .default: return self.toUInt64(key: key, value: value)
            case .custom(let delegate): return delegate.toUInt64(key: key, value: value)
            }
        } else if let `value`: Int32 = value as? Int32 {
            switch self.strategy {
            case .default: return self.toUInt64(key: key, value: value)
            case .custom(let delegate): return delegate.toUInt64(key: key, value: value)
            }
        } else if let `value`: Int64 = value as? Int64 {
            switch self.strategy {
            case .default: return self.toUInt64(key: key, value: value)
            case .custom(let delegate): return delegate.toUInt64(key: key, value: value)
            }
        } else if let `value`: UInt = value as? UInt {
            switch self.strategy {
            case .default: return self.toUInt64(key: key, value: value)
            case .custom(let delegate): return delegate.toUInt64(key: key, value: value)
            }
        } else if let `value`: UInt8 = value as? UInt8 {
            switch self.strategy {
            case .default: return self.toUInt64(key: key, value: value)
            case .custom(let delegate): return delegate.toUInt64(key: key, value: value)
            }
        } else if let `value`: UInt16 = value as? UInt16 {
            switch self.strategy {
            case .default: return self.toUInt64(key: key, value: value)
            case .custom(let delegate): return delegate.toUInt64(key: key, value: value)
            }
        } else if let `value`: UInt32 = value as? UInt32 {
            switch self.strategy {
            case .default: return self.toUInt64(key: key, value: value)
            case .custom(let delegate): return delegate.toUInt64(key: key, value: value)
            }
        } else if let `value`: Float = value as? Float {
            switch self.strategy {
            case .default: return self.toUInt64(key: key, value: value)
            case .custom(let delegate): return delegate.toUInt64(key: key, value: value)
            }
        } else if let `value`: Double = value as? Double {
            switch self.strategy {
            case .default: return self.toUInt64(key: key, value: value)
            case .custom(let delegate): return delegate.toUInt64(key: key, value: value)
            }
        } else if let `value`: String = value as? String {
            switch self.strategy {
            case .default: return self.toUInt64(key: key, value: value)
            case .custom(let delegate): return delegate.toUInt64(key: key, value: value)
            }
        } else {
            return 0
        }
    }
    
    func decodeIfPresent<K>(value: inout Any, type: UInt64.Type, forKey key: K) throws -> UInt64? where K: CodingKey {
        self.decoder.codingPath.append(key)
        self.decoder.storage.push(value)
        defer {
            self.decoder.codingPath.removeLast()
            self.decoder.storage.pop()
        }
        
        if let `value`: UInt64 = value as? UInt64 {
            return value
        } else if let `value`: Bool = value as? Bool {
            switch self.strategy {
            case .default: return self.toUInt64(key: key, value: value)
            case .custom(let delegate): return delegate.toUInt64(key: key, value: value)
            }
        } else if let `value`: Int = value as? Int {
            switch self.strategy {
            case .default: return self.toUInt64(key: key, value: value)
            case .custom(let delegate): return delegate.toUInt64(key: key, value: value)
            }
        } else if let `value`: Int8 = value as? Int8 {
            switch self.strategy {
            case .default: return self.toUInt64(key: key, value: value)
            case .custom(let delegate): return delegate.toUInt64(key: key, value: value)
            }
        } else if let `value`: Int16 = value as? Int16 {
            switch self.strategy {
            case .default: return self.toUInt64(key: key, value: value)
            case .custom(let delegate): return delegate.toUInt64(key: key, value: value)
            }
        } else if let `value`: Int32 = value as? Int32 {
            switch self.strategy {
            case .default: return self.toUInt64(key: key, value: value)
            case .custom(let delegate): return delegate.toUInt64(key: key, value: value)
            }
        } else if let `value`: Int64 = value as? Int64 {
            switch self.strategy {
            case .default: return self.toUInt64(key: key, value: value)
            case .custom(let delegate): return delegate.toUInt64(key: key, value: value)
            }
        } else if let `value`: UInt = value as? UInt {
            switch self.strategy {
            case .default: return self.toUInt64(key: key, value: value)
            case .custom(let delegate): return delegate.toUInt64(key: key, value: value)
            }
        } else if let `value`: UInt8 = value as? UInt8 {
            switch self.strategy {
            case .default: return self.toUInt64(key: key, value: value)
            case .custom(let delegate): return delegate.toUInt64(key: key, value: value)
            }
        } else if let `value`: UInt16 = value as? UInt16 {
            switch self.strategy {
            case .default: return self.toUInt64(key: key, value: value)
            case .custom(let delegate): return delegate.toUInt64(key: key, value: value)
            }
        } else if let `value`: UInt32 = value as? UInt32 {
            switch self.strategy {
            case .default: return self.toUInt64(key: key, value: value)
            case .custom(let delegate): return delegate.toUInt64(key: key, value: value)
            }
        } else if let `value`: Float = value as? Float {
            switch self.strategy {
            case .default: return self.toUInt64(key: key, value: value)
            case .custom(let delegate): return delegate.toUInt64(key: key, value: value)
            }
        } else if let `value`: Double = value as? Double {
            switch self.strategy {
            case .default: return self.toUInt64(key: key, value: value)
            case .custom(let delegate): return delegate.toUInt64(key: key, value: value)
            }
        } else if let `value`: String = value as? String {
            switch self.strategy {
            case .default: return self.toUInt64(key: key, value: value)
            case .custom(let delegate): return delegate.toUInt64(key: key, value: value)
            }
        } else {
            return nil
        }
    }
}

// MARK: - 处理Float和Float?类型
extension NIOKeyed {
    func decode<K>(value: inout Any, type: Float.Type, forKey key: K) throws -> Float where K: CodingKey {
        self.decoder.codingPath.append(key)
        self.decoder.storage.push(value)
        defer {
            self.decoder.codingPath.removeLast()
            self.decoder.storage.pop()
        }
        
        if let `value`: Float = value as? Float {
            return value
        } else if let `value`: Bool = value as? Bool {
            switch self.strategy {
            case .default: return self.toFloat(key: key, value: value)
            case .custom(let delegate): return delegate.toFloat(key: key, value: value)
            }
        } else if let `value`: Int = value as? Int {
            switch self.strategy {
            case .default: return self.toFloat(key: key, value: value)
            case .custom(let delegate): return delegate.toFloat(key: key, value: value)
            }
        } else if let `value`: Int8 = value as? Int8 {
            switch self.strategy {
            case .default: return self.toFloat(key: key, value: value)
            case .custom(let delegate): return delegate.toFloat(key: key, value: value)
            }
        } else if let `value`: Int16 = value as? Int16 {
            switch self.strategy {
            case .default: return self.toFloat(key: key, value: value)
            case .custom(let delegate): return delegate.toFloat(key: key, value: value)
            }
        } else if let `value`: Int32 = value as? Int32 {
            switch self.strategy {
            case .default: return self.toFloat(key: key, value: value)
            case .custom(let delegate): return delegate.toFloat(key: key, value: value)
            }
        } else if let `value`: Int64 = value as? Int64 {
            switch self.strategy {
            case .default: return self.toFloat(key: key, value: value)
            case .custom(let delegate): return delegate.toFloat(key: key, value: value)
            }
        } else if let `value`: UInt = value as? UInt {
            switch self.strategy {
            case .default: return self.toFloat(key: key, value: value)
            case .custom(let delegate): return delegate.toFloat(key: key, value: value)
            }
        } else if let `value`: UInt8 = value as? UInt8 {
            switch self.strategy {
            case .default: return self.toFloat(key: key, value: value)
            case .custom(let delegate): return delegate.toFloat(key: key, value: value)
            }
        } else if let `value`: UInt16 = value as? UInt16 {
            switch self.strategy {
            case .default: return self.toFloat(key: key, value: value)
            case .custom(let delegate): return delegate.toFloat(key: key, value: value)
            }
        } else if let `value`: UInt32 = value as? UInt32 {
            switch self.strategy {
            case .default: return self.toFloat(key: key, value: value)
            case .custom(let delegate): return delegate.toFloat(key: key, value: value)
            }
        } else if let `value`: UInt64 = value as? UInt64 {
            switch self.strategy {
            case .default: return self.toFloat(key: key, value: value)
            case .custom(let delegate): return delegate.toFloat(key: key, value: value)
            }
        } else if let `value`: Double = value as? Double {
            switch self.strategy {
            case .default: return self.toFloat(key: key, value: value)
            case .custom(let delegate): return delegate.toFloat(key: key, value: value)
            }
        } else if let `value`: String = value as? String {
            switch self.strategy {
            case .default: return self.toFloat(key: key, value: value)
            case .custom(let delegate): return delegate.toFloat(key: key, value: value)
            }
        } else {
            return 0
        }
    }
    
    func decodeIfPresent<K>(value: inout Any, type: Float.Type, forKey key: K) throws -> Float? where K: CodingKey {
        self.decoder.codingPath.append(key)
        self.decoder.storage.push(value)
        defer {
            self.decoder.codingPath.removeLast()
            self.decoder.storage.pop()
        }
        
        if let `value`: Float = value as? Float {
            return value
        } else if let `value`: Bool = value as? Bool {
            switch self.strategy {
            case .default: return self.toFloat(key: key, value: value)
            case .custom(let delegate): return delegate.toFloat(key: key, value: value)
            }
        } else if let `value`: Int = value as? Int {
            switch self.strategy {
            case .default: return self.toFloat(key: key, value: value)
            case .custom(let delegate): return delegate.toFloat(key: key, value: value)
            }
        } else if let `value`: Int8 = value as? Int8 {
            switch self.strategy {
            case .default: return self.toFloat(key: key, value: value)
            case .custom(let delegate): return delegate.toFloat(key: key, value: value)
            }
        } else if let `value`: Int16 = value as? Int16 {
            switch self.strategy {
            case .default: return self.toFloat(key: key, value: value)
            case .custom(let delegate): return delegate.toFloat(key: key, value: value)
            }
        } else if let `value`: Int32 = value as? Int32 {
            switch self.strategy {
            case .default: return self.toFloat(key: key, value: value)
            case .custom(let delegate): return delegate.toFloat(key: key, value: value)
            }
        } else if let `value`: Int64 = value as? Int64 {
            switch self.strategy {
            case .default: return self.toFloat(key: key, value: value)
            case .custom(let delegate): return delegate.toFloat(key: key, value: value)
            }
        } else if let `value`: UInt = value as? UInt {
            switch self.strategy {
            case .default: return self.toFloat(key: key, value: value)
            case .custom(let delegate): return delegate.toFloat(key: key, value: value)
            }
        } else if let `value`: UInt8 = value as? UInt8 {
            switch self.strategy {
            case .default: return self.toFloat(key: key, value: value)
            case .custom(let delegate): return delegate.toFloat(key: key, value: value)
            }
        } else if let `value`: UInt16 = value as? UInt16 {
            switch self.strategy {
            case .default: return self.toFloat(key: key, value: value)
            case .custom(let delegate): return delegate.toFloat(key: key, value: value)
            }
        } else if let `value`: UInt32 = value as? UInt32 {
            switch self.strategy {
            case .default: return self.toFloat(key: key, value: value)
            case .custom(let delegate): return delegate.toFloat(key: key, value: value)
            }
        } else if let `value`: UInt64 = value as? UInt64 {
            switch self.strategy {
            case .default: return self.toFloat(key: key, value: value)
            case .custom(let delegate): return delegate.toFloat(key: key, value: value)
            }
        } else if let `value`: Double = value as? Double {
            switch self.strategy {
            case .default: return self.toFloat(key: key, value: value)
            case .custom(let delegate): return delegate.toFloat(key: key, value: value)
            }
        } else if let `value`: String = value as? String {
            switch self.strategy {
            case .default: return self.toFloat(key: key, value: value)
            case .custom(let delegate): return delegate.toFloat(key: key, value: value)
            }
        } else {
            return nil
        }
    }
}

// MARK: - 处理Double和Double?类型
extension NIOKeyed {
    func decode<K>(value: inout Any, type: Double.Type, forKey key: K) throws -> Double where K: CodingKey {
        self.decoder.codingPath.append(key)
        self.decoder.storage.push(value)
        defer {
            self.decoder.codingPath.removeLast()
            self.decoder.storage.pop()
        }
        
        if let `value`: Double = value as? Double {
            return value
        } else if let `value`: Bool = value as? Bool {
            switch self.strategy {
            case .default: return self.toDouble(key: key, value: value)
            case .custom(let delegate): return delegate.toDouble(key: key, value: value)
            }
        } else if let `value`: Int = value as? Int {
            switch self.strategy {
            case .default: return self.toDouble(key: key, value: value)
            case .custom(let delegate): return delegate.toDouble(key: key, value: value)
            }
        } else if let `value`: Int8 = value as? Int8 {
            switch self.strategy {
            case .default: return self.toDouble(key: key, value: value)
            case .custom(let delegate): return delegate.toDouble(key: key, value: value)
            }
        } else if let `value`: Int16 = value as? Int16 {
            switch self.strategy {
            case .default: return self.toDouble(key: key, value: value)
            case .custom(let delegate): return delegate.toDouble(key: key, value: value)
            }
        } else if let `value`: Int32 = value as? Int32 {
            switch self.strategy {
            case .default: return self.toDouble(key: key, value: value)
            case .custom(let delegate): return delegate.toDouble(key: key, value: value)
            }
        } else if let `value`: Int64 = value as? Int64 {
            switch self.strategy {
            case .default: return self.toDouble(key: key, value: value)
            case .custom(let delegate): return delegate.toDouble(key: key, value: value)
            }
        } else if let `value`: UInt = value as? UInt {
            switch self.strategy {
            case .default: return self.toDouble(key: key, value: value)
            case .custom(let delegate): return delegate.toDouble(key: key, value: value)
            }
        } else if let `value`: UInt8 = value as? UInt8 {
            switch self.strategy {
            case .default: return self.toDouble(key: key, value: value)
            case .custom(let delegate): return delegate.toDouble(key: key, value: value)
            }
        } else if let `value`: UInt16 = value as? UInt16 {
            switch self.strategy {
            case .default: return self.toDouble(key: key, value: value)
            case .custom(let delegate): return delegate.toDouble(key: key, value: value)
            }
        } else if let `value`: UInt32 = value as? UInt32 {
            switch self.strategy {
            case .default: return self.toDouble(key: key, value: value)
            case .custom(let delegate): return delegate.toDouble(key: key, value: value)
            }
        } else if let `value`: UInt64 = value as? UInt64 {
            switch self.strategy {
            case .default: return self.toDouble(key: key, value: value)
            case .custom(let delegate): return delegate.toDouble(key: key, value: value)
            }
        } else if let `value`: Float = value as? Float {
            switch self.strategy {
            case .default: return self.toDouble(key: key, value: value)
            case .custom(let delegate): return delegate.toDouble(key: key, value: value)
            }
        } else if let `value`: String = value as? String {
            switch self.strategy {
            case .default: return self.toDouble(key: key, value: value)
            case .custom(let delegate): return delegate.toDouble(key: key, value: value)
            }
        } else {
            return 0
        }
    }
    
    func decodeIfPresent<K>(value: inout Any, type: Double.Type, forKey key: K) throws -> Double? where K: CodingKey {
        self.decoder.codingPath.append(key)
        self.decoder.storage.push(value)
        defer {
            self.decoder.codingPath.removeLast()
            self.decoder.storage.pop()
        }
        
        if let `value`: Double = value as? Double {
            return value
        } else if let `value`: Bool = value as? Bool {
            return value == true ? 1 : 0
        } else if let `value`: Int = value as? Int {
            switch self.strategy {
            case .default: return self.toDouble(key: key, value: value)
            case .custom(let delegate): return delegate.toDouble(key: key, value: value)
            }
        } else if let `value`: Int8 = value as? Int8 {
            switch self.strategy {
            case .default: return self.toDouble(key: key, value: value)
            case .custom(let delegate): return delegate.toDouble(key: key, value: value)
            }
        } else if let `value`: Int16 = value as? Int16 {
            switch self.strategy {
            case .default: return self.toDouble(key: key, value: value)
            case .custom(let delegate): return delegate.toDouble(key: key, value: value)
            }
        } else if let `value`: Int32 = value as? Int32 {
            switch self.strategy {
            case .default: return self.toDouble(key: key, value: value)
            case .custom(let delegate): return delegate.toDouble(key: key, value: value)
            }
        } else if let `value`: Int64 = value as? Int64 {
            switch self.strategy {
            case .default: return self.toDouble(key: key, value: value)
            case .custom(let delegate): return delegate.toDouble(key: key, value: value)
            }
        } else if let `value`: UInt = value as? UInt {
            switch self.strategy {
            case .default: return self.toDouble(key: key, value: value)
            case .custom(let delegate): return delegate.toDouble(key: key, value: value)
            }
        } else if let `value`: UInt8 = value as? UInt8 {
            switch self.strategy {
            case .default: return self.toDouble(key: key, value: value)
            case .custom(let delegate): return delegate.toDouble(key: key, value: value)
            }
        } else if let `value`: UInt16 = value as? UInt16 {
            switch self.strategy {
            case .default: return self.toDouble(key: key, value: value)
            case .custom(let delegate): return delegate.toDouble(key: key, value: value)
            }
        } else if let `value`: UInt32 = value as? UInt32 {
            switch self.strategy {
            case .default: return self.toDouble(key: key, value: value)
            case .custom(let delegate): return delegate.toDouble(key: key, value: value)
            }
        } else if let `value`: UInt64 = value as? UInt64 {
            switch self.strategy {
            case .default: return self.toDouble(key: key, value: value)
            case .custom(let delegate): return delegate.toDouble(key: key, value: value)
            }
        } else if let `value`: Float = value as? Float {
            switch self.strategy {
            case .default: return self.toDouble(key: key, value: value)
            case .custom(let delegate): return delegate.toDouble(key: key, value: value)
            }
        } else if let `value`: String = value as? String {
            switch self.strategy {
            case .default: return self.toDouble(key: key, value: value)
            case .custom(let delegate): return delegate.toDouble(key: key, value: value)
            }
        } else {
            return nil
        }
    }
}

// MARK: - 处理String和String?类型
extension NIOKeyed {
    func decode<K>(value: inout Any, type: String.Type, forKey key: K) throws -> String where K: CodingKey {
        self.decoder.codingPath.append(key)
        self.decoder.storage.push(value)
        defer {
            self.decoder.codingPath.removeLast()
            self.decoder.storage.pop()
        }
        
        if let `value`: String = value as? String {
            return value
        } else if let `value`: Bool = value as? Bool {
            switch self.strategy {
            case .default: return self.toString(key: key, value: value)
            case .custom(let delegate): return delegate.toString(key: key, value: value)
            }
        } else if let `value`: Int = value as? Int {
            switch self.strategy {
            case .default: return self.toString(key: key, value: value)
            case .custom(let delegate): return delegate.toString(key: key, value: value)
            }
        } else if let `value`: Int8 = value as? Int8 {
            switch self.strategy {
            case .default: return self.toString(key: key, value: value)
            case .custom(let delegate): return delegate.toString(key: key, value: value)
            }
        } else if let `value`: Int16 = value as? Int16 {
            switch self.strategy {
            case .default: return self.toString(key: key, value: value)
            case .custom(let delegate): return delegate.toString(key: key, value: value)
            }
        } else if let `value`: Int32 = value as? Int32 {
            switch self.strategy {
            case .default: return self.toString(key: key, value: value)
            case .custom(let delegate): return delegate.toString(key: key, value: value)
            }
        } else if let `value`: Int64 = value as? Int64 {
            switch self.strategy {
            case .default: return self.toString(key: key, value: value)
            case .custom(let delegate): return delegate.toString(key: key, value: value)
            }
        } else if let `value`: UInt = value as? UInt {
            switch self.strategy {
            case .default: return self.toString(key: key, value: value)
            case .custom(let delegate): return delegate.toString(key: key, value: value)
            }
        } else if let `value`: UInt8 = value as? UInt8 {
            switch self.strategy {
            case .default: return self.toString(key: key, value: value)
            case .custom(let delegate): return delegate.toString(key: key, value: value)
            }
        } else if let `value`: UInt16 = value as? UInt16 {
            switch self.strategy {
            case .default: return self.toString(key: key, value: value)
            case .custom(let delegate): return delegate.toString(key: key, value: value)
            }
        } else if let `value`: UInt32 = value as? UInt32 {
            switch self.strategy {
            case .default: return self.toString(key: key, value: value)
            case .custom(let delegate): return delegate.toString(key: key, value: value)
            }
        } else if let `value`: UInt64 = value as? UInt64 {
            switch self.strategy {
            case .default: return self.toString(key: key, value: value)
            case .custom(let delegate): return delegate.toString(key: key, value: value)
            }
        } else if let `value`: Float = value as? Float {
            switch self.strategy {
            case .default: return self.toString(key: key, value: value)
            case .custom(let delegate): return delegate.toString(key: key, value: value)
            }
        } else if let `value`: Double = value as? Double {
            switch self.strategy {
            case .default: return self.toString(key: key, value: value)
            case .custom(let delegate): return delegate.toString(key: key, value: value)
            }
        } else {
            return ""
        }
    }
    
    func decodeIfPresent<K>(value: inout Any, type: String.Type, forKey key: K) throws -> String? where K: CodingKey {
        self.decoder.codingPath.append(key)
        self.decoder.storage.push(value)
        defer {
            self.decoder.codingPath.removeLast()
            self.decoder.storage.pop()
        }
        
        if let `value`: String = value as? String {
            return value
        } else if let `value`: Bool = value as? Bool {
            switch self.strategy {
            case .default: return self.toString(key: key, value: value)
            case .custom(let delegate): return delegate.toString(key: key, value: value)
            }
        } else if let `value`: Int = value as? Int {
            switch self.strategy {
            case .default: return self.toString(key: key, value: value)
            case .custom(let delegate): return delegate.toString(key: key, value: value)
            }
        } else if let `value`: Int8 = value as? Int8 {
            switch self.strategy {
            case .default: return self.toString(key: key, value: value)
            case .custom(let delegate): return delegate.toString(key: key, value: value)
            }
        } else if let `value`: Int16 = value as? Int16 {
            switch self.strategy {
            case .default: return self.toString(key: key, value: value)
            case .custom(let delegate): return delegate.toString(key: key, value: value)
            }
        } else if let `value`: Int32 = value as? Int32 {
            switch self.strategy {
            case .default: return self.toString(key: key, value: value)
            case .custom(let delegate): return delegate.toString(key: key, value: value)
            }
        } else if let `value`: Int64 = value as? Int64 {
            switch self.strategy {
            case .default: return self.toString(key: key, value: value)
            case .custom(let delegate): return delegate.toString(key: key, value: value)
            }
        } else if let `value`: UInt = value as? UInt {
            switch self.strategy {
            case .default: return self.toString(key: key, value: value)
            case .custom(let delegate): return delegate.toString(key: key, value: value)
            }
        } else if let `value`: UInt8 = value as? UInt8 {
            switch self.strategy {
            case .default: return self.toString(key: key, value: value)
            case .custom(let delegate): return delegate.toString(key: key, value: value)
            }
        } else if let `value`: UInt16 = value as? UInt16 {
            switch self.strategy {
            case .default: return self.toString(key: key, value: value)
            case .custom(let delegate): return delegate.toString(key: key, value: value)
            }
        } else if let `value`: UInt32 = value as? UInt32 {
            switch self.strategy {
            case .default: return self.toString(key: key, value: value)
            case .custom(let delegate): return delegate.toString(key: key, value: value)
            }
        } else if let `value`: UInt64 = value as? UInt64 {
            switch self.strategy {
            case .default: return self.toString(key: key, value: value)
            case .custom(let delegate): return delegate.toString(key: key, value: value)
            }
        } else if let `value`: Float = value as? Float {
            switch self.strategy {
            case .default: return self.toString(key: key, value: value)
            case .custom(let delegate): return delegate.toString(key: key, value: value)
            }
        } else if let `value`: Double = value as? Double {
            switch self.strategy {
            case .default: return self.toString(key: key, value: value)
            case .custom(let delegate): return delegate.toString(key: key, value: value)
            }
        } else {
            return nil
        }
    }
}

