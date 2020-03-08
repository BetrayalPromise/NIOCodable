import Foundation

/// 基础类型转换处理
public protocol TypeConvertible {
    // MARK: Bool
    func toBool(key: CodingKey, value: NSNull) -> Bool
    func toBool(key: CodingKey, value: NSNull) -> Bool?

    func toBool(key: CodingKey, value: Bool) -> Bool
    func toBool(key: CodingKey, value: Bool) -> Bool?

    func toBool(key: CodingKey, value: Int) -> Bool
    func toBool(key: CodingKey, value: Int) -> Bool?

    func toBool(key: CodingKey, value: Int8) -> Bool
    func toBool(key: CodingKey, value: Int8) -> Bool?

    func toBool(key: CodingKey, value: Int16) -> Bool
    func toBool(key: CodingKey, value: Int16) -> Bool?

    func toBool(key: CodingKey, value: Int32) -> Bool
    func toBool(key: CodingKey, value: Int32) -> Bool?

    func toBool(key: CodingKey, value: Int64) -> Bool
    func toBool(key: CodingKey, value: Int64) -> Bool?

    func toBool(key: CodingKey, value: UInt) -> Bool
    func toBool(key: CodingKey, value: UInt) -> Bool?

    func toBool(key: CodingKey, value: UInt8) -> Bool
    func toBool(key: CodingKey, value: UInt8) -> Bool?

    func toBool(key: CodingKey, value: UInt16) -> Bool
    func toBool(key: CodingKey, value: UInt16) -> Bool?

    func toBool(key: CodingKey, value: UInt32) -> Bool
    func toBool(key: CodingKey, value: UInt32) -> Bool?


    func toBool(key: CodingKey, value: UInt64) -> Bool
    func toBool(key: CodingKey, value: UInt64) -> Bool?

    func toBool(key: CodingKey, value: Float) -> Bool
    func toBool(key: CodingKey, value: Float) -> Bool?

    func toBool(key: CodingKey, value: Double) -> Bool
    func toBool(key: CodingKey, value: Double) -> Bool?

    func toBool(key: CodingKey, value: String) -> Bool
    func toBool(key: CodingKey, value: String) -> Bool?

    func toBool(key: CodingKey, value: [AnyHashable: Any]) -> Bool
    func toBool(key: CodingKey, value: [AnyHashable: Any]) -> Bool?

    func toBool(key: CodingKey, value: [Any]) -> Bool
    func toBool(key: CodingKey, value: [Any]) -> Bool?


    // MARK: - Int
    func toInt(key: CodingKey, value: NSNull) -> Int
    func toInt(key: CodingKey, value: NSNull) -> Int?

    func toInt(key: CodingKey, value: Bool) -> Int
    func toInt(key: CodingKey, value: Bool) -> Int?

    func toInt(key: CodingKey, value: Int) -> Int
    func toInt(key: CodingKey, value: Int) -> Int?

    func toInt(key: CodingKey, value: Int8) -> Int
    func toInt(key: CodingKey, value: Int8) -> Int?

    func toInt(key: CodingKey, value: Int16) -> Int
    func toInt(key: CodingKey, value: Int16) -> Int?

    func toInt(key: CodingKey, value: Int32) -> Int
    func toInt(key: CodingKey, value: Int32) -> Int?

    func toInt(key: CodingKey, value: Int64) -> Int
    func toInt(key: CodingKey, value: Int64) -> Int?

    func toInt(key: CodingKey, value: UInt) -> Int
    func toInt(key: CodingKey, value: UInt) -> Int?

    func toInt(key: CodingKey, value: UInt8) -> Int
    func toInt(key: CodingKey, value: UInt8) -> Int?

    func toInt(key: CodingKey, value: UInt16) -> Int
    func toInt(key: CodingKey, value: UInt16) -> Int?

    func toInt(key: CodingKey, value: UInt32) -> Int
    func toInt(key: CodingKey, value: UInt32) -> Int?

    func toInt(key: CodingKey, value: UInt64) -> Int
    func toInt(key: CodingKey, value: UInt64) -> Int?

    func toInt(key: CodingKey, value: Float) -> Int
    func toInt(key: CodingKey, value: Float) -> Int?

    func toInt(key: CodingKey, value: Double) -> Int
    func toInt(key: CodingKey, value: Double) -> Int?

    func toInt(key: CodingKey, value: String) -> Int
    func toInt(key: CodingKey, value: String) -> Int?

    func toInt(key: CodingKey, value: [AnyHashable: Any]) -> Int
    func toInt(key: CodingKey, value: [AnyHashable: Any]) -> Int?

    func toInt(key: CodingKey, value: [Any]) -> Int
    func toInt(key: CodingKey, value: [Any]) -> Int?

    // MARK:  - Int8
    func toInt8(key: CodingKey, value: NSNull) -> Int8
    func toInt8(key: CodingKey, value: NSNull) -> Int8?

    func toInt8(key: CodingKey, value: Bool) -> Int8
    func toInt8(key: CodingKey, value: Bool) -> Int8?

    func toInt8(key: CodingKey, value: Int) -> Int8
    func toInt8(key: CodingKey, value: Int) -> Int8?

    func toInt8(key: CodingKey, value: Int8) -> Int8
    func toInt8(key: CodingKey, value: Int8) -> Int8?

    func toInt8(key: CodingKey, value: Int16) -> Int8
    func toInt8(key: CodingKey, value: Int16) -> Int8?

    func toInt8(key: CodingKey, value: Int32) -> Int8
    func toInt8(key: CodingKey, value: Int32) -> Int8?

    func toInt8(key: CodingKey, value: Int64) -> Int8
    func toInt8(key: CodingKey, value: Int64) -> Int8?

    func toInt8(key: CodingKey, value: UInt) -> Int8
    func toInt8(key: CodingKey, value: UInt) -> Int8?

    func toInt8(key: CodingKey, value: UInt8) -> Int8
    func toInt8(key: CodingKey, value: UInt8) -> Int8?

    func toInt8(key: CodingKey, value: UInt16) -> Int8
    func toInt8(key: CodingKey, value: UInt16) -> Int8?

    func toInt8(key: CodingKey, value: UInt32) -> Int8
    func toInt8(key: CodingKey, value: UInt32) -> Int8?

    func toInt8(key: CodingKey, value: UInt64) -> Int8
    func toInt8(key: CodingKey, value: UInt64) -> Int8?

    func toInt8(key: CodingKey, value: Float) -> Int8
    func toInt8(key: CodingKey, value: Float) -> Int8?

    func toInt8(key: CodingKey, value: Double) -> Int8
    func toInt8(key: CodingKey, value: Double) -> Int8?

    func toInt8(key: CodingKey, value: String) -> Int8
    func toInt8(key: CodingKey, value: String) -> Int8?

    func toInt8(key: CodingKey, value: [AnyHashable: Any]) -> Int8
    func toInt8(key: CodingKey, value: [AnyHashable: Any]) -> Int8?

    func toInt8(key: CodingKey, value: [Any]) -> Int8
    func toInt8(key: CodingKey, value: [Any]) -> Int8?

    // MARK: - Int16
    func toInt16(key: CodingKey, value: NSNull) -> Int16
    func toInt16(key: CodingKey, value: NSNull) -> Int16?

    func toInt16(key: CodingKey, value: Bool) -> Int16
    func toInt16(key: CodingKey, value: Bool) -> Int16?

    func toInt16(key: CodingKey, value: Int) -> Int16
    func toInt16(key: CodingKey, value: Int) -> Int16?

    func toInt16(key: CodingKey, value: Int8) -> Int16
    func toInt16(key: CodingKey, value: Int8) -> Int16?

    func toInt16(key: CodingKey, value: Int16) -> Int16
    func toInt16(key: CodingKey, value: Int16) -> Int16?

    func toInt16(key: CodingKey, value: Int32) -> Int16
    func toInt16(key: CodingKey, value: Int32) -> Int16?

    func toInt16(key: CodingKey, value: Int64) -> Int16
    func toInt16(key: CodingKey, value: Int64) -> Int16?

    func toInt16(key: CodingKey, value: UInt) -> Int16
    func toInt16(key: CodingKey, value: UInt) -> Int16?

    func toInt16(key: CodingKey, value: UInt8) -> Int16
    func toInt16(key: CodingKey, value: UInt8) -> Int16?

    func toInt16(key: CodingKey, value: UInt16) -> Int16
    func toInt16(key: CodingKey, value: UInt16) -> Int16?

    func toInt16(key: CodingKey, value: UInt32) -> Int16
    func toInt16(key: CodingKey, value: UInt32) -> Int16?

    func toInt16(key: CodingKey, value: UInt64) -> Int16
    func toInt16(key: CodingKey, value: UInt64) -> Int16?

    func toInt16(key: CodingKey, value: Float) -> Int16
    func toInt16(key: CodingKey, value: Float) -> Int16?

    func toInt16(key: CodingKey, value: Double) -> Int16
    func toInt16(key: CodingKey, value: Double) -> Int16?

    func toInt16(key: CodingKey, value: String) -> Int16
    func toInt16(key: CodingKey, value: String) -> Int16?

    func toInt16(key: CodingKey, value: [AnyHashable: Any]) -> Int16
    func toInt16(key: CodingKey, value: [AnyHashable: Any]) -> Int16?

    func toInt16(key: CodingKey, value: [Any]) -> Int16
    func toInt16(key: CodingKey, value: [Any]) -> Int16?

    // MARK: - Int32
    func toInt32(key: CodingKey, value: NSNull) -> Int32
    func toInt32(key: CodingKey, value: NSNull) -> Int32?
    
    func toInt32(key: CodingKey, value: Bool) -> Int32
    func toInt32(key: CodingKey, value: Bool) -> Int32?
    
    func toInt32(key: CodingKey, value: Int) -> Int32
    func toInt32(key: CodingKey, value: Int) -> Int32?
    
    func toInt32(key: CodingKey, value: Int8) -> Int32
    func toInt32(key: CodingKey, value: Int8) -> Int32?
    
    func toInt32(key: CodingKey, value: Int16) -> Int32
    func toInt32(key: CodingKey, value: Int16) -> Int32?

    func toInt32(key: CodingKey, value: Int32) -> Int32
    func toInt32(key: CodingKey, value: Int32) -> Int32?
    
    func toInt32(key: CodingKey, value: Int64) -> Int32
    func toInt32(key: CodingKey, value: Int64) -> Int32?
    
    func toInt32(key: CodingKey, value: UInt) -> Int32
    func toInt32(key: CodingKey, value: UInt) -> Int32?
    
    func toInt32(key: CodingKey, value: UInt8) -> Int32
    func toInt32(key: CodingKey, value: UInt8) -> Int32?
    
    func toInt32(key: CodingKey, value: UInt16) -> Int32
    func toInt32(key: CodingKey, value: UInt16) -> Int32?
    
    func toInt32(key: CodingKey, value: UInt32) -> Int32
    func toInt32(key: CodingKey, value: UInt32) -> Int32?
    
    func toInt32(key: CodingKey, value: UInt64) -> Int32
    func toInt32(key: CodingKey, value: UInt64) -> Int32?
    
    func toInt32(key: CodingKey, value: Float) -> Int32
    func toInt32(key: CodingKey, value: Float) -> Int32?
    
    func toInt32(key: CodingKey, value: Double) -> Int32
    func toInt32(key: CodingKey, value: Double) -> Int32?
    
    func toInt32(key: CodingKey, value: String) -> Int32
    func toInt32(key: CodingKey, value: String) -> Int32?

    func toInt32(key: CodingKey, value: [AnyHashable: Any]) -> Int32
    func toInt32(key: CodingKey, value: [AnyHashable: Any]) -> Int32?

    func toInt32(key: CodingKey, value: [Any]) -> Int32
    func toInt32(key: CodingKey, value: [Any]) -> Int32?

    // MARK: - Int64
    func toInt64(key: CodingKey, value: NSNull) -> Int64
    func toInt64(key: CodingKey, value: NSNull) -> Int64?

    func toInt64(key: CodingKey, value: Bool) -> Int64
    func toInt64(key: CodingKey, value: Bool) -> Int64?
    
    func toInt64(key: CodingKey, value: Int) -> Int64
    func toInt64(key: CodingKey, value: Int) -> Int64?
    
    func toInt64(key: CodingKey, value: Int8) -> Int64
    func toInt64(key: CodingKey, value: Int8) -> Int64?
    
    func toInt64(key: CodingKey, value: Int16) -> Int64
    func toInt64(key: CodingKey, value: Int16) -> Int64?
    
    func toInt64(key: CodingKey, value: Int32) -> Int64
    func toInt64(key: CodingKey, value: Int32) -> Int64?

    func toInt64(key: CodingKey, value: Int64) -> Int64
    func toInt64(key: CodingKey, value: Int64) -> Int64?
    
    func toInt64(key: CodingKey, value: UInt) -> Int64
    func toInt64(key: CodingKey, value: UInt) -> Int64?
    
    func toInt64(key: CodingKey, value: UInt8) -> Int64
    func toInt64(key: CodingKey, value: UInt8) -> Int64?
    
    func toInt64(key: CodingKey, value: UInt16) -> Int64
    func toInt64(key: CodingKey, value: UInt16) -> Int64?
    
    func toInt64(key: CodingKey, value: UInt32) -> Int64
    func toInt64(key: CodingKey, value: UInt32) -> Int64?
    
    func toInt64(key: CodingKey, value: UInt64) -> Int64
    func toInt64(key: CodingKey, value: UInt64) -> Int64?
    
    func toInt64(key: CodingKey, value: Float) -> Int64
    func toInt64(key: CodingKey, value: Float) -> Int64?
    
