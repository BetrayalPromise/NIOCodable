import Foundation

/// 针对字典处理
struct NIOKeyedDecodingContainer<K> : KeyedDecodingContainerProtocol where K: CodingKey {
    typealias Key = K
    var codingPath: [CodingKey] = []
    var allKeys: [Key] {
        return self.source.keys.compactMap({ (hash) -> Key? in
            guard let `hash`: String = hash as? String else { return Key(stringValue: "") }
            return Key(stringValue: hash)
        })
    }
    let decoder: NIODecoder
    var source: [AnyHashable: Any] = [:]
    weak var wrapper: NIOJSONDecoder?
    var typeConvertStrategy: NIOJSONDecoder.TypeConvertStrategy = .default
    var booleanConvertStrategy: NIOJSONDecoder.BooleanConvertStrategy = .useBoolean
    var handle: CodableHandle!
    
    init(wrapper: NIOJSONDecoder?, source: [AnyHashable: Any], decoder: NIODecoder) {
        self.wrapper = wrapper
        self.typeConvertStrategy = self.wrapper?.typeStrategy ?? .default
        self.booleanConvertStrategy = self.wrapper?.booleanStrategy ?? .useBoolean
        self.source = source
        self.decoder = decoder
        self.codingPath = decoder.codingPath
        self.handle = CodableHandle(typeStrategy: decoder.wrapper?.typeStrategy, booleanStrategy: decoder.wrapper?.booleanStrategy)
    }

    init(decoder: NIODecoder) {
        self.decoder = decoder
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
        self.decoder.codingPath.append(key)
        defer { self.decoder.codingPath.removeLast() }
        guard var entry: Any = self.source[key.stringValue] else {
            return false
        }
        return try self.handle.decode(value: &entry, type: Bool.self, forKey: key)
    }
    
    // MARK: Bool?
    func decodeIfPresent(_ type: Bool.Type, forKey key: K) throws -> Bool? {
        self.decoder.codingPath.append(key)
        defer { self.decoder.codingPath.removeLast() }
        guard var entry: Any = self.source[key.stringValue] else {
            return nil
        }
        return try self.handle.decodeIfPresent(value: &entry, type: Bool.self, forKey: key)
    }
    
    // MARK: Int
    func decode(_ type: Int.Type, forKey key: K) throws -> Int {
        self.decoder.codingPath.append(key)
        defer { self.decoder.codingPath.removeLast() }
        guard var entry: Any = self.source[key.stringValue] else {
            return 0
        }
        return try self.handle.decode(value: &entry, type: Int.self, forKey: key)
    }
    
    // MARK: Int?
    func decodeIfPresent(_ type: Int.Type, forKey key: K) throws -> Int? {
        self.decoder.codingPath.append(key)
        defer { self.decoder.codingPath.removeLast() }
        guard var entry: Any = self.source[key.stringValue] else {
            return nil
        }
        return try self.handle.decodeIfPresent(value: &entry, type: Int.self, forKey: key)
    }
    
    // MARK: Int8
    func decode(_ type: Int8.Type, forKey key: K) throws -> Int8 {
        self.decoder.codingPath.append(key)
        defer { self.decoder.codingPath.removeLast() }
        guard var entry: Any = self.source[key.stringValue] else {
            return 0
        }
        return try self.handle.decode(value: &entry, type: Int8.self, forKey: key)
    }
    
    // MARK: Int8?
    func decodeIfPresent(_ type: Int8.Type, forKey key: K) throws -> Int8? {
        self.decoder.codingPath.append(key)
        defer { self.decoder.codingPath.removeLast() }
        guard var entry: Any = self.source[key.stringValue] else {
            return nil
        }
        return try self.handle.decodeIfPresent(value: &entry, type: Int8.self, forKey: key)
    }
    
    // MARK: Int16
    func decode(_ type: Int16.Type, forKey key: K) throws -> Int16 {
        self.decoder.codingPath.append(key)
        defer { self.decoder.codingPath.removeLast() }
        guard var entry: Any = self.source[key.stringValue] else {
            return 0
        }
        return try self.handle.decode(value: &entry, type: Int16.self, forKey: key)
    }
    
    // MARK: Int16?
    func decodeIfPresent(_ type: Int16.Type, forKey key: K) throws -> Int16? {
        self.decoder.codingPath.append(key)
        defer { self.decoder.codingPath.removeLast() }
        guard var entry: Any = self.source[key.stringValue] else {
            return nil
        }
        return try self.handle.decodeIfPresent(value: &entry, type: Int16.self, forKey: key)
    }
    
    // MARK: Int32
    func decode(_ type: Int32.Type, forKey key: K) throws -> Int32 {
        self.decoder.codingPath.append(key)
        defer { self.decoder.codingPath.removeLast() }
        guard var entry: Any = self.source[key.stringValue] else {
            return 0
        }
        return try self.handle.decode(value: &entry, type: Int32.self, forKey: key)
    }
    
