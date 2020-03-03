import Foundation

class NIODecoder: Decoder {
    var codingPath: [CodingKey] = []
    var userInfo: [CodingUserInfoKey : Any] = [:]
    var source: Any
    var storage: OperationData = OperationData()
    weak var instance: NIOJSONDecoder?

    init(instance: NIOJSONDecoder, source: Any, codingPath: [CodingKey] = [], userInfo: [CodingUserInfoKey : Any] = [:]) {
        self.instance = instance
        self.source = source
        self.codingPath = codingPath
        self.userInfo = userInfo
    }
    
    func container<Key>(keyedBy type: Key.Type) throws -> KeyedDecodingContainer<Key> where Key : CodingKey {
        guard let dictionary: [AnyHashable: Any] = self.storage.currentValue as? [AnyHashable: Any] else {
            return KeyedDecodingContainer<Key>(NIOKeyedDecodingContainer(instance: self.instance, source: [:], decoder: self))
        }
        return KeyedDecodingContainer<Key>(NIOKeyedDecodingContainer(instance: self.instance, source: dictionary, decoder: self))
    }
    
    func unkeyedContainer() throws -> UnkeyedDecodingContainer {
        guard let array: [Any] = self.storage.currentValue as? [Any] else {
            return NIOUnkeyedDecodingContainer(instance: self.instance, source: [], decoder: self)
        }
        return NIOUnkeyedDecodingContainer(instance: self.instance, source: array, decoder: self)
    }
    
    func singleValueContainer() throws -> SingleValueDecodingContainer {
        return NIOSingleValueDecodingContainer(source: self.source, decoder: self)
    }
}

extension NIODecoder {
    func unbox<T>(value: Any, as type: T.Type) throws -> T? where T: Decodable {
        self.storage.push(value)
        defer { self.storage.pop() }
        do {
            return try type.init(from: self)
        } catch  {
            print(error)
            throw error
        }
    }
}

struct OperationData {
    private(set) var container: [Any] = []
    
    var count: Int { return self.container.count }
    
    var currentValue: Any? { return self.container.last }
    
    mutating func push(_ value: Any) { self.container.append(value) }
    
    mutating func pop() { if self.container.count > 0 { self.container.removeLast() } }
}