    func toInt64(key: CodingKey, value: Double) -> Int64
    func toInt64(key: CodingKey, value: Double) -> Int64?
    
    func toInt64(key: CodingKey, value: String) -> Int64
    func toInt64(key: CodingKey, value: String) -> Int64?

    func toInt64(key: CodingKey, value: [AnyHashable: Any]) -> Int64
    func toInt64(key: CodingKey, value: [AnyHashable: Any]) -> Int64?

    func toInt64(key: CodingKey, value: [Any]) -> Int64
    func toInt64(key: CodingKey, value: [Any]) -> Int64?

    // MARK: - UInt
    func toUInt(key: CodingKey, value: NSNull) -> UInt
    func toUInt(key: CodingKey, value: NSNull) -> UInt?

    func toUInt(key: CodingKey, value: Bool) -> UInt
    func toUInt(key: CodingKey, value: Bool) -> UInt?
    
    func toUInt(key: CodingKey, value: Int) throws -> UInt
    func toUInt(key: CodingKey, value: Int) throws -> UInt?
    
    func toUInt(key: CodingKey, value: Int8) throws -> UInt
    func toUInt(key: CodingKey, value: Int8) throws ->  UInt?
    
    func toUInt(key: CodingKey, value: Int16) throws -> UInt
    func toUInt(key: CodingKey, value: Int16) throws -> UInt?
    
    func toUInt(key: CodingKey, value: Int32) throws -> UInt
    func toUInt(key: CodingKey, value: Int32) throws -> UInt?
    
    func toUInt(key: CodingKey, value: Int64) throws -> UInt
    func toUInt(key: CodingKey, value: Int64) throws -> UInt?

    func toUInt(key: CodingKey, value: UInt) -> UInt
    func toUInt(key: CodingKey, value: UInt) -> UInt?
    
    func toUInt(key: CodingKey, value: UInt8) -> UInt
    func toUInt(key: CodingKey, value: UInt8) -> UInt?
    
    func toUInt(key: CodingKey, value: UInt16) -> UInt
    func toUInt(key: CodingKey, value: UInt16) -> UInt?
    
    func toUInt(key: CodingKey, value: UInt32) -> UInt
    func toUInt(key: CodingKey, value: UInt32) -> UInt?
    
    func toUInt(key: CodingKey, value: UInt64) -> UInt
    func toUInt(key: CodingKey, value: UInt64) -> UInt?
    
    func toUInt(key: CodingKey, value: Float) throws -> UInt
    func toUInt(key: CodingKey, value: Float) throws -> UInt?
    
    func toUInt(key: CodingKey, value: Double) throws -> UInt
    func toUInt(key: CodingKey, value: Double) throws -> UInt?
    
    func toUInt(key: CodingKey, value: String) -> UInt
    func toUInt(key: CodingKey, value: String) -> UInt?

    func toUInt(key: CodingKey, value: [AnyHashable: Any]) -> UInt
    func toUInt(key: CodingKey, value: [AnyHashable: Any]) -> UInt?

    func toUInt(key: CodingKey, value: [Any]) -> UInt
    func toUInt(key: CodingKey, value: [Any]) -> UInt?

    // MARK: - UInt8
    func toUInt8(key: CodingKey, value: NSNull) -> UInt8
    func toUInt8(key: CodingKey, value: NSNull) -> UInt8?

    func toUInt8(key: CodingKey, value: Bool) -> UInt8
    func toUInt8(key: CodingKey, value: Bool) -> UInt8?

    func toUInt8(key: CodingKey, value: Int) throws -> UInt8
    func toUInt8(key: CodingKey, value: Int) throws -> UInt8?

    func toUInt8(key: CodingKey, value: Int8) throws -> UInt8
    func toUInt8(key: CodingKey, value: Int8) throws -> UInt8?

    func toUInt8(key: CodingKey, value: Int16) throws -> UInt8
    func toUInt8(key: CodingKey, value: Int16) throws -> UInt8?
    
    func toUInt8(key: CodingKey, value: Int32) throws -> UInt8
    func toUInt8(key: CodingKey, value: Int32) throws -> UInt8?

    func toUInt8(key: CodingKey, value: Int64) throws -> UInt8
    func toUInt8(key: CodingKey, value: Int64) throws -> UInt8?

    func toUInt8(key: CodingKey, value: UInt) -> UInt8
    func toUInt8(key: CodingKey, value: UInt) -> UInt8?

    func toUInt8(key: CodingKey, value: UInt8) -> UInt8
    func toUInt8(key: CodingKey, value: UInt8) -> UInt8?

    func toUInt8(key: CodingKey, value: UInt16) -> UInt8
    func toUInt8(key: CodingKey, value: UInt16) -> UInt8?

    func toUInt8(key: CodingKey, value: UInt32) -> UInt8
    func toUInt8(key: CodingKey, value: UInt32) -> UInt8?

    func toUInt8(key: CodingKey, value: UInt64) -> UInt8
    func toUInt8(key: CodingKey, value: UInt64) -> UInt8?

    func toUInt8(key: CodingKey, value: Float) throws -> UInt8
    func toUInt8(key: CodingKey, value: Float) throws -> UInt8?

    func toUInt8(key: CodingKey, value: Double) throws -> UInt8
    func toUInt8(key: CodingKey, value: Double) throws -> UInt8?

    func toUInt8(key: CodingKey, value: String) -> UInt8
    func toUInt8(key: CodingKey, value: String) -> UInt8?

    func toUInt8(key: CodingKey, value: [AnyHashable: Any]) -> UInt8
    func toUInt8(key: CodingKey, value: [AnyHashable: Any]) -> UInt8?

    func toUInt8(key: CodingKey, value: [Any]) -> UInt8
    func toUInt8(key: CodingKey, value: [Any]) -> UInt8?

    // MARK: - UInt16
    func toUInt16(key: CodingKey, value: NSNull) -> UInt16
    func toUInt16(key: CodingKey, value: NSNull) -> UInt16?

    func toUInt16(key: CodingKey, value: Bool) -> UInt16
    func toUInt16(key: CodingKey, value: Bool) -> UInt16?

    func toUInt16(key: CodingKey, value: Int) throws -> UInt16
    func toUInt16(key: CodingKey, value: Int) throws -> UInt16?

    func toUInt16(key: CodingKey, value: Int8) throws -> UInt16
    func toUInt16(key: CodingKey, value: Int8) throws -> UInt16?

    func toUInt16(key: CodingKey, value: Int16) throws -> UInt16
    func toUInt16(key: CodingKey, value: Int16) throws -> UInt16?

    func toUInt16(key: CodingKey, value: Int32) throws -> UInt16
    func toUInt16(key: CodingKey, value: Int32) throws -> UInt16?

    func toUInt16(key: CodingKey, value: Int64) throws -> UInt16
    func toUInt16(key: CodingKey, value: Int64) throws -> UInt16?

    func toUInt16(key: CodingKey, value: UInt) -> UInt16
    func toUInt16(key: CodingKey, value: UInt) -> UInt16?

    func toUInt16(key: CodingKey, value: UInt8) -> UInt16
    func toUInt16(key: CodingKey, value: UInt8) -> UInt16?

    func toUInt16(key: CodingKey, value: UInt16) -> UInt16
    func toUInt16(key: CodingKey, value: UInt16) -> UInt16?

    func toUInt16(key: CodingKey, value: UInt32) -> UInt16
    func toUInt16(key: CodingKey, value: UInt32) -> UInt16?

    func toUInt16(key: CodingKey, value: UInt64) -> UInt16
    func toUInt16(key: CodingKey, value: UInt64) -> UInt16?

    func toUInt16(key: CodingKey, value: Float) throws -> UInt16
    func toUInt16(key: CodingKey, value: Float) throws -> UInt16?

    func toUInt16(key: CodingKey, value: Double) throws -> UInt16
    func toUInt16(key: CodingKey, value: Double) throws -> UInt16?

    func toUInt16(key: CodingKey, value: String) -> UInt16
    func toUInt16(key: CodingKey, value: String) -> UInt16?

    func toUInt16(key: CodingKey, value: [AnyHashable: Any]) -> UInt16
    func toUInt16(key: CodingKey, value: [AnyHashable: Any]) -> UInt16?

    func toUInt16(key: CodingKey, value: [Any]) -> UInt16
    func toUInt16(key: CodingKey, value: [Any]) -> UInt16?

    // MARK: - UInt32
    func toUInt32(key: CodingKey, value: NSNull) -> UInt32
    func toUInt32(key: CodingKey, value: NSNull) -> UInt32?

    func toUInt32(key: CodingKey, value: Bool) -> UInt32
    func toUInt32(key: CodingKey, value: Bool) -> UInt32?

    func toUInt32(key: CodingKey, value: Int) throws -> UInt32
    func toUInt32(key: CodingKey, value: Int) throws -> UInt32?

    func toUInt32(key: CodingKey, value: Int8) throws -> UInt32
    func toUInt32(key: CodingKey, value: Int8) throws -> UInt32?

    func toUInt32(key: CodingKey, value: Int16) throws -> UInt32
    func toUInt32(key: CodingKey, value: Int16) throws -> UInt32?

    func toUInt32(key: CodingKey, value: Int32) throws -> UInt32
    func toUInt32(key: CodingKey, value: Int32) throws -> UInt32?

    func toUInt32(key: CodingKey, value: Int64) throws -> UInt32
    func toUInt32(key: CodingKey, value: Int64) throws ->  UInt32?

    func toUInt32(key: CodingKey, value: UInt) -> UInt32
    func toUInt32(key: CodingKey, value: UInt) -> UInt32?

    func toUInt32(key: CodingKey, value: UInt8) -> UInt32
    func toUInt32(key: CodingKey, value: UInt8) -> UInt32?

    func toUInt32(key: CodingKey, value: UInt16) -> UInt32
    func toUInt32(key: CodingKey, value: UInt16) -> UInt32?

    func toUInt32(key: CodingKey, value: UInt32) -> UInt32
    func toUInt32(key: CodingKey, value: UInt32) -> UInt32?

    func toUInt32(key: CodingKey, value: UInt64) -> UInt32
    func toUInt32(key: CodingKey, value: UInt64) -> UInt32?

    func toUInt32(key: CodingKey, value: Float) throws -> UInt32
    func toUInt32(key: CodingKey, value: Float) throws -> UInt32?

    func toUInt32(key: CodingKey, value: Double) throws -> UInt32
    func toUInt32(key: CodingKey, value: Double) throws -> UInt32?

    func toUInt32(key: CodingKey, value: String) -> UInt32
    func toUInt32(key: CodingKey, value: String) -> UInt32?

    func toUInt32(key: CodingKey, value: [AnyHashable: Any]) -> UInt32
    func toUInt32(key: CodingKey, value: [AnyHashable: Any]) -> UInt32?

    func toUInt32(key: CodingKey, value: [Any]) -> UInt32
    func toUInt32(key: CodingKey, value: [Any]) -> UInt32?

    // MARK: - UInt64
    func toUInt64(key: CodingKey, value: NSNull) -> UInt64
    func toUInt64(key: CodingKey, value: NSNull) -> UInt64?

    func toUInt64(key: CodingKey, value: Bool) -> UInt64
    func toUInt64(key: CodingKey, value: Bool) -> UInt64?

    func toUInt64(key: CodingKey, value: Int) throws -> UInt64
    func toUInt64(key: CodingKey, value: Int) throws -> UInt64?

    func toUInt64(key: CodingKey, value: Int8) throws -> UInt64
    func toUInt64(key: CodingKey, value: Int8) throws -> UInt64?

    func toUInt64(key: CodingKey, value: Int16) throws -> UInt64
    func toUInt64(key: CodingKey, value: Int16) throws -> UInt64?

    func toUInt64(key: CodingKey, value: Int32) throws -> UInt64
    func toUInt64(key: CodingKey, value: Int32) throws -> UInt64?

    func toUInt64(key: CodingKey, value: Int64) throws -> UInt64
    func toUInt64(key: CodingKey, value: Int64) throws -> UInt64?

    func toUInt64(key: CodingKey, value: UInt) -> UInt64
    func toUInt64(key: CodingKey, value: UInt) -> UInt64?

    func toUInt64(key: CodingKey, value: UInt8) -> UInt64
    func toUInt64(key: CodingKey, value: UInt8) -> UInt64?

    func toUInt64(key: CodingKey, value: UInt16) -> UInt64
    func toUInt64(key: CodingKey, value: UInt16) -> UInt64?

    func toUInt64(key: CodingKey, value: UInt32) -> UInt64
    func toUInt64(key: CodingKey, value: UInt32) -> UInt64?

    func toUInt64(key: CodingKey, value: UInt64) -> UInt64
    func toUInt64(key: CodingKey, value: UInt64) -> UInt64?

    func toUInt64(key: CodingKey, value: Float) throws -> UInt64
    func toUInt64(key: CodingKey, value: Float) throws -> UInt64?

    func toUInt64(key: CodingKey, value: Double) throws -> UInt64
    func toUInt64(key: CodingKey, value: Double) throws -> UInt64?

    func toUInt64(key: CodingKey, value: String) -> UInt64
    func toUInt64(key: CodingKey, value: String) -> UInt64?

    func toUInt64(key: CodingKey, value: [AnyHashable: Any]) -> UInt64
    func toUInt64(key: CodingKey, value: [AnyHashable: Any]) -> UInt64?

    func toUInt64(key: CodingKey, value: [Any]) -> UInt64
    func toUInt64(key: CodingKey, value: [Any]) -> UInt64?

    // MARK: - Float
    func toFloat(key: CodingKey, value: NSNull) -> Float
    func toFloat(key: CodingKey, value: NSNull) -> Float?