    // MARK: Int32?
    func decodeIfPresent(_ type: Int32.Type, forKey key: K) throws -> Int32? {
        self.decoder.codingPath.append(key)
        defer { self.decoder.codingPath.removeLast() }
        guard var entry: Any = self.source[key.stringValue] else {
            return nil
        }
        return try self.handle.decodeIfPresent(value: &entry, type: Int32.self, forKey: key)
    }
    
    // MARK: Int64
    func decode(_ type: Int64.Type, forKey key: K) throws -> Int64 {
        self.decoder.codingPath.append(key)
        defer { self.decoder.codingPath.removeLast() }
        guard var entry: Any = self.source[key.stringValue] else {
            return 0
        }
        return try self.handle.decode(value: &entry, type: Int64.self, forKey: key)
    }
    
    // MARK: Int64?
    func decodeIfPresent(_ type: Int64.Type, forKey key: K) throws -> Int64? {
        self.decoder.codingPath.append(key)
        defer { self.decoder.codingPath.removeLast() }
        guard var entry: Any = self.source[key.stringValue] else {
            return nil
        }
        return try self.handle.decodeIfPresent(value: &entry, type: Int64.self, forKey: key)
    }
    
    // MARK: UInt
    func decode(_ type: UInt.Type, forKey key: K) throws -> UInt {
        self.decoder.codingPath.append(key)
        defer { self.decoder.codingPath.removeLast() }
        guard var entry: Any = self.source[key.stringValue] else {
            return 0
        }
        return try self.handle.decode(value: &entry, type: UInt.self, forKey: key)
    }
    
    // MARK: UInt?
    func decodeIfPresent(_ type: UInt.Type, forKey key: K) throws -> UInt? {
        self.decoder.codingPath.append(key)
        defer { self.decoder.codingPath.removeLast() }
        guard var entry: Any = self.source[key.stringValue] else {
            return nil
        }
        return try self.handle.decodeIfPresent(value: &entry, type: UInt.self, forKey: key)
    }
    
    // MARK: UInt8
    func decode(_ type: UInt8.Type, forKey key: K) throws -> UInt8 {
        guard var entry: Any = self.source[key.stringValue] else {
            return 0
        }
        return try self.handle.decode(value: &entry, type: UInt8.self, forKey: key)
    }
    
    // MARK: UInt8?
    func decodeIfPresent(_ type: UInt8.Type, forKey key: K) throws -> UInt8? {
        self.decoder.codingPath.append(key)
        defer { self.decoder.codingPath.removeLast() }
        guard var entry: Any = self.source[key.stringValue] else {
            return nil
        }
        return try self.handle.decodeIfPresent(value: &entry, type: UInt8.self, forKey: key)
    }
    
    // MARK: UInt16
    func decode(_ type: UInt16.Type, forKey key: K) throws -> UInt16 {
        self.decoder.codingPath.append(key)
        defer { self.decoder.codingPath.removeLast() }
        guard var entry: Any = self.source[key.stringValue] else {
            return 0
        }
        return try self.handle.decode(value: &entry, type: UInt16.self, forKey: key)
    }
    
    // MARK: UInt16?
    func decodeIfPresent(_ type: UInt16.Type, forKey key: K) throws -> UInt16? {
        self.decoder.codingPath.append(key)
        defer { self.decoder.codingPath.removeLast() }
        guard var entry: Any = self.source[key.stringValue] else {
            return nil
        }
        return try self.handle.decodeIfPresent(value: &entry, type: UInt16.self, forKey: key)
    }
    
    // MARK: UInt32
    func decode(_ type: UInt32.Type, forKey key: K) throws -> UInt32 {
        self.decoder.codingPath.append(key)
        defer { self.decoder.codingPath.removeLast() }
        guard var entry: Any = self.source[key.stringValue] else {
            return 0
        }
        return try self.handle.decode(value: &entry, type: UInt32.self, forKey: key)
    }
    
    // MARK: UInt32?
    func decodeIfPresent(_ type: UInt32.Type, forKey key: K) throws -> UInt32? {
        self.decoder.codingPath.append(key)
        defer { self.decoder.codingPath.removeLast() }
        guard var entry: Any = self.source[key.stringValue] else {
            return nil
        }
        return try self.handle.decodeIfPresent(value: &entry, type: UInt32.self, forKey: key)
    }

    // MARK: UInt64
    func decode(_ type: UInt64.Type, forKey key: K) throws -> UInt64 {
        self.decoder.codingPath.append(key)
        defer { self.decoder.codingPath.removeLast() }
        guard var entry: Any = self.source[key.stringValue] else {
            return 0
        }
        return try self.handle.decode(value: &entry, type: UInt64.self, forKey: key)
    }
    
    // MARK: UInt64?
    func decodeIfPresent(_ type: UInt64.Type, forKey key: K) throws -> UInt64? {
        self.decoder.codingPath.append(key)
        defer { self.decoder.codingPath.removeLast() }
        guard var entry: Any = self.source[key.stringValue] else {
            return nil
        }
        return try self.handle.decodeIfPresent(value: &entry, type: UInt64.self, forKey: key)
    }
    
