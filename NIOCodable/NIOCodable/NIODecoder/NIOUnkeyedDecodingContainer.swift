import Foundation

/// 针对数组处理
struct NIOUnkeyedDecodingContainer: UnkeyedDecodingContainer {
    public var isAtEnd: Bool {
        if self.currentIndex == self.count, !self.decoder.codingPath.isEmpty {
            self.decoder.codingPath.removeLast()
        }
        return self.currentIndex >= self.count ?? 0
    }
    
    let decoder: NIODecoder
    var source: [Any]
    var codingPath: [CodingKey] = []
    var currentIndex: Int = 0
    
    public var count: Int? {
        return self.source.count
    }
    var handle: NIOCodableHandle!

    init(decoder: NIODecoder, source: [Any]) {
        self.decoder = decoder
        self.source = source
        self.codingPath = decoder.codingPath
        self.handle = NIOCodableHandle(decoder: decoder)
    }
    
    mutating func decodeNil() throws -> Bool {
        if self.source[self.currentIndex] is NSNull {
            self.currentIndex += 1
            return true
        } else {
            return false
        }
    }
    
    mutating func decode(_ type: Bool.Type) throws -> Bool {
        return false
    }
    
    mutating func decode(_ type: String.Type) throws -> String {
        return ""
    }
    
    mutating func decode(_ type: Double.Type) throws -> Double {
        return 0.0
    }
    
    mutating func decode(_ type: Float.Type) throws -> Float {
        return 0.0
    }
    
    mutating func decode(_ type: Int.Type) throws -> Int {
        return 0
    }
    
    mutating func decode(_ type: Int8.Type) throws -> Int8 {
        return 0
    }
    
    mutating func decode(_ type: Int16.Type) throws -> Int16 {
        return 0
    }
    
    mutating func decode(_ type: Int32.Type) throws -> Int32 {
        return 0
    }
    
    mutating func decode(_ type: Int64.Type) throws -> Int64 {
        return 0
    }
    
    mutating func decode(_ type: UInt.Type) throws -> UInt {
        return 0
    }
    
    mutating func decode(_ type: UInt8.Type) throws -> UInt8 {
        return 0
    }
    
    mutating func decode(_ type: UInt16.Type) throws -> UInt16 {
        return 0
    }
    
    mutating func decode(_ type: UInt32.Type) throws -> UInt32 {
        return 0
    }
    
    mutating func decode(_ type: UInt64.Type) throws -> UInt64 {
        return 0
    }
    
    mutating func decode<T>(_ type: T.Type) throws -> T where T : Decodable {
        self.decoder.codingPath.append(NIOCodableKey(arrayIndex: self.currentIndex))
        defer {
            if self.decoder.baseNode == .array && !self.decoder.codingPath.isEmpty {
                self.decoder.codingPath.removeLast()
            }
        }

        let value: Any = self.source[self.currentIndex]

        guard let model: T = try self.decoder.unbox(value: value, as: type) else {
            switch self.decoder.wrapper?.unkeyedDecodingKeyMismatchingStrategy {
            case .useCustom(let delegate):
                guard let `model`: T = delegate.handle(key: NIOCodableKey(int: self.currentIndex), path: self.handle.codingPath, source: self.source[self.currentIndex]) as? T else {
                    throw DecodingError.valueNotFound(type, DecodingError.Context(codingPath: self.decoder.codingPath, debugDescription: "Value Execption"))
                }
                self.currentIndex += 1
                return model
            case .useDefaultable:
                if value is [AnyHashable: Any] {
                    guard let value: [AnyHashable: Any] = value as? [AnyHashable: Any] else {
                        throw DecodingError.valueNotFound(type, DecodingError.Context(codingPath: self.decoder.codingPath, debugDescription: "Value Execption"))
                    }
                    if value.count == 0 {
                        guard let replaceModel: T = try self.decoder.unbox(value: ["NoKey": "NoValue"], as: type) else {
                            throw DecodingError.valueNotFound(type, DecodingError.Context(codingPath: self.decoder.codingPath, debugDescription: "[:] Execption"))
                        }
                        self.currentIndex += 1
                        return replaceModel
                    }
                }
                throw DecodingError.valueNotFound(type, DecodingError.Context(codingPath: self.decoder.codingPath, debugDescription: "Value Execption"))
            case .useExecption, .useNull, .none:
                throw DecodingError.valueNotFound(type, DecodingError.Context(codingPath: self.decoder.codingPath, debugDescription: "Value Execption"))
            }
        }
        self.currentIndex += 1
        return model
    }
    
    mutating func nestedContainer<NestedKey>(keyedBy type: NestedKey.Type) throws -> KeyedDecodingContainer<NestedKey> where NestedKey : CodingKey {
        let value = self.source[self.currentIndex]
        guard let dictionary = value as? [AnyHashable: Any] else { fatalError() }
        self.currentIndex += 1
        return KeyedDecodingContainer(NIOKeyedDecodingContainer<NestedKey>(decoder: self.decoder, source: dictionary))
    }
    
    mutating func nestedUnkeyedContainer() throws -> UnkeyedDecodingContainer {
        return NIOUnkeyedDecodingContainer(decoder: self.decoder, source: self.source)
    }
    
    mutating func superDecoder() throws -> Decoder {
        return self.decoder
    }
}