    func toFloat(key: CodingKey, value: Bool) -> Float
    func toFloat(key: CodingKey, value: Bool) -> Float?

    func toFloat(key: CodingKey, value: Int) -> Float
    func toFloat(key: CodingKey, value: Int) -> Float?

    func toFloat(key: CodingKey, value: Int8) -> Float
    func toFloat(key: CodingKey, value: Int8) -> Float?

    func toFloat(key: CodingKey, value: Int16) -> Float
    func toFloat(key: CodingKey, value: Int16) -> Float?

    func toFloat(key: CodingKey, value: Int32) -> Float
    func toFloat(key: CodingKey, value: Int32) -> Float?

    func toFloat(key: CodingKey, value: Int64) -> Float
    func toFloat(key: CodingKey, value: Int64) -> Float?

    func toFloat(key: CodingKey, value: UInt) -> Float
    func toFloat(key: CodingKey, value: UInt) -> Float?

    func toFloat(key: CodingKey, value: UInt8) -> Float
    func toFloat(key: CodingKey, value: UInt8) -> Float?

    func toFloat(key: CodingKey, value: UInt16) -> Float
    func toFloat(key: CodingKey, value: UInt16) -> Float?

    func toFloat(key: CodingKey, value: UInt32) -> Float
    func toFloat(key: CodingKey, value: UInt32) -> Float?

    func toFloat(key: CodingKey, value: UInt64) -> Float
    func toFloat(key: CodingKey, value: UInt64) -> Float?

    func toFloat(key: CodingKey, value: Float) -> Float
    func toFloat(key: CodingKey, value: Float) -> Float?

    func toFloat(key: CodingKey, value: Double) -> Float
    func toFloat(key: CodingKey, value: Double) -> Float?

    func toFloat(key: CodingKey, value: String) -> Float
    func toFloat(key: CodingKey, value: String) -> Float?

    func toFloat(key: CodingKey, value: [AnyHashable: Any]) -> Float
    func toFloat(key: CodingKey, value: [AnyHashable: Any]) -> Float?

    func toFloat(key: CodingKey, value: [Any]) -> Float
    func toFloat(key: CodingKey, value: [Any]) -> Float?

    // MARK: - Double
    func toDouble(key: CodingKey, value: NSNull) ->  Double
    func toDouble(key: CodingKey, value: NSNull) ->  Double?

    func toDouble(key: CodingKey, value: Bool) -> Double
    func toDouble(key: CodingKey, value: Bool) -> Double?

    func toDouble(key: CodingKey, value: Int) -> Double
    func toDouble(key: CodingKey, value: Int) -> Double?

    func toDouble(key: CodingKey, value: Int8) -> Double
    func toDouble(key: CodingKey, value: Int8) -> Double?

    func toDouble(key: CodingKey, value: Int16) -> Double
    func toDouble(key: CodingKey, value: Int16) -> Double?

    func toDouble(key: CodingKey, value: Int32) -> Double
    func toDouble(key: CodingKey, value: Int32) -> Double?

    func toDouble(key: CodingKey, value: Int64) -> Double
    func toDouble(key: CodingKey, value: Int64) -> Double?

    func toDouble(key: CodingKey, value: UInt) -> Double
    func toDouble(key: CodingKey, value: UInt) -> Double?

    func toDouble(key: CodingKey, value: UInt8) -> Double
    func toDouble(key: CodingKey, value: UInt8) -> Double?

    func toDouble(key: CodingKey, value: UInt16) -> Double
    func toDouble(key: CodingKey, value: UInt16) -> Double?

    func toDouble(key: CodingKey, value: UInt32) -> Double
    func toDouble(key: CodingKey, value: UInt32) -> Double?

    func toDouble(key: CodingKey, value: UInt64) -> Double
    func toDouble(key: CodingKey, value: UInt64) -> Double?

    func toDouble(key: CodingKey, value: Float) -> Double
    func toDouble(key: CodingKey, value: Float) -> Double?

    func toDouble(key: CodingKey, value: Double) -> Double
    func toDouble(key: CodingKey, value: Double) -> Double?

    func toDouble(key: CodingKey, value: String) -> Double
    func toDouble(key: CodingKey, value: String) -> Double?

    func toDouble(key: CodingKey, value: [AnyHashable: Any]) ->  Double
    func toDouble(key: CodingKey, value: [AnyHashable: Any]) ->  Double?

    func toDouble(key: CodingKey, value: [Any]) ->  Double
    func toDouble(key: CodingKey, value: [Any]) ->  Double?

    // MARK: - String
    func toString(key: CodingKey, value: NSNull) -> String
    func toString(key: CodingKey, value: NSNull) -> String?

    func toString(key: CodingKey, value: Bool) -> String
    func toString(key: CodingKey, value: Bool) -> String?

    func toString(key: CodingKey, value: Int) -> String
    func toString(key: CodingKey, value: Int) -> String?

    func toString(key: CodingKey, value: Int8) -> String
    func toString(key: CodingKey, value: Int8) -> String?

    func toString(key: CodingKey, value: Int16) -> String
    func toString(key: CodingKey, value: Int16) -> String?

    func toString(key: CodingKey, value: Int32) -> String
    func toString(key: CodingKey, value: Int32) -> String?

    func toString(key: CodingKey, value: Int64) -> String
    func toString(key: CodingKey, value: Int64) -> String?

    func toString(key: CodingKey, value: UInt) -> String
    func toString(key: CodingKey, value: UInt) -> String?

    func toString(key: CodingKey, value: UInt8) -> String
    func toString(key: CodingKey, value: UInt8) -> String?

    func toString(key: CodingKey, value: UInt16) -> String
    func toString(key: CodingKey, value: UInt16) -> String?

    func toString(key: CodingKey, value: UInt32) -> String
    func toString(key: CodingKey, value: UInt32) -> String?

    func toString(key: CodingKey, value: UInt64) -> String
    func toString(key: CodingKey, value: UInt64) -> String?

    func toString(key: CodingKey, value: Float) -> String
    func toString(key: CodingKey, value: Float) -> String?

    func toString(key: CodingKey, value: Double) -> String
    func toString(key: CodingKey, value: Double) -> String?

    func toString(key: CodingKey, value: String) -> String
    func toString(key: CodingKey, value: String) -> String?

    func toString(key: CodingKey, value: [AnyHashable: Any]) -> String
    func toString(key: CodingKey, value: [AnyHashable: Any]) -> String?

    func toString(key: CodingKey, value: [Any]) -> String
    func toString(key: CodingKey, value: [Any]) -> String?
}

// MARK: - BOOL -
extension TypeConvertible {
    // MARK: NSNull -> Bool
    func toBool(key: CodingKey, value: NSNull) -> Bool {
        return false
    }

    func toBool(key: CodingKey, value: NSNull) -> Bool? {
        return nil
    }
    // MARK: Bool -> Bool
    func toBool(key: CodingKey, value: Bool) -> Bool {
        return value
    }

    func toBool(key: CodingKey, value: Bool) -> Bool? {
        return value
    }

    // MARK: Int -> Bool
    func toBool(key: CodingKey, value: Int) -> Bool {
        switch value {
        case 1: return true
        default: return false
        }
    }

    func toBool(key: CodingKey, value: Int) -> Bool? {
        switch value {
        case 1: return true
        case 0: return false
        default: return nil
        }
    }

    // MARK: Int8 -> Bool
    func toBool(key: CodingKey, value: Int8) -> Bool {
        switch value {
        case 1: return true
        default: return false
        }
    }

    func toBool(key: CodingKey, value: Int8) -> Bool? {
        switch value {
        case 1: return true
        case 0: return false
        default: return nil
        }
    }

    // MARK: Int16 -> Bool
    func toBool(key: CodingKey, value: Int16) -> Bool {
        switch value {
        case 1: return true
        default: return false
        }
    }
    func toBool(key: CodingKey, value: Int16) -> Bool? {
        switch value {
        case 1: return true
        case 0: return false
        default: return nil
        }
    }

    // MARK: Int32 -> Bool
    func toBool(key: CodingKey, value: Int32) -> Bool {
        switch value {
        case 1: return true
        default: return false
        }
    }

    func toBool(key: CodingKey, value: Int32) -> Bool? {
        switch value {
        case 1: return true
        case 0: return false
        default: return nil
        }
    }

    // MARK: Int64 -> Bool
    func toBool(key: CodingKey, value: Int64) -> Bool {
        switch value {
        case 1: return true
        default: return false
        }
    }

    func toBool(key: CodingKey, value: Int64) -> Bool? {
        switch value {
        case 1: return true
        case 0: return false
        default: return nil
        }
    }

    // MARK: UInt -> Bool
    func toBool(key: CodingKey, value: UInt) -> Bool {
        switch value {
        case 1: return true
        default: return false
        }
    }

    func toBool(key: CodingKey, value: UInt) -> Bool? {
        switch value {
        case 1: return true
        case 0: return false
        default: return nil
        }
    }

    // MARK: UInt8 -> Bool
    func toBool(key: CodingKey, value: UInt8) -> Bool {
        switch value {
        case 1: return true
        default: return false
        }
    }

    func toBool(key: CodingKey, value: UInt8) -> Bool? {
        switch value {
        case 1: return true
        case 0: return false
        default: return nil
        }
    }

    // MARK: UInt16 -> Bool
    func toBool(key: CodingKey, value: UInt16) -> Bool {
        switch value {
        case 1: return true
        default: return false
        }
    }

    func toBool(key: CodingKey, value: UInt16) -> Bool? {
        switch value {
        case 1: return true
        case 0: return false
        default: return nil
        }
    }

    // MARK: UInt32 -> Bool
    func toBool(key: CodingKey, value: UInt32) -> Bool {
        switch value {
        case 1: return true
        default: return false
        }
    }

    func toBool(key: CodingKey, value: UInt32) -> Bool? {
        switch value {
        case 1: return true
        case 0: return false
        default: return nil
        }
    }

    // MARK: UInt64 -> Bool
    func toBool(key: CodingKey, value: UInt64) -> Bool {
        switch value {
        case 1: return true
        default: return false
        }
    }

    func toBool(key: CodingKey, value: UInt64) -> Bool? {
        switch value {
        case 1: return true
        case 0: return false
        default: return nil
        }
    }

    // MARK: Float -> Bool
    func toBool(key: CodingKey, value: Float) -> Bool {
        switch value {
        case 1: return true
        default: return false
        }
    }

    func toBool(key: CodingKey, value: Float) -> Bool? {
        switch value {
        case 1: return true
        case 0: return false
        default: return nil
        }
    }

    // MARK: Double -> Bool
    func toBool(key: CodingKey, value: Double) -> Bool {
        switch value {
        case 1: return true
        default: return false
        }
    }

    func toBool(key: CodingKey, value: Double) -> Bool? {
        switch value {
        case 1: return true
        case 0: return false
        default: return nil
        }
    }

    // MARK: String -> Bool
    func toBool(key: CodingKey, value: String) -> Bool {
        switch value.lowercased() {
        case "true": return true
        case "false": return false
        default: return false
        }
    }

    func toBool(key: CodingKey, value: String) -> Bool? {
        switch value.lowercased() {
        case "true": return true
        case "false": return false
        default: return nil
        }
    }

    // MARK: Dictionary -> Bool
    func toBool(key: CodingKey, value: [AnyHashable: Any]) -> Bool {
        return false
    }

    func toBool(key: CodingKey, value: [AnyHashable: Any]) -> Bool? {
        return false
    }

    // MARK: Array -> Bool
    func toBool(key: CodingKey, value: [Any]) -> Bool {
        return false
    }

    func toBool(key: CodingKey, value: [Any]) -> Bool? {
        return false
    }
}

// MARK: - INT -
extension TypeConvertible {
    // MARK: NSNull -> Int
    func toInt(key: CodingKey, value: NSNull) -> Int {
        return 0
    }

    func toInt(key: CodingKey, value: NSNull) -> Int? {
        return 0
    }

    // MARK: Bool -> Int
    func toInt(key: CodingKey, value: Bool) -> Int {
        switch value {
        case true: return 1
        default: return 0
        }
    }

    func toInt(key: CodingKey, value: Bool) -> Int? {
        switch value {
        case true: return 1
        default: return 0
        }
    }

    // MARK: Int -> Int
    func toInt(key: CodingKey, value: Int) -> Int {
        return value
    }

    func toInt(key: CodingKey, value: Int) -> Int? {
        return value
    }

    // MARK: Int8 -> Int
    func toInt(key: CodingKey, value: Int8) -> Int {
        return Int(value)
    }

    func toInt(key: CodingKey, value: Int8) -> Int? {
        return Int(value)
    }

    // MARK: Int16 -> Int
    func toInt(key: CodingKey, value: Int16) -> Int {
        return Int(value)
    }

    func toInt(key: CodingKey, value: Int16) -> Int? {
        return Int(value)
    }

    // MARK: Int32 -> Int
    func toInt(key: CodingKey, value: Int32) -> Int {
        return Int(value)
    }

    func toInt(key: CodingKey, value: Int32) -> Int? {
        return Int(value)
    }

    // MARK: Int64 -> Int
    func toInt(key: CodingKey, value: Int64) -> Int {
        return Int(value)
    }

    func toInt(key: CodingKey, value: Int64) -> Int? {
        return Int(value)
    }

    // MARK: UInt -> Int
    func toInt(key: CodingKey, value: UInt) -> Int {
        return Int(value)
    }

    func toInt(key: CodingKey, value: UInt) -> Int? {
        return Int(value)
    }

    // MARK: UInt8 -> Int
    func toInt(key: CodingKey, value: UInt8) -> Int {
        return Int(value)
    }

    func toInt(key: CodingKey, value: UInt8) -> Int? {
        return Int(value)
    }

