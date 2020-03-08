import Foundation

/// 针对自定义处理
struct NIOSingleValueDecodingContainer: SingleValueDecodingContainer {
    var codingPath: [CodingKey] = []
    
    let decoder: NIODecoder
    var handle: NIOCodableHandle!
    
    init(decoder: NIODecoder) {
        self.decoder = decoder
        self.handle = NIOCodableHandle(decoder: decoder)
    }
    
    func decodeNil() -> Bool {
        switch self.decoder.wrapper?.convertTypeStrategy {
        case .useDefaultable, .none: return self.decoder.storage.currentValue is NSNull ? true : false
        case .useCustom(_): return false
        }
    }
    // MARK: - Bool
    func decode(_ type: Bool.Type) throws -> Bool {
        guard var value = self.decoder.storage.currentValue, let key = NIOCodableKey(stringValue: "\(value)") else {
            throw DecodingError.dataCorrupted(DecodingError.Context(codingPath: [], debugDescription: "无法解析\(type)", underlyingError: nil))
        }
        return try self.handle.decode(value: &value, type: Bool.self, forKey: key)
    }

    // MARK: - Int
    func decode(_ type: Int.Type) throws -> Int {
        guard var value = self.decoder.storage.currentValue, let key = NIOCodableKey(stringValue: "\(value)") else {
            throw DecodingError.dataCorrupted(DecodingError.Context(codingPath: [], debugDescription: "无法解析\(type)", underlyingError: nil))
        }
        return try self.handle.decode(value: &value, type: Int.self, forKey: key)
    }

    // MARK: - Int8
    func decode(_ type: Int8.Type) throws -> Int8 {
        guard var value = self.decoder.storage.currentValue, let key = NIOCodableKey(stringValue: "\(value)") else {
            throw DecodingError.dataCorrupted(DecodingError.Context(codingPath: [], debugDescription: "无法解析\(type)", underlyingError: nil))
        }
        return try self.handle.decode(value: &value, type: Int8.self, forKey: key)
    }

    // MARK: - Int16
    func decode(_ type: Int16.Type) throws -> Int16 {
        guard var value = self.decoder.storage.currentValue, let key = NIOCodableKey(stringValue: "\(value)") else {
            throw DecodingError.dataCorrupted(DecodingError.Context(codingPath: [], debugDescription: "无法解析\(type)", underlyingError: nil))
        }
        return try self.handle.decode(value: &value, type: Int16.self, forKey: key)
    }

    // MARK: - Int32
    func decode(_ type: Int32.Type) throws -> Int32 {
        guard var value = self.decoder.storage.currentValue, let key = NIOCodableKey(stringValue: "\(value)") else {
            throw DecodingError.dataCorrupted(DecodingError.Context(codingPath: [], debugDescription: "无法解析\(type)", underlyingError: nil))
        }
        return try self.handle.decode(value: &value, type: Int32.self, forKey: key)
    }

    // MARK: - Int64
    func decode(_ type: Int64.Type) throws -> Int64 {
        guard var value = self.decoder.storage.currentValue, let key = NIOCodableKey(stringValue: "\(value)") else {
            throw DecodingError.dataCorrupted(DecodingError.Context(codingPath: [], debugDescription: "无法解析\(type)", underlyingError: nil))
        }
        return try self.handle.decode(value: &value, type: Int64.self, forKey: key)
    }
    // MARK: - UInt
    func decode(_ type: UInt.Type) throws -> UInt {
        guard var value = self.decoder.storage.currentValue, let key = NIOCodableKey(stringValue: "\(value)") else {
            throw DecodingError.dataCorrupted(DecodingError.Context(codingPath: [], debugDescription: "无法解析\(type)", underlyingError: nil))
        }
        return try self.handle.decode(value: &value, type: UInt.self, forKey: key)
    }

    // MARK: - UInt8
    func decode(_ type: UInt8.Type) throws -> UInt8 {
        guard var value = self.decoder.storage.currentValue, let key = NIOCodableKey(stringValue: "\(value)") else {
            throw DecodingError.dataCorrupted(DecodingError.Context(codingPath: [], debugDescription: "无法解析\(type)", underlyingError: nil))
        }
        return try self.handle.decode(value: &value, type: UInt8.self, forKey: key)
    }

    // MARK: - UInt16
    func decode(_ type: UInt16.Type) throws -> UInt16 {
        guard var value = self.decoder.storage.currentValue, let key = NIOCodableKey(stringValue: "\(value)") else {
            throw DecodingError.dataCorrupted(DecodingError.Context(codingPath: [], debugDescription: "无法解析\(type)", underlyingError: nil))
        }
        return try self.handle.decode(value: &value, type: UInt16.self, forKey: key)
    }

    // MARK: - UInt32
    func decode(_ type: UInt32.Type) throws -> UInt32 {
        guard var value = self.decoder.storage.currentValue, let key = NIOCodableKey(stringValue: "\(value)") else {
            throw DecodingError.dataCorrupted(DecodingError.Context(codingPath: [], debugDescription: "无法解析\(type)", underlyingError: nil))
        }
        return try self.handle.decode(value: &value, type: UInt32.self, forKey: key)
    }

    // MARK: - UInt64
    func decode(_ type: UInt64.Type) throws -> UInt64 {
        guard var value = self.decoder.storage.currentValue, let key = NIOCodableKey(stringValue: "\(value)") else {
            throw DecodingError.dataCorrupted(DecodingError.Context(codingPath: [], debugDescription: "无法解析\(type)", underlyingError: nil))
        }
        return try self.handle.decode(value: &value, type: UInt64.self, forKey: key)
    }

    // MARK: - Float
    func decode(_ type: Float.Type) throws -> Float {
        guard var value = self.decoder.storage.currentValue, let key = NIOCodableKey(stringValue: "\(value)") else {
            throw DecodingError.dataCorrupted(DecodingError.Context(codingPath: [], debugDescription: "无法解析\(type)", underlyingError: nil))
        }
        return try self.handle.decode(value: &value, type: Float.self, forKey: key)
    }

    // MARK: - Double
    func decode(_ type: Double.Type) throws -> Double {
        guard var value = self.decoder.storage.currentValue, let key = NIOCodableKey(stringValue: "\(value)") else {
            throw DecodingError.dataCorrupted(DecodingError.Context(codingPath: [], debugDescription: "无法解析\(type)", underlyingError: nil))
        }
        return try self.handle.decode(value: &value, type: Double.self, forKey: key)
    }

    // MARK: - String
    func decode(_ type: String.Type) throws -> String {
        guard var value = self.decoder.storage.currentValue, let key = NIOCodableKey(stringValue: "\(value)") else {
            throw DecodingError.dataCorrupted(DecodingError.Context(codingPath: [], debugDescription: "无法解析\(type)", underlyingError: nil))
        }
        return try self.handle.decode(value: &value, type: String.self, forKey: key)
    }

    // MARK: - T
    func decode<T>(_ type: T.Type) throws -> T where T : Decodable {
        guard let value: Any = self.decoder.storage.currentValue else {
            throw DecodingError.dataCorrupted(DecodingError.Context(codingPath: [], debugDescription: "无法取值\(type)", underlyingError: nil))
        }
        print(value)
        return try type.init(from: self.decoder)
    }
}

