import Foundation

struct NIOUnkeyed: UnkeyedDecodingContainer {
    public var isAtEnd: Bool {
        return self.currentIndex >= self.count!
    }
    
    let decoder: NIODecoder
    var source: [Any]
    var codingPath: [CodingKey] = []
    var currentIndex: Int = 0
    
    public var count: Int? {
        return self.source.count
    }
    
    weak var instance: NIOJSONDecoder?
    
    init(instance: NIOJSONDecoder?, source: [Any], decoder: NIODecoder) {
        self.instance = instance
        self.decoder = decoder
        self.source = source
        self.codingPath = decoder.codingPath
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
        guard let model: T = try self.decoder.unbox(value: self.source[self.currentIndex], as: type) else {
            fatalError()
        }
        self.currentIndex += 1
        return model
    }
    
    mutating func nestedContainer<NestedKey>(keyedBy type: NestedKey.Type) throws -> KeyedDecodingContainer<NestedKey> where NestedKey : CodingKey {
        let value = self.source[self.currentIndex]
        guard let dictionary = value as? [AnyHashable: Any] else {
            fatalError()
        }
        self.currentIndex += 1
        let container = NIOKeyed<NestedKey>(instance: self.instance, source: dictionary, decoder: self.decoder)
        return KeyedDecodingContainer(container)
    }
    
    mutating func nestedUnkeyedContainer() throws -> UnkeyedDecodingContainer {
        return NIOUnkeyed(instance: self.instance, source: self.source, decoder: self.decoder)
    }
    
    mutating func superDecoder() throws -> Decoder {
        return self.decoder
    }
}