    // MARK: UInt16 -> Int
    func toInt(key: CodingKey, value: UInt16) -> Int {
        return Int(value)
    }

    func toInt(key: CodingKey, value: UInt16) -> Int? {
        return Int(value)
    }

    // MARK: UInt32 -> Int
    func toInt(key: CodingKey, value: UInt32) -> Int {
        return Int(value)
    }

    func toInt(key: CodingKey, value: UInt32) -> Int? {
        return Int(value)
    }

    // MARK: UInt64 -> Int
    func toInt(key: CodingKey, value: UInt64) -> Int {
        return Int(value)
    }

    func toInt(key: CodingKey, value: UInt64) -> Int? {
        return Int(value)
    }

    // MARK: Float -> Int
    func toInt(key: CodingKey, value: Float) -> Int {
        return Int(value)
    }

    func toInt(key: CodingKey, value: Float) -> Int? {
        return Int(value)
    }

    // MARK: Double -> Int
    func toInt(key: CodingKey, value: Double) -> Int {
        return Int(value)
    }

    func toInt(key: CodingKey, value: Double) -> Int? {
        return Int(value)
    }

    // MARK: String -> Int
    func toInt(key: CodingKey, value: String) -> Int {
        switch value.lowercased() {
        case "true", "yes": return 1
        case "false", "no": return 0
        default:
            return Int(value) ?? 0
        }
    }

    func toInt(key: CodingKey, value: String) -> Int? {
        switch value.lowercased() {
        case "true": return 1
        case "false": return 0
        default: return Int(value)
        }
    }

    // MARK: Dictionary -> Int
    func toInt(key: CodingKey, value: [AnyHashable: Any]) -> Int {
        return 0
    }

    func toInt(key: CodingKey, value: [AnyHashable: Any]) -> Int? {
        return 0
    }

    // MARK: Array -> Int
    func toInt(key: CodingKey, value: [Any]) -> Int {
        return 0
    }

    func toInt(key: CodingKey, value: [Any]) -> Int? {
        return 0
    }
}

// MARK: - INT8 -
extension TypeConvertible {
    // MARK: NSNull -> Int8
    func toInt8(key: CodingKey, value: NSNull) -> Int8 {
        return 0
    }

    func toInt8(key: CodingKey, value: NSNull) -> Int8? {
        return 0
    }

    // MARK: Bool -> Int8
    func toInt8(key: CodingKey, value: Bool) -> Int8 {
        switch value {
        case true: return 1
        default: return 0
        }
    }

    func toInt8(key: CodingKey, value: Bool) -> Int8? {
        switch value {
        case true: return 1
        case false: return 0
        }
    }

    // MARK: Int -> Int8
    func toInt8(key: CodingKey, value: Int) -> Int8 {
        return Int8(value)
    }

    func toInt8(key: CodingKey, value: Int) -> Int8? {
        return Int8(value)
    }

    // MARK: Int8 -> Int8
    func toInt8(key: CodingKey, value: Int8) -> Int8 {
        return value
    }

    func toInt8(key: CodingKey, value: Int8) -> Int8? {
        return value
    }

    // MARK: Int16 -> Int8
    func toInt8(key: CodingKey, value: Int16) -> Int8 {
        return Int8(value)
    }

    func toInt8(key: CodingKey, value: Int16) -> Int8? {
        return Int8(value)
    }

    // MARK: Int32 -> Int8
    func toInt8(key: CodingKey, value: Int32) -> Int8 {
        return Int8(value)
    }

    func toInt8(key: CodingKey, value: Int32) -> Int8? {
        return Int8(value)
    }

    // MARK: Int64 -> Int8
    func toInt8(key: CodingKey, value: Int64) -> Int8 {
        return Int8(value)
    }

    func toInt8(key: CodingKey, value: Int64) -> Int8? {
        return Int8(value)
    }

    // MARK: UInt -> Int8
    func toInt8(key: CodingKey, value: UInt) -> Int8 {
        return Int8(value)
    }

    func toInt8(key: CodingKey, value: UInt) -> Int8? {
        return Int8(value)
    }

    // MARK: UInt8 -> Int8
    func toInt8(key: CodingKey, value: UInt8) -> Int8 {
        return Int8(value)
    }

    func toInt8(key: CodingKey, value: UInt8) -> Int8? {
        return Int8(value)
    }

    // MARK: UInt16 -> Int8
    func toInt8(key: CodingKey, value: UInt16) -> Int8 {
        return Int8(value)
    }

    func toInt8(key: CodingKey, value: UInt16) -> Int8? {
        return Int8(value)
    }

    // MARK: UInt32 -> Int8
    func toInt8(key: CodingKey, value: UInt32) -> Int8 {
        return Int8(value)
    }

    func toInt8(key: CodingKey, value: UInt32) -> Int8? {
        return Int8(value)
    }

    // MARK: UInt64 -> Int8
    func toInt8(key: CodingKey, value: UInt64) -> Int8 {
        return Int8(value)
    }

    func toInt8(key: CodingKey, value: UInt64) -> Int8? {
        return Int8(value)
    }

    // MARK: Float -> Int8
    func toInt8(key: CodingKey, value: Float) -> Int8 {
        return Int8(value)
    }

    func toInt8(key: CodingKey, value: Float) -> Int8? {
        return Int8(value)
    }

    // MARK: Double -> Int8
    func toInt8(key: CodingKey, value: Double) -> Int8 {
        return Int8(value)
    }

    func toInt8(key: CodingKey, value: Double) -> Int8? {
        return Int8(value)
    }

    // MARK: String -> Int8
    func toInt8(key: CodingKey, value: String) -> Int8 {
        switch value.lowercased() {
        case "true": return 1
        case "false": return 0
        default: return Int8(value) ?? 0
        }
    }

    func toInt8(key: CodingKey, value: String) -> Int8? {
        switch value.lowercased() {
        case "true": return 1
        case "false": return 0
        default: return Int8(value)
        }
    }

    // MARK: Dictionary -> Int8
    func toInt8(key: CodingKey, value: [AnyHashable: Any]) -> Int8 {
        return 0
    }

    func toInt8(key: CodingKey, value: [AnyHashable: Any]) -> Int8? {
        return 0
    }

    // MARK: Array -> Int8
    func toInt8(key: CodingKey, value: [Any]) -> Int8 {
        return 0
    }

    func toInt8(key: CodingKey, value: [Any]) -> Int8? {
        return 0
    }
}

// MARK: - INT16 -
extension TypeConvertible {
    // MARK: NSNull -> Int16
    func toInt16(key: CodingKey, value: NSNull) -> Int16 {
        return 0
    }

    func toInt16(key: CodingKey, value: NSNull) -> Int16? {
        return 0
    }

    // MARK: Bool -> Int16
    func toInt16(key: CodingKey, value: Bool) -> Int16 {
        switch value {
        case true: return 1
        default: return 0
        }
    }

    func toInt16(key: CodingKey, value: Bool) -> Int16? {
        switch value {
        case true: return 1
        default: return 0
        }
    }

    // MARK: Int -> Int16
    func toInt16(key: CodingKey, value: Int) -> Int16 {
        return Int16(value)
    }

    func toInt16(key: CodingKey, value: Int) -> Int16? {
        return Int16(value)
    }

    // MARK: Int8 -> Int16
    func toInt16(key: CodingKey, value: Int8) -> Int16 {
        return Int16(value)
    }

    func toInt16(key: CodingKey, value: Int8) -> Int16? {
        return Int16(value)
    }

    // MARK: Int32 -> Int16
    func toInt16(key: CodingKey, value: Int32) -> Int16 {
        return Int16(value)
    }

    // MARK: Int16 -> Int16
    func toInt16(key: CodingKey, value: Int16) -> Int16 {
        return value
    }

    func toInt16(key: CodingKey, value: Int16) -> Int16? {
        return value
    }

    // MARK: Int32 -> Int16?
    func toInt16(key: CodingKey, value: Int32) -> Int16? {
        return Int16(value)
    }

    // MARK: Int64 -> Int16
    func toInt16(key: CodingKey, value: Int64) -> Int16 {
        return Int16(value)
    }

    func toInt16(key: CodingKey, value: Int64) -> Int16? {
        return Int16(value)
    }

    // MARK: UInt -> Int16
    func toInt16(key: CodingKey, value: UInt) -> Int16 {
        return Int16(value)
    }

    func toInt16(key: CodingKey, value: UInt) -> Int16? {
        return Int16(value)
    }

    // MARK: UInt8 -> Int16
    func toInt16(key: CodingKey, value: UInt8) -> Int16 {
        return Int16(value)
    }

    func toInt16(key: CodingKey, value: UInt8) -> Int16? {
        return Int16(value)
    }

    // MARK: UInt16 -> Int16
    func toInt16(key: CodingKey, value: UInt16) -> Int16 {
        return Int16(value)
    }

    func toInt16(key: CodingKey, value: UInt16) -> Int16? {
        return Int16(value)
    }

    // MARK: UInt32 -> Int16
    func toInt16(key: CodingKey, value: UInt32) -> Int16 {
        return Int16(value)
    }

    func toInt16(key: CodingKey, value: UInt32) -> Int16? {
        return Int16(value)
    }

    // MARK: UInt64 -> Int16
    func toInt16(key: CodingKey, value: UInt64) -> Int16 {
        return Int16(value)
    }

    func toInt16(key: CodingKey, value: UInt64) -> Int16? {
        return Int16(value)
    }

    // MARK: Float -> Int16
    func toInt16(key: CodingKey, value: Float) -> Int16 {
        return Int16(value)
    }

    func toInt16(key: CodingKey, value: Float) -> Int16? {
        return Int16(value)
    }

    // MARK: Double -> Int16
    func toInt16(key: CodingKey, value: Double) -> Int16 {
        return Int16(value)
    }

    func toInt16(key: CodingKey, value: Double) -> Int16? {
        return Int16(value)
    }

    // MARK: String -> Int16
    func toInt16(key: CodingKey, value: String) -> Int16 {
        switch value.lowercased() {
        case "true": return 1
        case "false": return 0
        default: return Int16(value) ?? 0
        }
    }

    func toInt16(key: CodingKey, value: String) -> Int16? {
        switch value.lowercased() {
        case "true": return 1
        case "false": return 0
        default: return Int16(value)
        }
    }

    // MARK: Dictionary -> Int16
    func toInt16(key: CodingKey, value: [AnyHashable: Any]) -> Int16 {
        return 0
    }

    func toInt16(key: CodingKey, value: [AnyHashable: Any]) -> Int16? {
        return 0
    }

    // MARK: Array -> Int16
    func toInt16(key: CodingKey, value: [Any]) -> Int16 {
        return 0
    }

    func toInt16(key: CodingKey, value: [Any]) -> Int16? {
        return 0
    }
}

// MARK: - INT32 -
extension TypeConvertible {
    // MARK: NSNull -> Int32
    func toInt32(key: CodingKey, value: NSNull) -> Int32 {
        return 0
    }

    func toInt32(key: CodingKey, value: NSNull) -> Int32? {
        return 0
    }

    // MARK: Bool -> Int32
    func toInt32(key: CodingKey, value: Bool) -> Int32 {
        switch value {
        case true: return 1
        default: return 0
        }
    }

    func toInt32(key: CodingKey, value: Bool) -> Int32? {
        switch value {
        case true: return 1
        default: return 0
        }
    }

    // MARK: Int -> Int32
    func toInt32(key: CodingKey, value: Int) -> Int32 {
        return Int32(value)
    }

    func toInt32(key: CodingKey, value: Int) -> Int32? {
        return Int32(value)
    }

    // MARK: Int8 -> Int32
    func toInt32(key: CodingKey, value: Int8) -> Int32 {
        return Int32(value)
    }

    func toInt32(key: CodingKey, value: Int8) -> Int32? {
        return Int32(value)
    }

    // MARK: Int16 -> Int32
    func toInt32(key: CodingKey, value: Int16) -> Int32 {
        return Int32(value)
    }

    func toInt32(key: CodingKey, value: Int16) -> Int32? {
        return Int32(value)
    }

    // MARK: Int32 -> Int32
    func toInt32(key: CodingKey, value: Int32) -> Int32 {
        return value
    }

    func toInt32(key: CodingKey, value: Int32) -> Int32? {
        return value
    }

    // MARK: Int64 -> Int32
    func toInt32(key: CodingKey, value: Int64) -> Int32 {
        return Int32(value)
    }

    func toInt32(key: CodingKey, value: Int64) -> Int32? {
        return Int32(value)
    }

    // MARK: UInt -> Int32
    func toInt32(key: CodingKey, value: UInt) -> Int32 {
        return Int32(value)
    }

    func toInt32(key: CodingKey, value: UInt) -> Int32? {
        return Int32(value)
    }

    // MARK: UInt8 -> Int32
    func toInt32(key: CodingKey, value: UInt8) -> Int32 {
        return Int32(value)
    }

    func toInt32(key: CodingKey, value: UInt8) -> Int32? {
        return Int32(value)
    }

    // MARK: UInt16 -> Int32
    func toInt32(key: CodingKey, value: UInt16) -> Int32 {
        return Int32(value)
    }

    func toInt32(key: CodingKey, value: UInt16) -> Int32? {
        return Int32(value)
    }

    // MARK: UInt32 -> Int32
    func toInt32(key: CodingKey, value: UInt32) -> Int32 {
        return Int32(value)
    }

    func toInt32(key: CodingKey, value: UInt32) -> Int32? {
        return Int32(value)
    }

    // MARK: UInt64 -> Int32
    func toInt32(key: CodingKey, value: UInt64) -> Int32 {
        return Int32(value)
    }

    func toInt32(key: CodingKey, value: UInt64) -> Int32? {
        return Int32(value)
    }