    // MARK: T
    func decode(_ type: Float.Type, forKey key: K) throws -> Float {
        self.decoder.codingPath.append(key)
        defer { self.decoder.codingPath.removeLast() }
        guard var entry: Any = self.source[key.stringValue] else {
            return 0
        }
        return try self.handle.decode(value: &entry, type: Float.self, forKey: key)
    }
    
    // MARK: T?
    func decodeIfPresent(_ type: Float.Type, forKey key: K) throws -> Float? {
        self.decoder.codingPath.append(key)
        defer { self.decoder.codingPath.removeLast() }
        guard var entry: Any = self.source[key.stringValue] else {
            return nil
        }
        return try self.handle.decodeIfPresent(value: &entry, type: Float.self, forKey: key)
    }
    
    func decode(_ type: Double.Type, forKey key: K) throws -> Double {
        self.decoder.codingPath.append(key)
        defer { self.decoder.codingPath.removeLast() }
        guard var entry: Any = self.source[key.stringValue] else {
            return 0
        }
        return try self.handle.decode(value: &entry, type: Double.self, forKey: key)
    }
    
    func decodeIfPresent(_ type: Double.Type, forKey key: K) throws -> Double? {
        self.decoder.codingPath.append(key)
        defer { self.decoder.codingPath.removeLast() }
        guard var entry: Any = self.source[key.stringValue] else {
            return nil
        }
        return try self.handle.decodeIfPresent(value: &entry, type: Double.self, forKey: key)
    }
    
    // MARK: String
    func decode(_ type: String.Type, forKey key: K) throws -> String {
        self.decoder.codingPath.append(key)
        defer { self.decoder.codingPath.removeLast() }
        guard var entry: Any = self.source[key.stringValue] else {
            return ""
        }
        return try self.handle.decode(value: &entry, type: String.self, forKey: key)
    }
    
    // MARK: String?
    func decodeIfPresent(_ type: String.Type, forKey key: K) throws -> String? {
        self.decoder.codingPath.append(key)
        defer { self.decoder.codingPath.removeLast() }
        guard var entry: Any = self.source[key.stringValue] else {
            return nil
        }
        return try self.handle.decodeIfPresent(value: &entry, type: String.self, forKey: key)
    }
    
    // MARK: T
    func decode<T>(_ type: T.Type, forKey key: K) throws -> T where T : Decodable {
        self.decoder.codingPath.append(key)
        defer { self.decoder.codingPath.removeLast() }
        guard let entry = self.source[key.stringValue] else {
            return try T.init(from: self.decoder)
        }
        self.decoder.storage.push(entry)
        defer { self.decoder.storage.pop() }
        return try type.init(from: self.decoder)
    }
    
    // MARK: T?
    func decodeIfPresent<T>(_ type: T.Type, forKey key: K) throws -> T? where T : Decodable {
        self.decoder.codingPath.append(key)
        defer { self.decoder.codingPath.removeLast() }
        guard let entry = self.source[key.stringValue] else {
            return nil
        }
        if entry is NSNull {
            switch self.decoder.wrapper?.containerStrategy {
            case .useNull:
                return nil
            default:
                return [] as? T
            }
        }
        guard let value: String = entry as? String else {
            self.decoder.storage.push(entry)
            defer { self.decoder.storage.pop() }
            return try type.init(from: self.decoder)
        }

        if value == "null" {
            switch self.decoder.wrapper?.containerStrategy {
            case .useNull:
                return nil
            default:
                return [] as? T
            }
        }

        self.decoder.storage.push(entry)
        defer { self.decoder.storage.pop() }
        return try type.init(from: self.decoder)
    }
    
    func nestedContainer<NestedKey>(keyedBy type: NestedKey.Type, forKey key: K) throws -> KeyedDecodingContainer<NestedKey> where NestedKey : CodingKey {
        self.decoder.codingPath.append(key)
        defer {
            self.decoder.codingPath.removeLast()
        }

        guard let dictionary: [AnyHashable: Any] = self.source[key.stringValue] as? [AnyHashable: Any] else {
            return KeyedDecodingContainer(NIOKeyedDecodingContainer<NestedKey>(wrapper: self.wrapper, source: [:], decoder: self.decoder))
        }
        return KeyedDecodingContainer(NIOKeyedDecodingContainer<NestedKey>(wrapper: self.wrapper, source: dictionary, decoder: self.decoder))
    }
    
    func nestedUnkeyedContainer(forKey key: K) throws -> UnkeyedDecodingContainer {
        self.decoder.codingPath.append(key)
        defer {
            self.decoder.codingPath.removeLast()
        }
        guard let array: [Any] = self.source[key.stringValue] as? [Any] else {
            return NIOUnkeyedDecodingContainer(wrapper: self.wrapper, source: [], decoder: self.decoder)
        }
        return NIOUnkeyedDecodingContainer(wrapper: self.wrapper, source: array, decoder: self.decoder)
    }
    
    func superDecoder() throws -> Decoder {
        return self.decoder
    }
    
    func superDecoder(forKey key: K) throws -> Decoder {
        return self.decoder
    }
}
