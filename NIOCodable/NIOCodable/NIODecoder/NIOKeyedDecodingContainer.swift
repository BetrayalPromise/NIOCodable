import Foundation

/// 针对字典处理
struct NIOKeyedDecodingContainer<K>: KeyedDecodingContainerProtocol where K: CodingKey {
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
    var handle: NIOCodableHandle!
    
    init(decoder: NIODecoder, source: [AnyHashable: Any]) {
        self.decoder = decoder
        self.source = source
        self.codingPath = decoder.codingPath
        self.handle = NIOCodableHandle(decoder: decoder)
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
            switch self.decoder.wrapper?.nonOptionalKeyNotFoundStrategy {
            case .useDefaultable:
                return self.decoder.wrapper?.boxBaseValue.bool ?? BoxBaseValue().bool
            default:
                throw DecodingError.keyNotFound(key, DecodingError.Context(codingPath: [key], debugDescription: "key: \(key.stringValue) not found"))
            }
        }
        print(self.checkoutTree(value: entry))
        return try self.handle.decode(value: &entry, type: Bool.self, forKey: key)
    }
    
    // MARK: Bool?
    func decodeIfPresent(_ type: Bool.Type, forKey key: K) throws -> Bool? {
        self.decoder.codingPath.append(key)
        defer { self.decoder.codingPath.removeLast() }
        guard var entry: Any = self.source[key.stringValue] else {
            switch self.decoder.wrapper?.optionalKeyNotFoundStrategy {
            case .useDefaultable:
                return self.decoder.wrapper?.boxBaseValue.bool ?? BoxBaseValue().bool
            case .useNull:
                return nil
            default:
                throw DecodingError.keyNotFound(key, DecodingError.Context(codingPath: [key], debugDescription: "key: \(key.stringValue) not found"))
            }
        }
        return try self.handle.decodeIfPresent(value: &entry, type: Bool.self, forKey: key)
    }
    
    // MARK: Int
    func decode(_ type: Int.Type, forKey key: K) throws -> Int {
        self.decoder.codingPath.append(key)
        defer { self.decoder.codingPath.removeLast() }
        guard var entry: Any = self.source[key.stringValue] else {
            switch self.decoder.wrapper?.nonOptionalKeyNotFoundStrategy {
            case .useDefaultable:
                return self.decoder.wrapper?.boxBaseValue.int ?? BoxBaseValue().int
            default:
                throw DecodingError.keyNotFound(key, DecodingError.Context(codingPath: [key], debugDescription: "key: \(key.stringValue) not found"))
            }
        }
        return try self.handle.decode(value: &entry, type: Int.self, forKey: key)
    }
    
    // MARK: Int?
    func decodeIfPresent(_ type: Int.Type, forKey key: K) throws -> Int? {
        self.decoder.codingPath.append(key)
        defer { self.decoder.codingPath.removeLast() }
        guard var entry: Any = self.source[key.stringValue] else {
            switch self.decoder.wrapper?.optionalKeyNotFoundStrategy {
            case .useDefaultable:
                return self.decoder.wrapper?.boxBaseValue.int ?? BoxBaseValue().int
            case .useNull:
                return nil
            default:
                throw DecodingError.keyNotFound(key, DecodingError.Context(codingPath: [key], debugDescription: "key: \(key.stringValue) not found"))
            }
        }
        return try self.handle.decodeIfPresent(value: &entry, type: Int.self, forKey: key)
    }
    
    // MARK: Int8
    func decode(_ type: Int8.Type, forKey key: K) throws -> Int8 {
        self.decoder.codingPath.append(key)
        defer { self.decoder.codingPath.removeLast() }
        guard var entry: Any = self.source[key.stringValue] else {
            switch self.decoder.wrapper?.nonOptionalKeyNotFoundStrategy {
            case .useDefaultable:
                return self.decoder.wrapper?.boxBaseValue.int8 ?? BoxBaseValue().int8
            default:
                throw DecodingError.keyNotFound(key, DecodingError.Context(codingPath: [key], debugDescription: "key: \(key.stringValue) not found"))
            }
        }
        return try self.handle.decode(value: &entry, type: Int8.self, forKey: key)
    }
    
    // MARK: Int8?
    func decodeIfPresent(_ type: Int8.Type, forKey key: K) throws -> Int8? {
        self.decoder.codingPath.append(key)
        defer { self.decoder.codingPath.removeLast() }
        guard var entry: Any = self.source[key.stringValue] else {
            switch self.decoder.wrapper?.optionalKeyNotFoundStrategy {
            case .useDefaultable:
                return self.decoder.wrapper?.boxBaseValue.int8 ?? BoxBaseValue().int8
            case .useNull:
                return nil
            default:
                throw DecodingError.keyNotFound(key, DecodingError.Context(codingPath: [key], debugDescription: "key: \(key.stringValue) not found"))
            }
        }
        return try self.handle.decodeIfPresent(value: &entry, type: Int8.self, forKey: key)
    }
    
    // MARK: Int16
    func decode(_ type: Int16.Type, forKey key: K) throws -> Int16 {
        self.decoder.codingPath.append(key)
        defer { self.decoder.codingPath.removeLast() }
        guard var entry: Any = self.source[key.stringValue] else {
            switch self.decoder.wrapper?.nonOptionalKeyNotFoundStrategy {
            case .useDefaultable:
                return self.decoder.wrapper?.boxBaseValue.int16 ?? BoxBaseValue().int16
            default:
                throw DecodingError.keyNotFound(key, DecodingError.Context(codingPath: [key], debugDescription: "key: \(key.stringValue) not found"))
            }
        }
        return try self.handle.decode(value: &entry, type: Int16.self, forKey: key)
    }
    
    // MARK: Int16?
    func decodeIfPresent(_ type: Int16.Type, forKey key: K) throws -> Int16? {
        self.decoder.codingPath.append(key)
        defer { self.decoder.codingPath.removeLast() }
        guard var entry: Any = self.source[key.stringValue] else {
            switch self.decoder.wrapper?.optionalKeyNotFoundStrategy {
            case .useDefaultable:
                return self.decoder.wrapper?.boxBaseValue.int16 ?? BoxBaseValue().int16
            case .useNull:
                return nil
            default:
                throw DecodingError.keyNotFound(key, DecodingError.Context(codingPath: [key], debugDescription: "key: \(key.stringValue) not found"))
            }
        }
        return try self.handle.decodeIfPresent(value: &entry, type: Int16.self, forKey: key)
    }
    
    // MARK: Int32
    func decode(_ type: Int32.Type, forKey key: K) throws -> Int32 {
        self.decoder.codingPath.append(key)
        defer { self.decoder.codingPath.removeLast() }
        guard var entry: Any = self.source[key.stringValue] else {
            switch self.decoder.wrapper?.nonOptionalKeyNotFoundStrategy {
            case .useDefaultable:
                return self.decoder.wrapper?.boxBaseValue.int32 ?? BoxBaseValue().int32
            default:
                throw DecodingError.keyNotFound(key, DecodingError.Context(codingPath: [key], debugDescription: "key: \(key.stringValue) not found"))
            }
        }
        return try self.handle.decode(value: &entry, type: Int32.self, forKey: key)
    }
    
    // MARK: Int32?
    func decodeIfPresent(_ type: Int32.Type, forKey key: K) throws -> Int32? {
        self.decoder.codingPath.append(key)
        defer { self.decoder.codingPath.removeLast() }
        guard var entry: Any = self.source[key.stringValue] else {
            switch self.decoder.wrapper?.optionalKeyNotFoundStrategy {
            case .useDefaultable:
                return self.decoder.wrapper?.boxBaseValue.int32 ?? BoxBaseValue().int32
            case .useNull:
                return nil
            default:
                throw DecodingError.keyNotFound(key, DecodingError.Context(codingPath: [key], debugDescription: "key: \(key.stringValue) not found"))
            }
        }
        return try self.handle.decodeIfPresent(value: &entry, type: Int32.self, forKey: key)
    }
    
    // MARK: Int64
    func decode(_ type: Int64.Type, forKey key: K) throws -> Int64 {
        self.decoder.codingPath.append(key)
        defer { self.decoder.codingPath.removeLast() }
        guard var entry: Any = self.source[key.stringValue] else {
            switch self.decoder.wrapper?.nonOptionalKeyNotFoundStrategy {
            case .useDefaultable:
                return self.decoder.wrapper?.boxBaseValue.int64 ?? BoxBaseValue().int64
            default:
                throw DecodingError.keyNotFound(key, DecodingError.Context(codingPath: [key], debugDescription: "key: \(key.stringValue) not found"))
            }
        }
        return try self.handle.decode(value: &entry, type: Int64.self, forKey: key)
    }
    
    // MARK: Int64?
    func decodeIfPresent(_ type: Int64.Type, forKey key: K) throws -> Int64? {
        self.decoder.codingPath.append(key)
        defer { self.decoder.codingPath.removeLast() }
        guard var entry: Any = self.source[key.stringValue] else {
            switch self.decoder.wrapper?.optionalKeyNotFoundStrategy {
            case .useDefaultable:
                return self.decoder.wrapper?.boxBaseValue.int64 ?? BoxBaseValue().int64
            case .useNull:
                return nil
            default:
                throw DecodingError.keyNotFound(key, DecodingError.Context(codingPath: [key], debugDescription: "key: \(key.stringValue) not found"))
            }
        }
        return try self.handle.decodeIfPresent(value: &entry, type: Int64.self, forKey: key)
    }
    
    // MARK: UInt
    func decode(_ type: UInt.Type, forKey key: K) throws -> UInt {
        self.decoder.codingPath.append(key)
        defer { self.decoder.codingPath.removeLast() }
        guard var entry: Any = self.source[key.stringValue] else {
            switch self.decoder.wrapper?.nonOptionalKeyNotFoundStrategy {
            case .useDefaultable:
                return self.decoder.wrapper?.boxBaseValue.uint ?? BoxBaseValue().uint
            default:
                throw DecodingError.keyNotFound(key, DecodingError.Context(codingPath: [key], debugDescription: "key: \(key.stringValue) not found"))
            }
        }
        return try self.handle.decode(value: &entry, type: UInt.self, forKey: key)
    }
    
    // MARK: UInt?
    func decodeIfPresent(_ type: UInt.Type, forKey key: K) throws -> UInt? {
        self.decoder.codingPath.append(key)
        defer { self.decoder.codingPath.removeLast() }
        guard var entry: Any = self.source[key.stringValue] else {
            switch self.decoder.wrapper?.optionalKeyNotFoundStrategy {
            case .useDefaultable:
                return self.decoder.wrapper?.boxBaseValue.uint ?? BoxBaseValue().uint
            case .useNull:
                return nil
            default:
                throw DecodingError.keyNotFound(key, DecodingError.Context(codingPath: [key], debugDescription: "key: \(key.stringValue) not found"))
            }
        }
        return try self.handle.decodeIfPresent(value: &entry, type: UInt.self, forKey: key)
    }
    
    // MARK: UInt8
    func decode(_ type: UInt8.Type, forKey key: K) throws -> UInt8 {
        guard var entry: Any = self.source[key.stringValue] else {
            switch self.decoder.wrapper?.nonOptionalKeyNotFoundStrategy {
            case .useDefaultable:
                return self.decoder.wrapper?.boxBaseValue.uint8 ?? BoxBaseValue().uint8
            default:
                throw DecodingError.keyNotFound(key, DecodingError.Context(codingPath: [key], debugDescription: "key: \(key.stringValue) not found"))
            }
        }
        return try self.handle.decode(value: &entry, type: UInt8.self, forKey: key)
    }
    
    // MARK: UInt8?
    func decodeIfPresent(_ type: UInt8.Type, forKey key: K) throws -> UInt8? {
        self.decoder.codingPath.append(key)
        defer { self.decoder.codingPath.removeLast() }
        guard var entry: Any = self.source[key.stringValue] else {
            switch self.decoder.wrapper?.optionalKeyNotFoundStrategy {
            case .useDefaultable:
                return self.decoder.wrapper?.boxBaseValue.uint8 ?? BoxBaseValue().uint8
            case .useNull:
                return nil
            default:
                throw DecodingError.keyNotFound(key, DecodingError.Context(codingPath: [key], debugDescription: "key: \(key.stringValue) not found"))
            }
        }
        return try self.handle.decodeIfPresent(value: &entry, type: UInt8.self, forKey: key)
    }
    
    // MARK: UInt16
    func decode(_ type: UInt16.Type, forKey key: K) throws -> UInt16 {
        self.decoder.codingPath.append(key)
        defer { self.decoder.codingPath.removeLast() }
        guard var entry: Any = self.source[key.stringValue] else {
            switch self.decoder.wrapper?.nonOptionalKeyNotFoundStrategy {
            case .useDefaultable:
                return self.decoder.wrapper?.boxBaseValue.uint16 ?? BoxBaseValue().uint16
            default:
                throw DecodingError.keyNotFound(key, DecodingError.Context(codingPath: [key], debugDescription: "key: \(key.stringValue) not found"))
            }
        }
        return try self.handle.decode(value: &entry, type: UInt16.self, forKey: key)
    }
    
    // MARK: UInt16?
    func decodeIfPresent(_ type: UInt16.Type, forKey key: K) throws -> UInt16? {
        self.decoder.codingPath.append(key)
        defer { self.decoder.codingPath.removeLast() }
        guard var entry: Any = self.source[key.stringValue] else {
            switch self.decoder.wrapper?.optionalKeyNotFoundStrategy {
            case .useDefaultable:
                return self.decoder.wrapper?.boxBaseValue.uint16 ?? BoxBaseValue().uint16
            case .useNull:
                return nil
            default:
                throw DecodingError.keyNotFound(key, DecodingError.Context(codingPath: [key], debugDescription: "key: \(key.stringValue) not found"))
            }
        }
        return try self.handle.decodeIfPresent(value: &entry, type: UInt16.self, forKey: key)
    }
    
    // MARK: UInt32
    func decode(_ type: UInt32.Type, forKey key: K) throws -> UInt32 {
        self.decoder.codingPath.append(key)
        defer { self.decoder.codingPath.removeLast() }
        guard var entry: Any = self.source[key.stringValue] else {
            switch self.decoder.wrapper?.nonOptionalKeyNotFoundStrategy {
            case .useDefaultable:
                return self.decoder.wrapper?.boxBaseValue.uint32 ?? BoxBaseValue().uint32
            default:
                throw DecodingError.keyNotFound(key, DecodingError.Context(codingPath: [key], debugDescription: "key: \(key.stringValue) not found"))
            }
        }
        return try self.handle.decode(value: &entry, type: UInt32.self, forKey: key)
    }
    
    // MARK: UInt32?
    func decodeIfPresent(_ type: UInt32.Type, forKey key: K) throws -> UInt32? {
        self.decoder.codingPath.append(key)
        defer { self.decoder.codingPath.removeLast() }
        guard var entry: Any = self.source[key.stringValue] else {
            switch self.decoder.wrapper?.optionalKeyNotFoundStrategy {
            case .useDefaultable:
                return self.decoder.wrapper?.boxBaseValue.uint32 ?? BoxBaseValue().uint32
            case .useNull:
                return nil
            default:
                throw DecodingError.keyNotFound(key, DecodingError.Context(codingPath: [key], debugDescription: "key: \(key.stringValue) not found"))
            }
        }
        return try self.handle.decodeIfPresent(value: &entry, type: UInt32.self, forKey: key)
    }

    // MARK: UInt64
    func decode(_ type: UInt64.Type, forKey key: K) throws -> UInt64 {
        self.decoder.codingPath.append(key)
        defer { self.decoder.codingPath.removeLast() }
        guard var entry: Any = self.source[key.stringValue] else {
            switch self.decoder.wrapper?.nonOptionalKeyNotFoundStrategy {
            case .useDefaultable:
                return self.decoder.wrapper?.boxBaseValue.uint64 ?? BoxBaseValue().uint64
            default:
                throw DecodingError.keyNotFound(key, DecodingError.Context(codingPath: [key], debugDescription: "key: \(key.stringValue) not found"))
            }
        }
        return try self.handle.decode(value: &entry, type: UInt64.self, forKey: key)
    }
    
    // MARK: UInt64?
    func decodeIfPresent(_ type: UInt64.Type, forKey key: K) throws -> UInt64? {
        self.decoder.codingPath.append(key)
        defer { self.decoder.codingPath.removeLast() }
        guard var entry: Any = self.source[key.stringValue] else {
            switch self.decoder.wrapper?.optionalKeyNotFoundStrategy {
            case .useDefaultable:
                return self.decoder.wrapper?.boxBaseValue.uint64 ?? BoxBaseValue().uint64
            case .useNull:
                return nil
            default:
                throw DecodingError.keyNotFound(key, DecodingError.Context(codingPath: [key], debugDescription: "key: \(key.stringValue) not found"))
            }
        }
        return try self.handle.decodeIfPresent(value: &entry, type: UInt64.self, forKey: key)
    }

    // MARK: Float
    func decode(_ type: Float.Type, forKey key: K) throws -> Float {
        self.decoder.codingPath.append(key)
        defer { self.decoder.codingPath.removeLast() }
        guard var entry: Any = self.source[key.stringValue] else {
            switch self.decoder.wrapper?.nonOptionalKeyNotFoundStrategy {
            case .useDefaultable:
                return self.decoder.wrapper?.boxBaseValue.float ?? BoxBaseValue().float
            default:
                throw DecodingError.keyNotFound(key, DecodingError.Context(codingPath: [key], debugDescription: "key: \(key.stringValue) not found"))
            }
        }
        return try self.handle.decode(value: &entry, type: Float.self, forKey: key)
    }
    
    // MARK: Float?
    func decodeIfPresent(_ type: Float.Type, forKey key: K) throws -> Float? {
        self.decoder.codingPath.append(key)
        defer { self.decoder.codingPath.removeLast() }
        guard var entry: Any = self.source[key.stringValue] else {
            switch self.decoder.wrapper?.optionalKeyNotFoundStrategy {
            case .useDefaultable:
                return self.decoder.wrapper?.boxBaseValue.float ?? BoxBaseValue().float
            case .useNull:
                return nil
            default:
                throw DecodingError.keyNotFound(key, DecodingError.Context(codingPath: [key], debugDescription: "key: \(key.stringValue) not found"))
            }
        }
        return try self.handle.decodeIfPresent(value: &entry, type: Float.self, forKey: key)
    }

    // MARK: Double
    func decode(_ type: Double.Type, forKey key: K) throws -> Double {
        self.decoder.codingPath.append(key)
        defer { self.decoder.codingPath.removeLast() }
        guard var entry: Any = self.source[key.stringValue] else {
            switch self.decoder.wrapper?.nonOptionalKeyNotFoundStrategy {
            case .useDefaultable:
                return self.decoder.wrapper?.boxBaseValue.double ?? BoxBaseValue().double
            default:
                throw DecodingError.keyNotFound(key, DecodingError.Context(codingPath: [key], debugDescription: "key: \(key.stringValue) not found"))
            }
        }
        return try self.handle.decode(value: &entry, type: Double.self, forKey: key)
    }

    // MARK: Double?
    func decodeIfPresent(_ type: Double.Type, forKey key: K) throws -> Double? {
        self.decoder.codingPath.append(key)
        defer { self.decoder.codingPath.removeLast() }
        guard var entry: Any = self.source[key.stringValue] else {
            switch self.decoder.wrapper?.optionalKeyNotFoundStrategy {
            case .useDefaultable:
                return self.decoder.wrapper?.boxBaseValue.double ?? BoxBaseValue().double
            case .useNull:
                return nil
            default:
                throw DecodingError.keyNotFound(key, DecodingError.Context(codingPath: [key], debugDescription: "key: \(key.stringValue) not found"))
            }
        }
        return try self.handle.decodeIfPresent(value: &entry, type: Double.self, forKey: key)
    }
    
    // MARK: String
    func decode(_ type: String.Type, forKey key: K) throws -> String {
        self.decoder.codingPath.append(key)
        defer { self.decoder.codingPath.removeLast() }
        guard var entry: Any = self.source[key.stringValue] else {
            switch self.decoder.wrapper?.nonOptionalKeyNotFoundStrategy {
            case .useDefaultable:
                return self.decoder.wrapper?.boxBaseValue.string ?? BoxBaseValue().string
            default:
                throw DecodingError.keyNotFound(key, DecodingError.Context(codingPath: [key], debugDescription: "key: \(key.stringValue) not found"))
            }
        }
        return try self.handle.decode(value: &entry, type: String.self, forKey: key)
    }
    
    // MARK: String?
    func decodeIfPresent(_ type: String.Type, forKey key: K) throws -> String? {
        self.decoder.codingPath.append(key)
        defer { self.decoder.codingPath.removeLast() }
        guard var entry: Any = self.source[key.stringValue] else {
            switch self.decoder.wrapper?.optionalKeyNotFoundStrategy {
            case .useDefaultable:
                return self.decoder.wrapper?.boxBaseValue.string ?? BoxBaseValue().string
            case .useNull:
                return nil
            default:
                throw DecodingError.keyNotFound(key, DecodingError.Context(codingPath: [key], debugDescription: "key: \(key.stringValue) not found"))
            }
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
// TODO: KeyNoFound
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
            return KeyedDecodingContainer(NIOKeyedDecodingContainer<NestedKey>(decoder: self.decoder, source: [:]))
        }
        return KeyedDecodingContainer(NIOKeyedDecodingContainer<NestedKey>(decoder: self.decoder, source: dictionary))
    }
    
    func nestedUnkeyedContainer(forKey key: K) throws -> UnkeyedDecodingContainer {
        self.decoder.codingPath.append(key)
        defer {
            self.decoder.codingPath.removeLast()
        }
        guard let array: [Any] = self.source[key.stringValue] as? [Any] else {
            return NIOUnkeyedDecodingContainer(decoder: self.decoder, source: [])
        }
        return NIOUnkeyedDecodingContainer(decoder: self.decoder, source: array)
    }
    
    func superDecoder() throws -> Decoder {
        return self.decoder
    }
    
    func superDecoder(forKey key: K) throws -> Decoder {
        return self.decoder
    }
}

extension NIOKeyedDecodingContainer {
    func checkoutTree(value: Any) -> Bool {
        if (value as? [AnyHashable: Any]) != nil {
            return false
        }
        if (value as? [Any]) != nil {
            return false
        }
        return true
    }
}