    // MARK: Float -> Int32
    func toInt32(key: CodingKey, value: Float) -> Int32 {
        return Int32(value)
    }

    func toInt32(key: CodingKey, value: Float) -> Int32? {
        return Int32(value)
    }

    // MARK: Double -> Int32
    func toInt32(key: CodingKey, value: Double) -> Int32 {
        return Int32(value)
    }

    func toInt32(key: CodingKey, value: Double) -> Int32? {
        return Int32(value)
    }

    // MARK: String -> Int32
    func toInt32(key: CodingKey, value: String) -> Int32 {
        switch value.lowercased() {
        case "true": return 1
        case "false": return 0
        default: return Int32(value) ?? 0
        }
    }

    func toInt32(key: CodingKey, value: String) -> Int32? {
        switch value.lowercased() {
        case "true": return 1
        case "false": return 0
        default: return Int32(value)
        }
    }

    // MARK: Dictionary -> Int32
    func toInt32(key: CodingKey, value: [AnyHashable: Any]) -> Int32 {
        return 0
    }

    func toInt32(key: CodingKey, value: [AnyHashable: Any]) -> Int32? {
        return 0
    }

    // MARK: Array -> Int32
    func toInt32(key: CodingKey, value: [Any]) -> Int32 {
        return 0
    }

    func toInt32(key: CodingKey, value: [Any]) -> Int32? {
        return 0
    }
}

// MARK: - INT64 -
extension TypeConvertible {
    // MARK: NSNull -> Int64
    func toInt64(key: CodingKey, value: NSNull) -> Int64 {
        return 0
    }

    func toInt64(key: CodingKey, value: NSNull) -> Int64? {
        return 0
    }

    // MARK: Bool -> Int64
    func toInt64(key: CodingKey, value: Bool) -> Int64 {
        switch value {
        case true: return 1
        default: return 0
        }
    }
    
    func toInt64(key: CodingKey, value: Bool) -> Int64? {
        switch value {
        case true: return 1
        default: return 0
        }
    }

    // MARK: Int -> Int64
    func toInt64(key: CodingKey, value: Int) -> Int64 {
        return Int64(value)
    }
    
    func toInt64(key: CodingKey, value: Int) -> Int64? {
        return Int64(value)
    }

    // MARK: Int8 -> Int64
    func toInt64(key: CodingKey, value: Int8) -> Int64 {
        return Int64(value)
    }

    func toInt64(key: CodingKey, value: Int8) -> Int64? {
        return Int64(value)
    }

    // MARK: Int16 -> Int64
    func toInt64(key: CodingKey, value: Int16) -> Int64 {
        return Int64(value)
    }
    
    func toInt64(key: CodingKey, value: Int16) -> Int64? {
        return Int64(value)
    }

    // MARK: Int32 -> Int64
    func toInt64(key: CodingKey, value: Int32) -> Int64 {
        return Int64(value)
    }
    
    func toInt64(key: CodingKey, value: Int32) -> Int64? {
        return Int64(value)
    }

    // MARK: Int64 -> Int64
    func toInt64(key: CodingKey, value: Int64) -> Int64 {
        return value
    }

    func toInt64(key: CodingKey, value: Int64) -> Int64? {
        return value
    }

    // MARK: UInt -> Int64
    func toInt64(key: CodingKey, value: UInt) -> Int64 {
        return Int64(value)
    }
    
    func toInt64(key: CodingKey, value: UInt) -> Int64? {
        return Int64(value)
    }

    // MARK: UInt8 -> Int64
    func toInt64(key: CodingKey, value: UInt8) -> Int64 {
        return Int64(value)
    }
    
    func toInt64(key: CodingKey, value: UInt8) -> Int64? {
        return Int64(value)
    }

    // MARK: UInt16 -> Int64
    func toInt64(key: CodingKey, value: UInt16) -> Int64 {
        return Int64(value)
    }
    
    func toInt64(key: CodingKey, value: UInt16) -> Int64? {
        return Int64(value)
    }

    // MARK: UInt32 -> Int64
    func toInt64(key: CodingKey, value: UInt32) -> Int64 {
        return Int64(value)
    }
    
    func toInt64(key: CodingKey, value: UInt32) -> Int64? {
        return Int64(value)
    }

    // MARK: UInt64 -> Int64
    func toInt64(key: CodingKey, value: UInt64) -> Int64 {
        return Int64(value)
    }
    
    func toInt64(key: CodingKey, value: UInt64) -> Int64? {
        return Int64(value)
    }

    // MARK: Float -> Int64
    func toInt64(key: CodingKey, value: Float) -> Int64 {
        return Int64(value)
    }
    
    func toInt64(key: CodingKey, value: Float) -> Int64? {
        return Int64(value)
    }

    // MARK: Double -> Int64
    func toInt64(key: CodingKey, value: Double) -> Int64 {
        return Int64(value)
    }
    
    func toInt64(key: CodingKey, value: Double) -> Int64? {
        return Int64(value)
    }
    // MARK: String -> Int64
    func toInt64(key: CodingKey, value: String) -> Int64 {
        switch value.lowercased() {
        case "true": return 1
        case "false": return 0
        default: return Int64(value) ?? 0
        }
    }

    func toInt64(key: CodingKey, value: String) -> Int64? {
        switch value.lowercased() {
        case "true": return 1
        case "false": return 0
        default: return Int64(value)
        }
    }

    // MARK: Dictionay -> Int64
    func toInt64(key: CodingKey, value: [AnyHashable: Any]) -> Int64 {
        return 0
    }

    func toInt64(key: CodingKey, value: [AnyHashable: Any]) -> Int64? {
        return 0
    }

    // MARK: Array -> Int64
    func toInt64(key: CodingKey, value: [Any]) -> Int64 {
        return 0
    }

    func toInt64(key: CodingKey, value: [Any]) -> Int64? {
        return 0
    }
}

// MARK: - UINT -
extension TypeConvertible {
    // MARK: NSNull -> UInt
    func toUInt(key: CodingKey, value: NSNull) -> UInt {
        return 0
    }

    func toUInt(key: CodingKey, value: NSNull) -> UInt? {
        return 0
    }

    // MARK: Bool -> UInt
    func toUInt(key: CodingKey, value: Bool) -> UInt {
        switch value {
        case true: return 1
        default: return 0
        }
    }
    
    func toUInt(key: CodingKey, value: Bool) -> UInt? {
        switch value {
        case true: return 1
        default: return 0
        }
    }

    // MARK: Int -> UInt
    func toUInt(key: CodingKey, value: Int) throws -> UInt {
        if value < 0 { throw DecodingError.typeMismatch(UInt.self, DecodingError.Context.init(codingPath: [key], debugDescription: "UInt不能容纳负数")) }
        return UInt(value)
    }
    
    func toUInt(key: CodingKey, value: Int) throws -> UInt? {
        if value < 0 { throw DecodingError.typeMismatch(UInt.self, DecodingError.Context.init(codingPath: [key], debugDescription: "UInt不能容纳负数")) }
        return UInt(value)
    }

    // MARK: Int8 -> UInt
    func toUInt(key: CodingKey, value: Int8) throws -> UInt {
        if value < 0 { throw DecodingError.typeMismatch(Int8.self, DecodingError.Context.init(codingPath: [key], debugDescription: "UInt不能容纳负数")) }
        return UInt(value)
    }
    
    func toUInt(key: CodingKey, value: Int8) throws -> UInt? {
        if value < 0 { throw DecodingError.typeMismatch(Int8.self, DecodingError.Context.init(codingPath: [key], debugDescription: "UInt不能容纳负数")) }
        return UInt(value)
    }

    // MARK: Int16 -> UInt
    func toUInt(key: CodingKey, value: Int16) throws -> UInt {
        if value < 0 { throw DecodingError.typeMismatch(Int8.self, DecodingError.Context.init(codingPath: [key], debugDescription: "UInt不能容纳负数")) }
        return UInt(value)
    }
    
    func toUInt(key: CodingKey, value: Int16) throws -> UInt? {
        if value < 0 { throw DecodingError.typeMismatch(Int8.self, DecodingError.Context.init(codingPath: [key], debugDescription: "UInt不能容纳负数")) }
        return UInt(value)
    }

    // MARK: Int32 -> UInt
    func toUInt(key: CodingKey, value: Int32) throws -> UInt {
        if value < 0 { throw DecodingError.typeMismatch(Int8.self, DecodingError.Context.init(codingPath: [key], debugDescription: "UInt不能容纳负数")) }
        return UInt(value)
    }
    func toUInt(key: CodingKey, value: Int32) throws -> UInt? {
        if value < 0 { throw DecodingError.typeMismatch(Int8.self, DecodingError.Context.init(codingPath: [key], debugDescription: "UInt不能容纳负数")) }
        return UInt(value)
    }

    // MARK: Int64 -> UInt
    func toUInt(key: CodingKey, value: Int64) throws -> UInt {
        if value < 0 { throw DecodingError.typeMismatch(Int8.self, DecodingError.Context.init(codingPath: [key], debugDescription: "UInt不能容纳负数")) }
        return UInt(value)
    }
    
    func toUInt(key: CodingKey, value: Int64) throws -> UInt? {
        if value < 0 { throw DecodingError.typeMismatch(Int8.self, DecodingError.Context.init(codingPath: [key], debugDescription: "UInt不能容纳负数")) }
        return UInt(value)
    }

    // MARK: UInt -> UInt
    func toUInt(key: CodingKey, value: UInt) -> UInt {
        return value
    }

    func toUInt(key: CodingKey, value: UInt) -> UInt? {
        return value
    }

    // MARK: UInt8 -> UInt
    func toUInt(key: CodingKey, value: UInt8) -> UInt {
        return UInt(value)
    }
    
    func toUInt(key: CodingKey, value: UInt8) -> UInt? {
        return UInt(value)
    }

    // MARK: UInt16 -> UInt
    func toUInt(key: CodingKey, value: UInt16) -> UInt {
        return UInt(value)
    }
    
    func toUInt(key: CodingKey, value: UInt16) -> UInt? {
        return UInt(value)
    }

    // MARK: UInt32 -> UInt
    func toUInt(key: CodingKey, value: UInt32) -> UInt {
        return UInt(value)
    }
    
    func toUInt(key: CodingKey, value: UInt32) -> UInt? {
        return UInt(value)
    }

    // MARK: UInt64 -> UInt
    func toUInt(key: CodingKey, value: UInt64) -> UInt {
        return UInt(value)
    }
    
    func toUInt(key: CodingKey, value: UInt64) -> UInt? {
        return UInt(value)
    }

    // MARK: Float -> UInt
    func toUInt(key: CodingKey, value: Float) throws -> UInt {
        if value < 0 { throw DecodingError.typeMismatch(Int8.self, DecodingError.Context.init(codingPath: [key], debugDescription: "UInt不能容纳负数")) }
        return UInt(value)
    }
    
    func toUInt(key: CodingKey, value: Float) throws -> UInt? {
        if value < 0 { throw DecodingError.typeMismatch(Int8.self, DecodingError.Context.init(codingPath: [key], debugDescription: "UInt不能容纳负数")) }
        return UInt(value)
    }

    // MARK: Double -> UInt
    func toUInt(key: CodingKey, value: Double) throws -> UInt {
        if value < 0 { throw DecodingError.typeMismatch(Int8.self, DecodingError.Context.init(codingPath: [key], debugDescription: "UInt不能容纳负数")) }
        return UInt(value)
    }
    
    func toUInt(key: CodingKey, value: Double) throws -> UInt? {
        if value < 0 { throw DecodingError.typeMismatch(Int8.self, DecodingError.Context.init(codingPath: [key], debugDescription: "UInt不能容纳负数")) }
        return UInt(value)
    }

    // MARK: String -> UInt
    func toUInt(key: CodingKey, value: String) -> UInt {
        switch value.lowercased() {
        case "true": return 1
        case "false": return 0
        default: return 0
        }
    }
    
    func toUInt(key: CodingKey, value: String) -> UInt? {
        switch value.lowercased() {
        case "true", "yes": return 1
        case "false", "no": return 0
        default: return UInt(value.lowercased())
        }
    }

    // MARK: Dictionary -> UInt
    func toUInt(key: CodingKey, value: [AnyHashable: Any]) -> UInt {
        return 0
    }

    func toUInt(key: CodingKey, value: [AnyHashable: Any]) -> UInt? {
        return 0
    }

    // MARK: Array -> UInt
    func toUInt(key: CodingKey, value: [Any]) -> UInt {
        return 0
    }

    func toUInt(key: CodingKey, value: [Any]) -> UInt? {
        return 0
    }
}

// MARK: - UInt8 -
extension TypeConvertible {
    // MARK: NSNull -> UInt8
    func toUInt8(key: CodingKey, value: NSNull) -> UInt8 {
        return 0
    }

    func toUInt8(key: CodingKey, value: NSNull) -> UInt8? {
        return 0
    }

    func toUInt8(key: CodingKey, value: Bool) -> UInt8 {
        switch value {
        case true: return 1
        default: return 0
        }
    }

    func toUInt8(key: CodingKey, value: Bool) -> UInt8? {
        switch value {
        case true: return 1
        default: return 0
        }
    }

    // MARK: Int -> UInt8
    func toUInt8(key: CodingKey, value: Int) throws -> UInt8 {
        if value < 0 { throw DecodingError.typeMismatch(UInt8.self, DecodingError.Context.init(codingPath: [key], debugDescription: "UInt8不能容纳负数")) }
        return UInt8(value)
    }

    func toUInt8(key: CodingKey, value: Int) throws -> UInt8? {
        if value < 0 { throw DecodingError.typeMismatch(UInt8.self, DecodingError.Context.init(codingPath: [key], debugDescription: "UInt8不能容纳负数")) }
        return UInt8(value)
    }

