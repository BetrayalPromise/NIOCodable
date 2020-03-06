import Foundation

/*
    JSON格式正确的格式只能有如下情况
    'STRING', 'NUMBER', 'NULL', 'TRUE', 'FALSE', '{}', '[]'
 */

/// 该操作为线程不安全操作 使用者可以自行加锁
public final class NIOJSONDecoder {
    /// 类型转换策略
    public var convertTypeStrategy: NIOJSONDecoder.ConvertTypeStrategy = .useDefaultable
    /// 容器使用策略
    public var containerStrategy: NIOJSONDecoder.OptionalContainerStrategy = .useEmpty
    /// 单值范围异常策略不支持可选类型
    public var scopeExecptionStrategy: NIOJSONDecoder.ScopeExecptionStrategy = .useDefaultable

    /// 非可选基本类型
    public var nonOptionalKeyNotFoundStrategy: NIOJSONDecoder.NonOptionalKeyNotFoundStrategy = .useExecption
    /// 可选基本类型
    public var optionalKeyNotFoundStrategy: NIOJSONDecoder.OptionalKeyNotFoundStrategy = .useExecption

    /// 非可选基本类型
    public var nonOptionalValueNotFoundStrategy: NIOJSONDecoder.NonOptionalValueNotFoundStrategy = .useExecption
    /// 可选基本类型
    public var optionalValueNotFoundStrategy: NIOJSONDecoder.OptionalKeyNotFoundStrategy = .useExecption

    /// codable内建类型(Bool, Int, Int8, Int16, Int32, Int64, UInt, UInt8, UInt16, UInt32, UInt64, Float, Double, String)默认值自定义
    public var boxBaseValue: BoxBaseValue = BoxBaseValue()
    
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
    enum ScopeExecptionStrategy {
        case useDefaultable
        case useCustom(SingleValueDecodingScopeControllable)
    }

    /// 类型不一致策略
    enum ConvertTypeStrategy {
        case useDefaultable  // 默认处理
        case useCustom(TypeConvertible)  // 自定义处理
    }

    /// 无数据时(null, 数据量为0)可选容器策略
    enum OptionalContainerStrategy {
        case useNull    // 使用null
        case useEmpty   // 使用空容器
    }

    /// 非可选类型key不对应策略
    enum NonOptionalKeyNotFoundStrategy {
        case useExecption
        case useDefaultable
    }

    /// 可选类型key不对应策略
    enum OptionalKeyNotFoundStrategy {
        case useExecption
        case useDefaultable
        case useNull
    }

    enum NonOptionalValueNotFoundStrategy {
        case useExecption
        case useDefaultValue
    }

    enum OptionalValueNotFoundStrategy {
        case useExecption
        case useDefaultValue
        case useNull
    }
}
