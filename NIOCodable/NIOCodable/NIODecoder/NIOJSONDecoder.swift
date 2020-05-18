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
    public var optionalContainerStrategy: NIOJSONDecoder.OptionalContainerStrategy = .useEmpty

    public var unkeyedDecodingKeyMismatchingStrategy: NIOJSONDecoder.KeyExecptionStrategy.UnkeyedDecoding.NotFound = .useExecption
    
    public var keyedDecodingKeyMismatchingStrategy: NIOJSONDecoder.KeyExecptionStrategy.KeyedDecoding.NotFound = .useExecption

    public var keyedDecodingEmptyValueStrategy: NIOJSONDecoder.EmptyExecption.KeyedDecoding.EmptyValue = .useExecption

    public var singleValueDecodingKeyMismatchingStrategy: NIOJSONDecoder.KeyExecptionStrategy.SingleValueDecoding.NotFound = .useExecption

    /// 内建类型(Bool, Int, Int8, Int16, Int32, Int64, UInt, UInt8, UInt16, UInt32, UInt64, Float, Double, String)默认值自定义
    public var boxBaseValue: BoxBaseValue = BoxBaseValue()
    
    public func decode<T>(type: T.Type, from data: Data) throws -> T? where T: Decodable {
        guard let source: Any = try? JSONSerialization.jsonObject(with: data, options: .mutableContainers) else {
            throw DecodingError.typeMismatch(type, DecodingError.Context(codingPath: [], debugDescription: "无法转化为以Array或者Dictionary为根节点的JSON数据"))
        }
        let decoder: NIODecoder = NIODecoder(wrapper: self, source: source)
        defer { decoder.cleanup() }
        do {
            return try decoder.unbox(value: source, as: type)
        } catch {
            throw error
        }
    }
    
    public init() {}
}

/// 配置策略
public extension NIOJSONDecoder {
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

//    /// 可选类型key不对应策略
//    enum KeyNotFoundStrategy {
//        case useCustom(DefaultValueControllable) /// 处理[:]这种空值字典
//        case useExecption
//        case useDefaultable
//        case useNull
//    }

    enum KeyExecptionStrategy {
        public enum SingleValueDecoding {
            public enum NotFound {
                case useCustom(KeyControllable)
                case useExecption
            }
        }

        public enum KeyedDecoding {
            public enum NotFound {
                case useCustom(KeyControllable)
                case useExecption
                case useDefaultable
                case useNull
            }
        }

        public enum UnkeyedDecoding {
            public enum NotFound {
                case useCustom(DefaultValueControllable) /// 处理[:]这种空值字典
                case useExecption
                case useDefaultable
                case useNull
            }
        }
    }

    enum EmptyExecption {
        public enum KeyedDecoding {
            public enum EmptyValue {
                case useExecption
                case useCustom(EmptyValueControllable)
                case useDefaultable
            }
        }
    }
}
