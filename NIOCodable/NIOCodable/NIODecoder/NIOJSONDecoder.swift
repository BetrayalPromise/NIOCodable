import Foundation

public final class NIOJSONDecoder {
    public func decode<T>(type: T.Type, from data: Data) throws -> T where T: Decodable {
        do {
            guard let source: Any = try? JSONSerialization.jsonObject(with: data, options: .mutableContainers) else {
                throw DecodingError.typeMismatch(type, DecodingError.Context(codingPath: [], debugDescription: "非JSON对象结构"))
            }
            let decoder: NIODecoder = NIODecoder(source: source)
            guard let value = try decoder.unbox(source, as: type) else {
                throw DecodingError.valueNotFound(type, DecodingError.Context(codingPath: [], debugDescription: "无JSON顶级结构"))
            }
            decoder.storage.pop()
            return value
        } catch {
            throw DecodingError.dataCorrupted(DecodingError.Context(codingPath: [], debugDescription: "无效的JSON结构", underlyingError: error))
        }
    }
    
    public init() {}
}


