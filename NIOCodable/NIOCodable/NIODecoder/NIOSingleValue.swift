import Foundation

/// 针对自定义处理
struct NIOSingleValue: SingleValueDecodingContainer {
    var codingPath: [CodingKey] = []
    
    let decoder: NIODecoder
    var source: Any
    
    init(source: Any, decoder: NIODecoder) {
        self.source = source
        self.decoder = decoder
    }
    
    func decodeNil() -> Bool {
        return false
    }
    
    func decode(_ type: Bool.Type) throws -> Bool {
        guard let value = self.decoder.storage.currentValue as? Bool else {
            throw DecodingError.dataCorrupted(DecodingError.Context(codingPath: [], debugDescription: "无法解析\(type)", underlyingError: nil))
        }
        return value
    }
    
    func decode(_ type: String.Type) throws -> String {
        guard let value = self.decoder.storage.currentValue as? String else {
            throw DecodingError.dataCorrupted(DecodingError.Context(codingPath: [], debugDescription: "无法解析\(type)", underlyingError: nil))
        }
        return value
    }
    
    func decode(_ type: Double.Type) throws -> Double {
        guard let value = self.decoder.storage.currentValue as? Double else {
            throw DecodingError.dataCorrupted(DecodingError.Context(codingPath: [], debugDescription: "无法解析\(type)", underlyingError: nil))
        }
        return value
    }
    
    func decode(_ type: Float.Type) throws -> Float {
        guard let value = self.decoder.storage.currentValue as? Float else {
            throw DecodingError.dataCorrupted(DecodingError.Context(codingPath: [], debugDescription: "无法解析\(type)", underlyingError: nil))
        }
        return value
    }
    
    func decode(_ type: Int.Type) throws -> Int {
        guard let value = self.decoder.storage.currentValue as? Int else {
            throw DecodingError.dataCorrupted(DecodingError.Context(codingPath: [], debugDescription: "无法解析\(type)", underlyingError: nil))
        }
        return value
    }

    func decode(_ type: Int8.Type) throws -> Int8 {
        guard let value = self.decoder.storage.currentValue as? Int8 else {
            throw DecodingError.dataCorrupted(DecodingError.Context(codingPath: [], debugDescription: "无法解析\(type)", underlyingError: nil))
        }
        return value
    }
    
    func decode(_ type: Int16.Type) throws -> Int16 {
        guard let value = self.decoder.storage.currentValue as? Int16 else {
            throw DecodingError.dataCorrupted(DecodingError.Context(codingPath: [], debugDescription: "无法解析\(type)", underlyingError: nil))
        }
        return value
    }
    
    func decode(_ type: Int32.Type) throws -> Int32 {
        guard let value = self.decoder.storage.currentValue as? Int32 else {
            throw DecodingError.dataCorrupted(DecodingError.Context(codingPath: [], debugDescription: "无法解析\(type)", underlyingError: nil))
        }
        return value
    }
    
    func decode(_ type: Int64.Type) throws -> Int64 {
        guard let value = self.decoder.storage.currentValue as? Int64 else {
            throw DecodingError.dataCorrupted(DecodingError.Context(codingPath: [], debugDescription: "无法解析\(type)", underlyingError: nil))
        }
        return value
    }
    
    func decode(_ type: UInt.Type) throws -> UInt {
        guard let value = self.decoder.storage.currentValue as? UInt else {
            throw DecodingError.dataCorrupted(DecodingError.Context(codingPath: [], debugDescription: "无法解析\(type)", underlyingError: nil))
        }
        return value
    }
    
    func decode(_ type: UInt8.Type) throws -> UInt8 {
        guard let value = self.decoder.storage.currentValue as? UInt8 else {
            throw DecodingError.dataCorrupted(DecodingError.Context(codingPath: [], debugDescription: "无法解析\(type)", underlyingError: nil))
        }
        return value
    }
    
    func decode(_ type: UInt16.Type) throws -> UInt16 {
        guard let value = self.decoder.storage.currentValue as? UInt16 else {
            throw DecodingError.dataCorrupted(DecodingError.Context(codingPath: [], debugDescription: "无法解析\(type)", underlyingError: nil))
        }
        return value
    }
    
    func decode(_ type: UInt32.Type) throws -> UInt32 {
        guard let value = self.decoder.storage.currentValue as? UInt32 else {
            throw DecodingError.dataCorrupted(DecodingError.Context(codingPath: [], debugDescription: "无法解析\(type)", underlyingError: nil))
        }
        return value
    }
    
    func decode(_ type: UInt64.Type) throws -> UInt64 {
        guard let value = self.decoder.storage.currentValue as? UInt64 else {
            throw DecodingError.dataCorrupted(DecodingError.Context(codingPath: [], debugDescription: "无法解析\(type)", underlyingError: nil))
        }
        return value
    }
    
    func decode<T>(_ type: T.Type) throws -> T where T : Decodable {
        return try type.init(from: self.decoder)
    }
}
