import Foundation

/*
    JSON格式正确的格式只能有如下情况
    'STRING', 'NUMBER', 'NULL', 'TRUE', 'FALSE', '{}', '[]'
 */

public final class NIOJSONDecoder {
    /// 类型转换策略
    public var decodingTypeStrategy: NIOJSONDecoder.DecodingTypeStrategy = .default
    
    /// json的弱类型会有默认转化并且不会失败的情况主要针对Bool转化String的处理策略
    public var convertNumericalStrategy: NIOJSONDecoder.ConvertNumericalStrategy = .useOneself
    
    public func decode<T>(type: T.Type, from data: Data) throws -> T? where T: Decodable {
        guard let source: Any = try? JSONSerialization.jsonObject(with: data, options: .mutableContainers) else {
            throw DecodingError.typeMismatch(type, DecodingError.Context(codingPath: [], debugDescription: "非JSON结构"))
        }
        let decoder: NIODecoder = NIODecoder(instance: self, source: source)
        do {
            return try decoder.unbox(value: source, as: type)
        } catch {
            throw DecodingError.dataCorrupted(DecodingError.Context(codingPath: [], debugDescription: "无法解析\(type)", underlyingError: error))
        }
    }
    
    public init() {}
}

/// 配置策略
public extension NIOJSONDecoder {
    /// 类型定制策略
    enum DecodingTypeStrategy {
        case `default`
        case custom(CustomConvertible)
    }
    
    /// Bool转String处理策略
    enum ConvertNumericalStrategy {
        case useOneself // 使用"true"和"false"
        case userNumerical // 使用"1"和"0"
    }
}