    // MARK: Int8 -> UInt8
    func toUInt8(key: CodingKey, value: Int8) throws -> UInt8 {
        if value < 0 { throw DecodingError.typeMismatch(UInt8.self, DecodingError.Context.init(codingPath: [key], debugDescription: "UInt8不能容纳负数")) }
        return UInt8(value)
    }

    func toUInt8(key: CodingKey, value: Int8) throws -> UInt8? {
        if value < 0 { throw DecodingError.typeMismatch(UInt8.self, DecodingError.Context.init(codingPath: [key], debugDescription: "UInt8不能容纳负数")) }
        return UInt8(value)
    }

    // MARK: Int16 -> UInt8
    func toUInt8(key: CodingKey, value: Int16) throws -> UInt8 {
        if value < 0 { throw DecodingError.typeMismatch(UInt8.self, DecodingError.Context.init(codingPath: [key], debugDescription: "UInt8不能容纳负数")) }
        return UInt8(value)
    }

    func toUInt8(key: CodingKey, value: Int16) throws -> UInt8? {
        if value < 0 { throw DecodingError.typeMismatch(UInt8.self, DecodingError.Context.init(codingPath: [key], debugDescription: "UInt8不能容纳负数")) }
        return UInt8(value)
    }

    // MARK: Int32 -> UInt8
    func toUInt8(key: CodingKey, value: Int32) throws -> UInt8 {
        if value < 0 { throw DecodingError.typeMismatch(UInt8.self, DecodingError.Context.init(codingPath: [key], debugDescription: "UInt8不能容纳负数")) }
        return UInt8(value)
    }

    func toUInt8(key: CodingKey, value: Int32) throws -> UInt8? {
        if value < 0 { throw DecodingError.typeMismatch(UInt8.self, DecodingError.Context.init(codingPath: [key], debugDescription: "UInt8不能容纳负数")) }
        return UInt8(value)
    }
    // MARK: Int64 -> UInt8
    func toUInt8(key: CodingKey, value: Int64) throws -> UInt8 {
        if value < 0 { throw DecodingError.typeMismatch(UInt8.self, DecodingError.Context.init(codingPath: [key], debugDescription: "UInt8不能容纳负数")) }
        return UInt8(value)
    }

    func toUInt8(key: CodingKey, value: Int64) throws -> UInt8? {
        if value < 0 { throw DecodingError.typeMismatch(UInt8.self, DecodingError.Context.init(codingPath: [key], debugDescription: "UInt8不能容纳负数")) }
        return UInt8(value)
    }

    // MARK: UInt -> UInt8
    func toUInt8(key: CodingKey, value: UInt) -> UInt8 {
        return UInt8(value)
    }

    func toUInt8(key: CodingKey, value: UInt) -> UInt8? {
        return UInt8(value)
    }

    // MARK: UInt8 -> UInt8
    func toUInt8(key: CodingKey, value: UInt8) -> UInt8 {
        return UInt8(value)
    }

    func toUInt8(key: CodingKey, value: UInt8) -> UInt8? {
        return value
    }

    // MARK: UInt16 -> UInt8
    func toUInt8(key: CodingKey, value: UInt16) -> UInt8 {
        return UInt8(value)
    }

    func toUInt8(key: CodingKey, value: UInt16) -> UInt8? {
        return UInt8(value)
    }

    // MARK: UInt32 -> UInt8
    func toUInt8(key: CodingKey, value: UInt32) -> UInt8 {
        return UInt8(value)
    }

    func toUInt8(key: CodingKey, value: UInt32) -> UInt8? {
        return UInt8(value)
    }

    // MARK: UInt64 -> UInt8
    func toUInt8(key: CodingKey, value: UInt64) -> UInt8 {
        return UInt8(value)
    }

    func toUInt8(key: CodingKey, value: UInt64) -> UInt8? {
        return UInt8(value)
    }

    // MARK: Float -> UInt8
    func toUInt8(key: CodingKey, value: Float) throws -> UInt8 {
        if value < 0 { throw DecodingError.typeMismatch(UInt8.self, DecodingError.Context.init(codingPath: [key], debugDescription: "UInt8不能容纳负数")) }
        return UInt8(value)
    }

    func toUInt8(key: CodingKey, value: Float) throws -> UInt8? {
        if value < 0 { throw DecodingError.typeMismatch(UInt8.self, DecodingError.Context.init(codingPath: [key], debugDescription: "UInt8不能容纳负数")) }
        return UInt8(value)
    }

    // MARK: Double -> UInt8
    func toUInt8(key: CodingKey, value: Double) throws -> UInt8 {
        if value < 0 { throw DecodingError.typeMismatch(UInt8.self, DecodingError.Context.init(codingPath: [key], debugDescription: "UInt8不能容纳负数")) }
        return UInt8(value)
    }

    func toUInt8(key: CodingKey, value: Double) throws -> UInt8? {
        if value < 0 { throw DecodingError.typeMismatch(UInt8.self, DecodingError.Context.init(codingPath: [key], debugDescription: "UInt8不能容纳负数")) }
        return UInt8(value)
    }

    // MARK: String -> UInt8
    func toUInt8(key: CodingKey, value: String) -> UInt8 {
        switch value.lowercased() {
        case "true": return 1
        case "false": return 0
        default: return UInt8(value.lowercased()) ?? 0
        }
    }

    func toUInt8(key: CodingKey, value: String) -> UInt8? {
        switch value.lowercased() {
        case "true": return 1
        case "false": return 0
        default: return UInt8(value.lowercased())
        }
    }

    // MARK: Dictionary -> UInt8
    func toUInt8(key: CodingKey, value: [AnyHashable: Any]) -> UInt8 {
        return 0
    }

    func toUInt8(key: CodingKey, value: [AnyHashable: Any]) -> UInt8? {
        return 0
    }

    // MARK: Array -> UInt8
    func toUInt8(key: CodingKey, value: [Any]) -> UInt8 {
        return 0
    }

    func toUInt8(key: CodingKey, value: [Any]) -> UInt8? {
        return 0
    }
}

// MARK: - UInt16 -
extension TypeConvertible {
    // MARK: NSNull -> UInt16
    func toUInt16(key: CodingKey, value: NSNull) -> UInt16 {
        return 0
    }

    func toUInt16(key: CodingKey, value: NSNull) -> UInt16? {
        return 0
    }

    // MARK: Bool -> UInt16
    func toUInt16(key: CodingKey, value: Bool) -> UInt16 {
        switch value {
        case true: return 1
        default: return 0
        }
    }

    func toUInt16(key: CodingKey, value: Bool) -> UInt16? {
        switch value {
        case true: return 1
        default: return 0
        }
    }

    // MARK: Int -> UInt16
    func toUInt16(key: CodingKey, value: Int) throws -> UInt16 {
        if value < 0 { throw DecodingError.typeMismatch(UInt16.self, DecodingError.Context.init(codingPath: [key], debugDescription: "UInt16不能容纳负数")) }
        return UInt16(value)
    }

    func toUInt16(key: CodingKey, value: Int) throws -> UInt16? {
        if value < 0 { throw DecodingError.typeMismatch(UInt16.self, DecodingError.Context.init(codingPath: [key], debugDescription: "UInt16不能容纳负数")) }
        return UInt16(value)
    }

    // MARK: Int8 -> UInt16
    func toUInt16(key: CodingKey, value: Int8) throws -> UInt16 {
        if value < 0 { throw DecodingError.typeMismatch(UInt16.self, DecodingError.Context.init(codingPath: [key], debugDescription: "UInt16不能容纳负数")) }
        return UInt16(value)
    }

    func toUInt16(key: CodingKey, value: Int8) throws -> UInt16? {
        if value < 0 { throw DecodingError.typeMismatch(UInt16.self, DecodingError.Context.init(codingPath: [key], debugDescription: "UInt16不能容纳负数")) }
        return UInt16(value)
    }

    // MARK: Int16 -> UInt16
    func toUInt16(key: CodingKey, value: Int16) throws -> UInt16 {
        if value < 0 { throw DecodingError.typeMismatch(UInt16.self, DecodingError.Context.init(codingPath: [key], debugDescription: "UInt16不能容纳负数")) }
        return UInt16(value)
    }

    func toUInt16(key: CodingKey, value: Int16) throws -> UInt16? {
        if value < 0 { throw DecodingError.typeMismatch(UInt16.self, DecodingError.Context.init(codingPath: [key], debugDescription: "UInt16不能容纳负数")) }
        return UInt16(value)
    }

    // MARK: Int32 -> UInt16
    func toUInt16(key: CodingKey, value: Int32) throws -> UInt16 {
        if value < 0 { throw DecodingError.typeMismatch(UInt16.self, DecodingError.Context.init(codingPath: [key], debugDescription: "UInt16不能容纳负数")) }
        return UInt16(value)
    }

    func toUInt16(key: CodingKey, value: Int32) throws -> UInt16? {
        if value < 0 { throw DecodingError.typeMismatch(UInt16.self, DecodingError.Context.init(codingPath: [key], debugDescription: "UInt16不能容纳负数")) }
        return UInt16(value)
    }

    // MARK: Int64 -> UInt16
    func toUInt16(key: CodingKey, value: Int64) throws -> UInt16 {
        if value < 0 { throw DecodingError.typeMismatch(UInt16.self, DecodingError.Context.init(codingPath: [key], debugDescription: "UInt16不能容纳负数")) }
        return UInt16(value)
    }

    func toUInt16(key: CodingKey, value: Int64) throws -> UInt16? {
        if value < 0 { throw DecodingError.typeMismatch(UInt16.self, DecodingError.Context.init(codingPath: [key], debugDescription: "UInt16不能容纳负数")) }
        return UInt16(value)
    }

    // MARK: UInt -> UInt16
    func toUInt16(key: CodingKey, value: UInt) -> UInt16 {
        return UInt16(value)
    }

    func toUInt16(key: CodingKey, value: UInt) -> UInt16? {
        return UInt16(value)
    }

    // MARK: UInt8 -> UInt16
    func toUInt16(key: CodingKey, value: UInt8) -> UInt16 {
        return UInt16(value)
    }

    func toUInt16(key: CodingKey, value: UInt8) -> UInt16? {
        return UInt16(value)
    }

    // MARK: UInt16 -> UInt16
    func toUInt16(key: CodingKey, value: UInt16) -> UInt16 {
        return value
    }

    func toUInt16(key: CodingKey, value: UInt16) -> UInt16? {
        return value
    }

    // MARK: UInt32 -> UInt16
    func toUInt16(key: CodingKey, value: UInt32) -> UInt16 {
        return UInt16(value)
    }

    func toUInt16(key: CodingKey, value: UInt32) -> UInt16? {
        return UInt16(value)
    }

    // MARK: UInt64 -> UInt16
    func toUInt16(key: CodingKey, value: UInt64) -> UInt16 {
        return UInt16(value)
    }

    func toUInt16(key: CodingKey, value: UInt64) -> UInt16? {
        return UInt16(value)
    }

    // MARK: Float -> UInt16
    func toUInt16(key: CodingKey, value: Float) throws -> UInt16 {
        if value < 0 { throw DecodingError.typeMismatch(UInt16.self, DecodingError.Context.init(codingPath: [key], debugDescription: "UInt16不能容纳负数")) }
        return UInt16(value)
    }

    func toUInt16(key: CodingKey, value: Float) throws -> UInt16? {
        if value < 0 { throw DecodingError.typeMismatch(UInt16.self, DecodingError.Context.init(codingPath: [key], debugDescription: "UInt16不能容纳负数")) }
        return UInt16(value)
    }

// MARK: Double -> UInt16
    func toUInt16(key: CodingKey, value: Double) throws -> UInt16 {
        if value < 0 { throw DecodingError.typeMismatch(UInt16.self, DecodingError.Context.init(codingPath: [key], debugDescription: "UInt16不能容纳负数")) }
        return UInt16(value)
    }

    func toUInt16(key: CodingKey, value: Double) throws -> UInt16? {
        if value < 0 { throw DecodingError.typeMismatch(UInt16.self, DecodingError.Context.init(codingPath: [key], debugDescription: "UInt16不能容纳负数")) }
        return UInt16(value)
    }

    // MARK: String -> UInt16
    func toUInt16(key: CodingKey, value: String) -> UInt16 {
        switch value.lowercased() {
        case "true": return 1
        case "false": return 0
        default: return UInt16(value.lowercased()) ?? 0
        }
    }

    func toUInt16(key: CodingKey, value: String) -> UInt16? {
        switch value.lowercased() {
        case "true": return 1
        case "false": return 0
        default: return UInt16(value.lowercased())
        }
    }

    // MARK: Dictionary -> UInt16
    func toUInt16(key: CodingKey, value: [AnyHashable: Any]) -> UInt16 {
        return 0
    }

    func toUInt16(key: CodingKey, value: [AnyHashable: Any]) -> UInt16? {
        return 0
    }

    // MARK: Array -> UInt16
    func toUInt16(key: CodingKey, value: [Any]) -> UInt16 {
        return 0
    }

    func toUInt16(key: CodingKey, value: [Any]) -> UInt16? {
        return 0
    }
}

// MARK: - UInt32 -
extension TypeConvertible {
    // MARK: NSNull -> UInt32
    func toUInt32(key: CodingKey, value: NSNull) -> UInt32 {
        return 0
    }

    func toUInt32(key: CodingKey, value: NSNull) -> UInt32? {
        return 0
    }

    // MARK: String -> UInt32
    func toUInt32(key: CodingKey, value: Bool) -> UInt32 {
        switch value {
        case true: return 1
        default: return 0
        }
    }

