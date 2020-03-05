import Foundation

/*
    JSON格式正确的格式只能有如下情况
    'STRING', 'NUMBER', 'NULL', 'TRUE', 'FALSE', '{}', '[]'
 */

/// 该操作为线程不安全操作 使用者可以自行加锁
public final class NIOJSONDecoder {
    /// 类型转换策略
    public var typeStrategy: NIOJSONDecoder.TypeConvertStrategy = .default
    /// json的弱类型会有默认转化并且不会失败的情况主要针对Bool转化String的处理策略 也属于类型策略但是优先级高于类型策略
    public var booleanStrategy: NIOJSONDecoder.BooleanConvertStrategy = .useBoolean
    /// 容器使用策略
    public var containerStrategy: NIOJSONDecoder.OptionalContainerStrategy = .useEmpty
    
    public func decode<T>(type: T.Type, from data: Data) throws -> T? where T: Decodable {
        guard let source: Any = try? JSONSerialization.jsonObject(with: data, options: .mutableContainers) else {
            throw DecodingError.typeMismatch(type, DecodingError.Context(codingPath: [], debugDescription: "非JSON结构"))
        }
        let decoder: NIODecoder = NIODecoder(wrapper: self, source: source)
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
    /// Bool处理策略
    enum BooleanStrategy {
        case `default`
        case custom(BooleanConvertible)
    }

    /// 类型不一致策略
    enum TypeConvertStrategy {
        case `default`  // 默认处理
        case custom(TypeConvertible)  // 自定义处理
    }
    
    /// Bool处理策略
    enum BooleanConvertStrategy {
        case useBoolean // 使用"true"和"false"
        case useNumerical   // 使用"1"和"0"
    }

    /// 无数据时(null, 数据量为0)可选容器策略
    enum OptionalContainerStrategy {
        case useNull    // 使用null
        case useEmpty   // 使用空容器
    }
}
