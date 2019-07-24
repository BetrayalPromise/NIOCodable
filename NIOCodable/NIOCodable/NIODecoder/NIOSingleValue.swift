import Foundation

struct NIOSingleValue: SingleValueDecodingContainer {
    var codingPath: [CodingKey] = []
    
    let decoder: NIORealizeDecoder
    var source: Any
    
    init(source: Any, decoder: NIORealizeDecoder) {
        self.source = source
        self.decoder = decoder
    }
    
    func decodeNil() -> Bool {
        return false
    }
    
    func decode(_ type: Bool.Type) throws -> Bool {
        return false
    }
    
    func decode(_ type: String.Type) throws -> String {
        return ""
    }
    
    func decode(_ type: Double.Type) throws -> Double {
        return 0.0
    }
    
    func decode(_ type: Float.Type) throws -> Float {
        return 0.0
    }
    
    func decode(_ type: Int.Type) throws -> Int {
        return 0
    }
    
    func decode(_ type: Int8.Type) throws -> Int8 {
        return 0
    }
    
    func decode(_ type: Int16.Type) throws -> Int16 {
        return 0
    }
    
    func decode(_ type: Int32.Type) throws -> Int32 {
        return 0
    }
    
    func decode(_ type: Int64.Type) throws -> Int64 {
        return 0
    }
    
    func decode(_ type: UInt.Type) throws -> UInt {
        return 0
    }
    
    func decode(_ type: UInt8.Type) throws -> UInt8 {
        return 0
    }
    
    func decode(_ type: UInt16.Type) throws -> UInt16 {
        return 0
    }
    
    func decode(_ type: UInt32.Type) throws -> UInt32 {
        return 0
    }
    
    func decode(_ type: UInt64.Type) throws -> UInt64 {
        return 0
    }
    
    func decode<T>(_ type: T.Type) throws -> T where T : Decodable {
        return try type.init(from: self.decoder)
    }
}