    func toUInt32(key: CodingKey, value: Bool) -> UInt32? {
        switch value {
        case true: return 1
        default: return 0
        }
    }

    // MARK: Int -> UInt32
    func toUInt32(key: CodingKey, value: Int) throws -> UInt32 {
        if value < 0 { throw DecodingError.typeMismatch(UInt32.self, DecodingError.Context.init(codingPath: [key], debugDescription: "UInt32不能容纳负数")) }
        return UInt32(value)
    }

    func toUInt32(key: CodingKey, value: Int) throws -> UInt32? {
        if value < 0 { throw DecodingError.typeMismatch(UInt32.self, DecodingError.Context.init(codingPath: [key], debugDescription: "UInt32不能容纳负数")) }
        return UInt32(value)
    }

    // MARK: Int8 -> UInt32
    func toUInt32(key: CodingKey, value: Int8) throws -> UInt32 {
        if value < 0 { throw DecodingError.typeMismatch(UInt32.self, DecodingError.Context.init(codingPath: [key], debugDescription: "UInt32不能容纳负数")) }
        return UInt32(value)
    }

    func toUInt32(key: CodingKey, value: Int8) throws -> UInt32? {
        if value < 0 { throw DecodingError.typeMismatch(UInt32.self, DecodingError.Context.init(codingPath: [key], debugDescription: "UInt32不能容纳负数")) }
        return UInt32(value)
    }

    // MARK: Int16 -> UInt32
    func toUInt32(key: CodingKey, value: Int16) throws -> UInt32 {
        if value < 0 { throw DecodingError.typeMismatch(UInt32.self, DecodingError.Context.init(codingPath: [key], debugDescription: "UInt32不能容纳负数")) }
        return UInt32(value)
    }

    func toUInt32(key: CodingKey, value: Int16) throws -> UInt32? {
        if value < 0 { throw DecodingError.typeMismatch(UInt32.self, DecodingError.Context.init(codingPath: [key], debugDescription: "UInt32不能容纳负数")) }
        return UInt32(value)
    }

    // MARK: Int32 -> UInt32
    func toUInt32(key: CodingKey, value: Int32) throws -> UInt32 {
        if value < 0 { throw DecodingError.typeMismatch(UInt32.self, DecodingError.Context.init(codingPath: [key], debugDescription: "UInt32不能容纳负数")) }
        return UInt32(value)
    }

    func toUInt32(key: CodingKey, value: Int32) throws -> UInt32? {
        if value < 0 { throw DecodingError.typeMismatch(UInt32.self, DecodingError.Context.init(codingPath: [key], debugDescription: "UInt32不能容纳负数")) }
        return UInt32(value)
    }

    // MARK: Int64 -> UInt32
    func toUInt32(key: CodingKey, value: Int64) throws -> UInt32 {
        if value < 0 { throw DecodingError.typeMismatch(UInt32.self, DecodingError.Context.init(codingPath: [key], debugDescription: "UInt32不能容纳负数")) }
        return UInt32(value)
    }

    func toUInt32(key: CodingKey, value: Int64) throws -> UInt32? {
        if value < 0 { throw DecodingError.typeMismatch(UInt32.self, DecodingError.Context.init(codingPath: [key], debugDescription: "UInt32不能容纳负数")) }
        return UInt32(value)
    }

    // MARK: UInt -> UInt32
    func toUInt32(key: CodingKey, value: UInt) -> UInt32 {
        return UInt32(value)
    }

    func toUInt32(key: CodingKey, value: UInt) -> UInt32? {
        return UInt32(value)
    }

    // MARK: UInt8 -> UInt32
    func toUInt32(key: CodingKey, value: UInt8) -> UInt32 {
        return UInt32(value)
    }

    func toUInt32(key: CodingKey, value: UInt8) -> UInt32? {
        return UInt32(value)
    }

    // MARK: UInt16 -> UInt32
    func toUInt32(key: CodingKey, value: UInt16) -> UInt32 {
        return UInt32(value)
    }

    func toUInt32(key: CodingKey, value: UInt16) -> UInt32? {
        return UInt32(value)
    }

    // MARK: UInt32 -> UInt32
    func toUInt32(key: CodingKey, value: UInt32) -> UInt32 {
        return value
    }

    func toUInt32(key: CodingKey, value: UInt32) -> UInt32? {
        return value
    }

    // MARK: UInt64 -> UInt32
    func toUInt32(key: CodingKey, value: UInt64) -> UInt32 {
        return UInt32(value)
    }

    func toUInt32(key: CodingKey, value: UInt64) -> UInt32? {
        return UInt32(value)
    }

    // MARK: Float -> UInt32
    func toUInt32(key: CodingKey, value: Float) throws -> UInt32 {
        if value < 0 { throw DecodingError.typeMismatch(UInt32.self, DecodingError.Context.init(codingPath: [key], debugDescription: "UInt32不能容纳负数")) }
        return UInt32(value)
    }

    func toUInt32(key: CodingKey, value: Float) throws -> UInt32? {
        if value < 0 { throw DecodingError.typeMismatch(UInt32.self, DecodingError.Context.init(codingPath: [key], debugDescription: "UInt32不能容纳负数")) }
        return UInt32(value)
    }

    // MARK: Double -> UInt32
    func toUInt32(key: CodingKey, value: Double) throws -> UInt32 {
        if value < 0 { throw DecodingError.typeMismatch(UInt32.self, DecodingError.Context.init(codingPath: [key], debugDescription: "UInt32不能容纳负数")) }
        return UInt32(value)
    }

    func toUInt32(key: CodingKey, value: Double) throws -> UInt32? {
        if value < 0 { throw DecodingError.typeMismatch(UInt32.self, DecodingError.Context.init(codingPath: [key], debugDescription: "UInt32不能容纳负数")) }
        return UInt32(value)
    }

    // MARK: String -> UInt32
    func toUInt32(key: CodingKey, value: String) -> UInt32 {
        switch value.lowercased() {
        case "true": return 1
        case "false": return 0
        default: return UInt32(value.lowercased()) ?? 0
        }
    }

    func toUInt32(key: CodingKey, value: String) -> UInt32? {
        switch value.lowercased() {
        case "true": return 1
        case "false": return 0
        default: return UInt32(value.lowercased())
        }
    }

    // MARK: Dictionary -> UInt32
    func toUInt32(key: CodingKey, value: [AnyHashable: Any]) -> UInt32 {
        return 0
    }

    func toUInt32(key: CodingKey, value: [AnyHashable: Any]) -> UInt32? {
        return 0
    }

    // MARK: Array -> UInt32
    func toUInt32(key: CodingKey, value: [Any]) -> UInt32 {
        return 0
    }

    func toUInt32(key: CodingKey, value: [Any]) -> UInt32? {
        return 0
    }
}

// MARK: - UInt64 -
extension TypeConvertible {
    // MARK: NSNull -> UInt64
    func toUInt64(key: CodingKey, value: NSNull) -> UInt64 {
        return 0
    }

    func toUInt64(key: CodingKey, value: NSNull) -> UInt64? {
        return 0
    }
    // MARK: Bool -> UInt64
    func toUInt64(key: CodingKey, value: Bool) -> UInt64 {
        switch value {
        case true: return 1
        default: return 0
        }
    }

    func toUInt64(key: CodingKey, value: Bool) -> UInt64? {
        switch value {
        case true: return 1
        default: return 0
        }
    }

    // MARK: Int -> UInt64
    func toUInt64(key: CodingKey, value: Int) throws -> UInt64 {
        if value < 0 { throw DecodingError.typeMismatch(UInt64.self, DecodingError.Context.init(codingPath: [key], debugDescription: "UInt64不能容纳负数")) }
        return UInt64(value)
    }

    func toUInt64(key: CodingKey, value: Int) throws -> UInt64? {
        if value < 0 { throw DecodingError.typeMismatch(UInt64.self, DecodingError.Context.init(codingPath: [key], debugDescription: "UInt64不能容纳负数")) }
        return UInt64(value)
    }

    // MARK: Int8 -> UInt64
    func toUInt64(key: CodingKey, value: Int8) throws -> UInt64 {
        if value < 0 { throw DecodingError.typeMismatch(UInt64.self, DecodingError.Context.init(codingPath: [key], debugDescription: "UInt64不能容纳负数")) }
        return UInt64(value)
    }

    func toUInt64(key: CodingKey, value: Int8) throws -> UInt64? {
        if value < 0 { throw DecodingError.typeMismatch(UInt64.self, DecodingError.Context.init(codingPath: [key], debugDescription: "UInt64不能容纳负数")) }
        return UInt64(value)
    }

// MARK: Int16 -> UInt64
    func toUInt64(key: CodingKey, value: Int16) throws -> UInt64 {
        if value < 0 { throw DecodingError.typeMismatch(UInt64.self, DecodingError.Context.init(codingPath: [key], debugDescription: "UInt64不能容纳负数")) }
        return UInt64(value)
    }

    func toUInt64(key: CodingKey, value: Int16) throws -> UInt64? {
        if value < 0 { throw DecodingError.typeMismatch(UInt64.self, DecodingError.Context.init(codingPath: [key], debugDescription: "UInt64不能容纳负数")) }
        return UInt64(value)
    }

    // MARK: Int32 -> UInt64
    func toUInt64(key: CodingKey, value: Int32) throws -> UInt64 {
        if value < 0 { throw DecodingError.typeMismatch(UInt64.self, DecodingError.Context.init(codingPath: [key], debugDescription: "UInt64不能容纳负数")) }
        return UInt64(value)
    }

    func toUInt64(key: CodingKey, value: Int32) throws -> UInt64? {
        if value < 0 { throw DecodingError.typeMismatch(UInt64.self, DecodingError.Context.init(codingPath: [key], debugDescription: "UInt64不能容纳负数")) }
        return UInt64(value)
    }
    // MARK: Int64 -> UInt64
    func toUInt64(key: CodingKey, value: Int64) throws -> UInt64 {
        if value < 0 { throw DecodingError.typeMismatch(UInt64.self, DecodingError.Context.init(codingPath: [key], debugDescription: "UInt64不能容纳负数")) }
        return UInt64(value)
    }

    func toUInt64(key: CodingKey, value: Int64) throws -> UInt64? {
        if value < 0 { throw DecodingError.typeMismatch(UInt64.self, DecodingError.Context.init(codingPath: [key], debugDescription: "UInt64不能容纳负数")) }
        return UInt64(value)
    }

    // MARK: UInt -> UInt64
    func toUInt64(key: CodingKey, value: UInt) -> UInt64 {
        return UInt64(value)
    }

    func toUInt64(key: CodingKey, value: UInt) -> UInt64? {
        return UInt64(value)
    }

    // MARK: UInt8 -> UInt64
    func toUInt64(key: CodingKey, value: UInt8) -> UInt64 {
        return UInt64(value)
    }

    func toUInt64(key: CodingKey, value: UInt8) -> UInt64? {
        return UInt64(value)
    }

    // MARK: UInt16 -> UInt64
    func toUInt64(key: CodingKey, value: UInt16) -> UInt64 {
        return UInt64(value)
    }

    func toUInt64(key: CodingKey, value: UInt16) -> UInt64? {
        return UInt64(value)
    }

    // MARK: UInt32 -> UInt64
    func toUInt64(key: CodingKey, value: UInt32) -> UInt64 {
        return UInt64(value)
    }

    func toUInt64(key: CodingKey, value: UInt32) -> UInt64? {
        return UInt64(value)
    }

    // MARK: UInt64 -> UInt64
    func toUInt64(key: CodingKey, value: UInt64) -> UInt64 {
        return value
    }

    func toUInt64(key: CodingKey, value: UInt64) -> UInt64? {
        return value
    }

    // MARK: Float -> UInt64
    func toUInt64(key: CodingKey, value: Float) throws -> UInt64 {
        if value < 0 { throw DecodingError.typeMismatch(UInt64.self, DecodingError.Context.init(codingPath: [key], debugDescription: "UInt64不能容纳负数")) }
        return UInt64(value)
    }

    func toUInt64(key: CodingKey, value: Float) throws -> UInt64? {
        if value < 0 { throw DecodingError.typeMismatch(UInt64.self, DecodingError.Context.init(codingPath: [key], debugDescription: "UInt64不能容纳负数")) }
        return UInt64(value)
    }

    // MARK: Double -> UInt64
    func toUInt64(key: CodingKey, value: Double) throws -> UInt64 {
        if value < 0 { throw DecodingError.typeMismatch(UInt64.self, DecodingError.Context.init(codingPath: [key], debugDescription: "UInt64不能容纳负数")) }
        return UInt64(value)
    }

    func toUInt64(key: CodingKey, value: Double) throws -> UInt64? {
        if value < 0 { throw DecodingError.typeMismatch(UInt64.self, DecodingError.Context.init(codingPath: [key], debugDescription: "UInt64不能容纳负数")) }
        return UInt64(value)
    }

    // MARK: String -> UInt64
    func toUInt64(key: CodingKey, value: String) -> UInt64 {
        switch value.lowercased() {
        case "true": return 1
        case "false": return 0
        default: return UInt64(value.lowercased()) ?? 0
        }
    }

    func toUInt64(key: CodingKey, value: String) -> UInt64? {
        switch value.lowercased() {
        case "true": return 1
        case "false": return 0
        default: return UInt64(value.lowercased())
        }
    }

    // MARK: Dictionary -> UInt64
    func toUInt64(key: CodingKey, value: [AnyHashable: Any]) -> UInt64 {
        return 0
    }

    func toUInt64(key: CodingKey, value: [AnyHashable: Any]) -> UInt64? {
        return 0
    }

    // MARK: Array -> UInt64
    func toUInt64(key: CodingKey, value: [Any]) -> UInt64 {
        return 0
    }

