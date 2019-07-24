import Foundation

class NIORealizeDecoder: Decoder {
    var codingPath: [CodingKey] = []
    var userInfo: [CodingUserInfoKey : Any] = [:]
    var source: Any
    var storage: OperationData = OperationData()
    
    init(source: Any, codingPath: [CodingKey] = [], userInfo: [CodingUserInfoKey : Any] = [:]) {
        self.source = source
        self.codingPath = codingPath
        self.userInfo = userInfo
        self.storage.push(source)
    }
    
    func container<Key>(keyedBy type: Key.Type) throws -> KeyedDecodingContainer<Key> where Key : CodingKey {
        guard let dictionary: [AnyHashable: Any] = self.storage.currentValue as? [AnyHashable: Any] else {
            return KeyedDecodingContainer<Key>(NIOKeyed(source: [:], decoder: self))
        }
        return KeyedDecodingContainer<Key>(NIOKeyed(source: dictionary, decoder: self))
    }
    
    func unkeyedContainer() throws -> UnkeyedDecodingContainer {
        guard let array: [Any] = self.storage.currentValue as? [Any] else {
            return NIOUnkeyed(source: [], decoder: self)
        }
        return NIOUnkeyed(source: array, decoder: self)
    }
    
    func singleValueContainer() throws -> SingleValueDecodingContainer {
        return NIOSingleValue(source: self.source, decoder: self)
    }
}

extension NIORealizeDecoder {
    func unbox<T>(_ value: Any, as type: T.Type) throws -> T? where T: Decodable {
        self.storage.push(value)
        defer {
            self.storage.pop()
        }
        return try type.init(from: self)
    }
}

struct OperationData {
    private(set) var container: [Any] = []
    
    var count: Int {
        return self.container.count
    }
    
    var currentValue: Any {
        precondition(!self.container.isEmpty, "Empty container stack.")
        return self.container.last!
    }
    
    mutating func push(_ value: Any) {
        self.container.append(value)
    }
    
    mutating func pop() {
        precondition(!self.container.isEmpty, "Empty container stack.")
        self.container.removeLast()
    }
}