    func toUInt64(key: CodingKey, value: [Any]) -> UInt64? {
        return 0
    }
}

// MARK: - Float -
extension TypeConvertible {
    // MARK: Bool -> Float
    func toFloat(key: CodingKey, value: NSNull) ->  Float {
        return 0.0
    }

    func toFloat(key: CodingKey, value: NSNull) ->  Float? {
        return 0.0
    }

    func toFloat(key: CodingKey, value: Bool) -> Float {
        switch value {
        case true: return 1
        default: return 0
        }
    }

    func toFloat(key: CodingKey, value: Bool) -> Float? {
        switch value {
        case true: return 1
        default: return 0
        }
    }

    // MARK: Int -> Float
    func toFloat(key: CodingKey, value: Int) -> Float {
        return Float(value)
    }

    func toFloat(key: CodingKey, value: Int) -> Float? {
        return Float(value)
    }

    // MARK: Int8 -> Float
    func toFloat(key: CodingKey, value: Int8) -> Float {
        return Float(value)
    }

    func toFloat(key: CodingKey, value: Int8) -> Float? {
        return Float(value)
    }

    // MARK: Int16 -> Float
    func toFloat(key: CodingKey, value: Int16) -> Float {
        return Float(value)
    }

    func toFloat(key: CodingKey, value: Int16) -> Float? {
        return Float(value)
    }

    // MARK: Int32 -> Float
    func toFloat(key: CodingKey, value: Int32) -> Float {
        return Float(value)
    }

    func toFloat(key: CodingKey, value: Int32) -> Float? {
        return Float(value)
    }

    // MARK: Int64 -> Float
    func toFloat(key: CodingKey, value: Int64) -> Float {
        return Float(value)
    }

    func toFloat(key: CodingKey, value: Int64) -> Float? {
        return Float(value)
    }

    // MARK: UInt -> Float
    func toFloat(key: CodingKey, value: UInt) -> Float {
        return Float(value)
    }

    func toFloat(key: CodingKey, value: UInt) -> Float? {
        return Float(value)
    }

    // MARK: UInt8 -> Float
    func toFloat(key: CodingKey, value: UInt8) -> Float {
        return Float(value)
    }

    func toFloat(key: CodingKey, value: UInt8) -> Float? {
        return Float(value)
    }

    // MARK: UInt16 -> Float
    func toFloat(key: CodingKey, value: UInt16) -> Float {
        return Float(value)
    }

    func toFloat(key: CodingKey, value: UInt16) -> Float? {
        return Float(value)
    }

    // MARK: UInt32 -> Float
    func toFloat(key: CodingKey, value: UInt32) -> Float {
        return Float(value)
    }

    func toFloat(key: CodingKey, value: UInt32) -> Float? {
        return Float(value)
    }

    // MARK: UInt64 -> Float
    func toFloat(key: CodingKey, value: UInt64) -> Float {
        return Float(value)
    }

    func toFloat(key: CodingKey, value: UInt64) -> Float? {
        return Float(value)
    }

    // MARK: Float -> Float
    func toFloat(key: CodingKey, value: Float) -> Float {
        return value
    }

    func toFloat(key: CodingKey, value: Float) -> Float? {
        return value
    }

    // MARK: Double -> Float
    func toFloat(key: CodingKey, value: Double) -> Float {
        return Float(value)
    }

    func toFloat(key: CodingKey, value: Double) -> Float? {
        return Float(value)
    }

    // MARK: String -> Float
    func toFloat(key: CodingKey, value: String) -> Float {
        switch value.lowercased() {
        case "true": return 1
        case "false": return 0
        default: return Float(value.lowercased()) ?? 0
        }
    }

    func toFloat(key: CodingKey, value: String) -> Float? {
        switch value.lowercased() {
        case "true": return 1
        case "false": return 0
        default: return Float(value.lowercased())
        }
    }

    // MARK: Dictionary -> Float
    func toFloat(key: CodingKey, value: [AnyHashable: Any]) ->  Float {
        return 0.0
    }
    func toFloat(key: CodingKey, value: [AnyHashable: Any]) ->  Float? {
        return 0.0
    }

    // MARK: Array -> Float
    func toFloat(key: CodingKey, value: [Any]) ->  Float {
        return 0.0
    }

    func toFloat(key: CodingKey, value: [Any]) ->  Float? {
        return 0.0
    }
}

// MARK: - Double -
extension TypeConvertible {
    // MARK: NSNull -> Double
    func toDouble(key: CodingKey, value: NSNull) ->  Double {
        return 0.0
    }

    func toDouble(key: CodingKey, value: NSNull) ->  Double? {
        return 0.0
    }
    // MARK: Bool -> Double
    func toDouble(key: CodingKey, value: Bool) -> Double {
        switch value {
        case true: return 1
        default: return 0
        }
    }

    func toDouble(key: CodingKey, value: Bool) -> Double? {
        switch value {
        case true: return 1
        default: return 0
        }
    }

    // MARK: Int -> Double
    func toDouble(key: CodingKey, value: Int) -> Double {
        return Double(value)
    }

    func toDouble(key: CodingKey, value: Int) -> Double? {
        return Double(value)
    }

    // MARK: Int8 -> Double
    func toDouble(key: CodingKey, value: Int8) -> Double {
        return Double(value)
    }

    func toDouble(key: CodingKey, value: Int8) -> Double? {
        return Double(value)
    }

    // MARK: Int16 -> Double
    func toDouble(key: CodingKey, value: Int16) -> Double {
        return Double(value)
    }

    func toDouble(key: CodingKey, value: Int16) -> Double? {
        return Double(value)
    }

    // MARK: Int32 -> Double
    func toDouble(key: CodingKey, value: Int32) -> Double {
        return Double(value)
    }

    func toDouble(key: CodingKey, value: Int32) -> Double? {
        return Double(value)
    }

    // MARK: Int64 -> Double
    func toDouble(key: CodingKey, value: Int64) -> Double {
        return Double(value)
    }

    func toDouble(key: CodingKey, value: Int64) -> Double? {
        return Double(value)
    }

    // MARK: UInt -> Double
    func toDouble(key: CodingKey, value: UInt) -> Double {
        return Double(value)
    }

    func toDouble(key: CodingKey, value: UInt) -> Double? {
        return Double(value)
    }

    // MARK: UInt8 -> Double
    func toDouble(key: CodingKey, value: UInt8) -> Double {
        return Double(value)
    }

    func toDouble(key: CodingKey, value: UInt8) -> Double? {
          return Double(value)
    }

    // MARK: UInt16 -> Double
    func toDouble(key: CodingKey, value: UInt16) -> Double {
          return Double(value)
    }

    func toDouble(key: CodingKey, value: UInt16) -> Double? {
          return Double(value)
    }

    // MARK: UInt32 -> Double
    func toDouble(key: CodingKey, value: UInt32) -> Double {
          return Double(value)
    }

    func toDouble(key: CodingKey, value: UInt32) -> Double? {
          return Double(value)
    }

    // MARK: UInt64 -> Double
    func toDouble(key: CodingKey, value: UInt64) -> Double {
          return Double(value)
    }

    func toDouble(key: CodingKey, value: UInt64) -> Double? {
          return Double(value)
    }

    // MARK: Float -> Double
    func toDouble(key: CodingKey, value: Float) -> Double {
          return Double(value)
    }

    func toDouble(key: CodingKey, value: Float) -> Double? {
          return Double(value)
    }

    // MARK: Double -> Double
    func toDouble(key: CodingKey, value: Double) -> Double {
          return value
    }

    func toDouble(key: CodingKey, value: Double) -> Double? {
          return value
    }

    // MARK: String -> Double
    func toDouble(key: CodingKey, value: String) -> Double {
        switch value.lowercased() {
        case "true": return 1
        case "false": return 0
        default: return Double(value.lowercased()) ?? 0
        }
    }

    func toDouble(key: CodingKey, value: String) -> Double? {
        switch value.lowercased() {
        case "true": return 1
        case "false": return 0
        default: return Double(value.lowercased())
        }
    }

    // MARK: Dictionary -> Double
    func toDouble(key: CodingKey, value: [AnyHashable: Any]) ->  Double {
        return 0.0
    }
    func toDouble(key: CodingKey, value: [AnyHashable: Any]) ->  Double? {
        return 0.0
    }

    // MARK: Array -> Double
    func toDouble(key: CodingKey, value: [Any]) ->  Double {
        return 0.0
    }

    func toDouble(key: CodingKey, value: [Any]) ->  Double? {
        return 0.0
    }
}

// MARK: - String -
extension TypeConvertible {
    // MARK: NSNull -> String
    func toString(key: CodingKey, value: NSNull) -> String {
        return ""
    }
    func toString(key: CodingKey, value: NSNull) -> String? {
        return ""
    }

    // MARK: Bool -> String
    func toString(key: CodingKey, value: Bool) -> String {
        switch value {
        case true: return "true"
        case false: return "false"
        }
    }

    func toString(key: CodingKey, value: Bool) -> String? {
        switch value {
        case true: return "true"
        case false: return "false"
        }
    }

// MARK: Int -> String
    func toString(key: CodingKey, value: Int) -> String {
        return "\(value)"
    }

    func toString(key: CodingKey, value: Int) -> String? {
        return "\(value)"
    }

    // MARK: Int8 -> String
    func toString(key: CodingKey, value: Int8) -> String {
        return "\(value)"
    }

    func toString(key: CodingKey, value: Int8) -> String? {
        return "\(value)"
    }

    // MARK: Int16 -> String
    func toString(key: CodingKey, value: Int16) -> String {
        return "\(value)"
    }

    func toString(key: CodingKey, value: Int16) -> String? {
        return "\(value)"
    }

    // MARK: Int32 -> String
    func toString(key: CodingKey, value: Int32) -> String {
        return "\(value)"
    }

    func toString(key: CodingKey, value: Int32) -> String? {
        return "\(value)"
    }

    // MARK: Int64 -> String
    func toString(key: CodingKey, value: Int64) -> String {
        return "\(value)"
    }

    func toString(key: CodingKey, value: Int64) -> String? {
        return "\(value)"
    }

    // MARK: UInt -> String
    func toString(key: CodingKey, value: UInt) -> String {
        return "\(value)"
    }

    func toString(key: CodingKey, value: UInt) -> String? {
        return "\(value)"
    }

    // MARK: UInt8 -> String
    func toString(key: CodingKey, value: UInt8) -> String {
        return "\(value)"
    }

    func toString(key: CodingKey, value: UInt8) -> String? {
        return "\(value)"
    }

    // MARK: UInt16 -> String
    func toString(key: CodingKey, value: UInt16) -> String {
        return "\(value)"
    }

    func toString(key: CodingKey, value: UInt16) -> String? {
        return "\(value)"
    }

    // MARK: UInt32 -> String
    func toString(key: CodingKey, value: UInt32) -> String {
        return "\(value)"
    }

    func toString(key: CodingKey, value: UInt32) -> String? {
        return "\(value)"
    }

    // MARK: UInt64 -> String
    func toString(key: CodingKey, value: UInt64) -> String {
        return "\(value)"
    }

    func toString(key: CodingKey, value: UInt64) -> String? {
        return "\(value)"
    }

    // MARK: Float -> String
    func toString(key: CodingKey, value: Float) -> String {
        return "\(value)"
    }

    func toString(key: CodingKey, value: Float) -> String? {
        return "\(value)"
    }

    // MARK: Double -> String
    func toString(key: CodingKey, value: Double) -> String {
        return "\(value)"
    }

    func toString(key: CodingKey, value: Double) -> String? {
        return "\(value)"
    }

    // MARK: String -> String
    func toString(key: CodingKey, value: String) -> String {
        return value
    }

    func toString(key: CodingKey, value: String) -> String? {
        return value
    }

    // MARK: Dictionary -> String
    func toString(key: CodingKey, value: [AnyHashable: Any]) -> String {
        return ""
    }

    func toString(key: CodingKey, value: [AnyHashable: Any]) -> String? {
        return ""
    }

    // MARK: Array -> String
    func toString(key: CodingKey, value: [Any]) -> String {
        return ""
    }

    func toString(key: CodingKey, value: [Any]) -> String? {
        return ""
    }
}

#if false
/// 用以处理数值类型一致 但是取值超出范围
protocol NIOSingleValueDecodingScopeExecptionConvertible: RawRepresentable, Codable where RawValue: Codable {
    /// 单值容器 便于数值异常处理
    /// - Parameter value: 异常数值
    init(with value: Decodable)
}

extension NIOSingleValueDecodingScopeExecptionConvertible {
    init(from decoder: Decoder) throws {
        let singleValueContainer: SingleValueDecodingContainer = try decoder.singleValueContainer()
        do {
            let decoded = try singleValueContainer.decode(RawValue.self)
            self = Self.init(rawValue: decoded) ?? Self.init(with: decoded)
        } catch {
            self = Self.init(with: 0)
        }
    }
}
#endif

// MARK: - 处理单值去值异常问题
/// 针对单值取值异常处理
public protocol SingleValueDecodingScopeControllable {
    func scope(key: CodingKey) -> Set<AnyHashable>
    func execption(key: CodingKey, source: AnyHashable) -> AnyHashable
}

// MARK: - 处理模型与数据结构不匹配问题
/// 模型解析失败时 使用的构造器 在可能解析失败的模型中实现该协议
public protocol DefaultValueControllable {
    init(by key: CodingKey, source: Any)
}

/// 模型解析失败时 用以防御处理的 自定义结构中(enum, struc, class)中实现该协议
public protocol HandleTypeDefaultValueControllable {
    func handle(key: CodingKey, source: Any) -> DefaultValueControllable
}
