import Foundation

/// 基础类型转换处理
public protocol TypeConvertible {
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
    
    func toInt(key: CodingKey, value: Bool) -> Int
    func toInt(key: CodingKey, value: Bool) -> Int?
    
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
    
    func toInt8(key: CodingKey, value: Bool) -> Int8
    func toInt8(key: CodingKey, value: Bool) -> Int8?
    
    func toInt8(key: CodingKey, value: Int) -> Int8
    func toInt8(key: CodingKey, value: Int) -> Int8?
    
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
    
    func toInt16(key: CodingKey, value: Bool) -> Int16
    func toInt16(key: CodingKey, value: Bool) -> Int16?
    
    func toInt16(key: CodingKey, value: Int) -> Int16
    func toInt16(key: CodingKey, value: Int) -> Int16?
    
    func toInt16(key: CodingKey, value: Int8) -> Int16
    func toInt16(key: CodingKey, value: Int8) -> Int16?
    
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
    
    func toInt32(key: CodingKey, value: Bool) -> Int32
    func toInt32(key: CodingKey, value: Bool) -> Int32?
    
    func toInt32(key: CodingKey, value: Int) -> Int32
    func toInt32(key: CodingKey, value: Int) -> Int32?
    
    func toInt32(key: CodingKey, value: Int8) -> Int32
    func toInt32(key: CodingKey, value: Int8) -> Int32?
    
    func toInt32(key: CodingKey, value: Int16) -> Int32
    func toInt32(key: CodingKey, value: Int16) -> Int32?
    
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
    
    func toUInt(key: CodingKey, value: Bool) -> UInt
    func toUInt(key: CodingKey, value: Bool) -> UInt?
    
    func toUInt(key: CodingKey, value: Int) throws -> UInt
    func toUInt(key: CodingKey, value: Int) throws -> UInt?
    
    func toUInt(key: CodingKey, value: Int8) throws -> UInt
    func toUInt(key: CodingKey, value: Int8) throws-> UInt?
    
    func toUInt(key: CodingKey, value: Int16) throws -> UInt
    func toUInt(key: CodingKey, value: Int16) throws -> UInt?
    
    func toUInt(key: CodingKey, value: Int32) throws -> UInt
    func toUInt(key: CodingKey, value: Int32) throws -> UInt?
    
    func toUInt(key: CodingKey, value: Int64) throws -> UInt
    func toUInt(key: CodingKey, value: Int64) throws -> UInt?
    
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
    func toUInt32(key: CodingKey, value: Int64) throws-> UInt32?

    func toUInt32(key: CodingKey, value: UInt) -> UInt32
    func toUInt32(key: CodingKey, value: UInt) -> UInt32?

    func toUInt32(key: CodingKey, value: UInt8) -> UInt32
    func toUInt32(key: CodingKey, value: UInt8) -> UInt32?

    func toUInt32(key: CodingKey, value: UInt16) -> UInt32
    func toUInt32(key: CodingKey, value: UInt16) -> UInt32?

    func toUInt32(key: CodingKey, value: UInt64) -> UInt32
    func toUInt32(key: CodingKey, value: UInt64) -> UInt32?

    func toUInt32(key: CodingKey, value: Float) throws -> UInt32
    func toUInt32(key: CodingKey, value: Float) throws -> UInt32?

    func toUInt32(key: CodingKey, value: Double) throws -> UInt32
    func toUInt32(key: CodingKey, value: Double) throws -> UInt32?

    func toUInt32(key: CodingKey, value: String) -> UInt32
    func toUInt32(key: CodingKey, value: String) -> UInt32?

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

    func toUInt64(key: CodingKey, value: Float) throws -> UInt64
    func toUInt64(key: CodingKey, value: Float) throws -> UInt64?

    func toUInt64(key: CodingKey, value: Double) throws -> UInt64
    func toUInt64(key: CodingKey, value: Double) throws -> UInt64?

    func toUInt64(key: CodingKey, value: String) -> UInt64
    func toUInt64(key: CodingKey, value: String) -> UInt64?

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

    func toFloat(key: CodingKey, value: Double) -> Float
    func toFloat(key: CodingKey, value: Double) -> Float?

    func toFloat(key: CodingKey, value: String) -> Float
    func toFloat(key: CodingKey, value: String) -> Float?

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

    func toDouble(key: CodingKey, value: String) -> Double
    func toDouble(key: CodingKey, value: String) -> Double?

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
}

// MARK: Int转Bool
extension TypeConvertible {
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
}

// MARK: Int8转Bool
extension TypeConvertible {
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
}

// MARK: Int16转Bool
extension TypeConvertible {
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
}

// MARK: Int32转Bool
extension TypeConvertible {
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
}

// MARK: Int64转Bool
extension TypeConvertible {
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
}

// MARK: UInt转Bool
extension TypeConvertible {
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
}

// MARK: UInt8转Bool
extension TypeConvertible {
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
}

// MARK: UInt16转Bool
extension TypeConvertible {
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
}

// MARK: UInt32转Bool
extension TypeConvertible {
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
}

// MARK: UInt64转Bool
extension TypeConvertible {
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
}

// MARK: Float转Bool
extension TypeConvertible {
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
}

// MARK: Double转Bool
extension TypeConvertible {
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
}

// MARK: String转Bool
extension TypeConvertible {
    func toBool(key: CodingKey, value: String) -> Bool {
        switch value.lowercased() {
        case "true", "yes": return true
        case "false", "no": return false
        default: return false
        }
    }
    
    func toBool(key: CodingKey, value: String) -> Bool? {
        switch value.lowercased() {
        case "true", "yes": return true
        case "false", "no": return false
        default: return nil
        }
    }
}

// MARK: Int转Bool
extension TypeConvertible {
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
}

// MARK: Int8转Int
extension TypeConvertible {
    func toInt(key: CodingKey, value: Int8) -> Int {
        return Int(value)
    }
    
    func toInt(key: CodingKey, value: Int8) -> Int? {
        return Int(value)
    }
}

// MARK: Int16转Int
extension TypeConvertible {
    func toInt(key: CodingKey, value: Int16) -> Int {
        return Int(value)
    }
    
    func toInt(key: CodingKey, value: Int16) -> Int? {
        return Int(value)
    }
}

// MARK: Int32转Int
extension TypeConvertible {
    func toInt(key: CodingKey, value: Int32) -> Int {
        return Int(value)
    }
    
    func toInt(key: CodingKey, value: Int32) -> Int? {
        return Int(value)
    }
}

// MARK: Int64转Int
extension TypeConvertible {
    func toInt(key: CodingKey, value: Int64) -> Int {
        return Int(value)
    }
    
    func toInt(key: CodingKey, value: Int64) -> Int? {
        return Int(value)
    }
}

// MARK: UInt转Int
extension TypeConvertible {
    func toInt(key: CodingKey, value: UInt) -> Int {
        return Int(value)
    }
    
    func toInt(key: CodingKey, value: UInt) -> Int? {
        return Int(value)
    }
}

// MARK: UInt8转Int
extension TypeConvertible {
    func toInt(key: CodingKey, value: UInt8) -> Int {
        return Int(value)
    }
    
    func toInt(key: CodingKey, value: UInt8) -> Int? {
        return Int(value)
    }
}

// MARK: UInt16转Int
extension TypeConvertible {
    func toInt(key: CodingKey, value: UInt16) -> Int {
        return Int(value)
    }
    
    func toInt(key: CodingKey, value: UInt16) -> Int? {
        return Int(value)
    }
}

// MARK: UInt32转Int
extension TypeConvertible {
    func toInt(key: CodingKey, value: UInt32) -> Int {
        return Int(value)
    }
    
    func toInt(key: CodingKey, value: UInt32) -> Int? {
        return Int(value)
    }
}

// MARK: UInt64转Int
extension TypeConvertible {
    func toInt(key: CodingKey, value: UInt64) -> Int {
        return Int(value)
    }
    
    func toInt(key: CodingKey, value: UInt64) -> Int? {
        return Int(value)
    }
}

// MARK: Float转Int
extension TypeConvertible {
    func toInt(key: CodingKey, value: Float) -> Int {
        return Int(value)
    }
    
    func toInt(key: CodingKey, value: Float) -> Int? {
        return Int(value)
    }
}

// MARK: Double转Int
extension TypeConvertible {
    func toInt(key: CodingKey, value: Double) -> Int {
        return Int(value)
    }
    
    func toInt(key: CodingKey, value: Double) -> Int? {
        return Int(value)
    }
}

// MARK: String转Int
extension TypeConvertible {
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
        case "true", "yes": return 1
        case "false", "no": return 0
        default: return Int(value)
        }
    }
}

// MARK: Bool转Int8
extension TypeConvertible {
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
}

// MARK: Int转Int8
extension TypeConvertible {
    func toInt8(key: CodingKey, value: Int) -> Int8 {
        return Int8(value)
    }
    
    func toInt8(key: CodingKey, value: Int) -> Int8? {
        return Int8(value)
    }
}

// MARK: Int16转Int8
extension TypeConvertible {
    func toInt8(key: CodingKey, value: Int16) -> Int8 {
        return Int8(value)
    }
    
    func toInt8(key: CodingKey, value: Int16) -> Int8? {
        return Int8(value)
    }
}

// MARK: Int32转Int8
extension TypeConvertible {
    func toInt8(key: CodingKey, value: Int32) -> Int8 {
        return Int8(value)
    }
    
    func toInt8(key: CodingKey, value: Int32) -> Int8? {
        return Int8(value)
    }
}

// MARK: Int64转Int8
extension TypeConvertible {
    func toInt8(key: CodingKey, value: Int64) -> Int8 {
        return Int8(value)
    }
    
    func toInt8(key: CodingKey, value: Int64) -> Int8? {
        return Int8(value)
    }
}

// MARK: UInt转Int8
extension TypeConvertible {
    func toInt8(key: CodingKey, value: UInt) -> Int8 {
        return Int8(value)
    }
    
    func toInt8(key: CodingKey, value: UInt) -> Int8? {
        return Int8(value)
    }
}

// MARK: UInt8转Int8
extension TypeConvertible {
    func toInt8(key: CodingKey, value: UInt8) -> Int8 {
        return Int8(value)
    }
    
    func toInt8(key: CodingKey, value: UInt8) -> Int8? {
        return Int8(value)
    }
}

extension TypeConvertible {
    func toInt8(key: CodingKey, value: UInt16) -> Int8 {
        return Int8(value)
    }
    
    func toInt8(key: CodingKey, value: UInt16) -> Int8? {
        return Int8(value)
    }
}

// MARK: UInt32转Int8
extension TypeConvertible {
    func toInt8(key: CodingKey, value: UInt32) -> Int8 {
        return Int8(value)
    }
    
    func toInt8(key: CodingKey, value: UInt32) -> Int8? {
        return Int8(value)
    }
}

// MARK: UInt64转Int8
extension TypeConvertible {
    func toInt8(key: CodingKey, value: UInt64) -> Int8 {
        return Int8(value)
    }
    
    func toInt8(key: CodingKey, value: UInt64) -> Int8? {
        return Int8(value)
    }
}

// MARK: Float转Int8
extension TypeConvertible {
    func toInt8(key: CodingKey, value: Float) -> Int8 {
        return Int8(value)
    }
    
    func toInt8(key: CodingKey, value: Float) -> Int8? {
        return Int8(value)
    }
}

// MARK: Double转Int8
extension TypeConvertible {
    func toInt8(key: CodingKey, value: Double) -> Int8 {
        return Int8(value)
    }
    
    func toInt8(key: CodingKey, value: Double) -> Int8? {
        return Int8(value)
    }
}

// MARK: String转Int8
extension TypeConvertible {
    func toInt8(key: CodingKey, value: String) -> Int8 {
        switch value.lowercased() {
        case "true", "yes": return 1
        case "false", "no": return 0
        default: return Int8(value) ?? 0
        }
    }
    
    func toInt8(key: CodingKey, value: String) -> Int8? {
        switch value.lowercased() {
        case "true", "yes": return 1
        case "false", "no": return 0
        default: return Int8(value)
        }
    }
}

// MARK: Bool转Int16
extension TypeConvertible {
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
}

// MARK: Int转Int16
extension TypeConvertible {
    func toInt16(key: CodingKey, value: Int) -> Int16 {
        return Int16(value)
    }
    
    func toInt16(key: CodingKey, value: Int) -> Int16? {
        return Int16(value)
    }
}

// MARK: Int8转Int16
extension TypeConvertible {
    func toInt16(key: CodingKey, value: Int8) -> Int16 {
        return Int16(value)
    }
    
    func toInt16(key: CodingKey, value: Int8) -> Int16? {
        return Int16(value)
    }
}

// MARK: Int32转Int16
extension TypeConvertible {
    func toInt16(key: CodingKey, value: Int32) -> Int16 {
        return Int16(value)
    }
    
    func toInt16(key: CodingKey, value: Int32) -> Int16? {
        return Int16(value)
    }
}

// MARK: Int64转Int16
extension TypeConvertible {
    func toInt16(key: CodingKey, value: Int64) -> Int16 {
        return Int16(value)
    }
    
    func toInt16(key: CodingKey, value: Int64) -> Int16? {
        return Int16(value)
    }
}

// MARK: UInt转Int16
extension TypeConvertible {
    func toInt16(key: CodingKey, value: UInt) -> Int16 {
        return Int16(value)
    }
    
    func toInt16(key: CodingKey, value: UInt) -> Int16? {
        return Int16(value)
    }
}

// MARK: UInt8转Int16
extension TypeConvertible {
    func toInt16(key: CodingKey, value: UInt8) -> Int16 {
        return Int16(value)
    }
    
    func toInt16(key: CodingKey, value: UInt8) -> Int16? {
        return Int16(value)
    }
}

// MARK: UInt16转Int16
extension TypeConvertible  {
    func toInt16(key: CodingKey, value: UInt16) -> Int16 {
        return Int16(value)
    }
    
    func toInt16(key: CodingKey, value: UInt16) -> Int16? {
        return Int16(value)
    }
}

// MARK: UInt32转Int16
extension TypeConvertible {
    func toInt16(key: CodingKey, value: UInt32) -> Int16 {
        return Int16(value)
    }
    
    func toInt16(key: CodingKey, value: UInt32) -> Int16? {
        return Int16(value)
    }
}

// MARK: UInt64转Int16
extension TypeConvertible {
    func toInt16(key: CodingKey, value: UInt64) -> Int16 {
        return Int16(value)
    }
    
    func toInt16(key: CodingKey, value: UInt64) -> Int16? {
        return Int16(value)
    }
}

// MARK: Float转Int16
extension TypeConvertible {
    func toInt16(key: CodingKey, value: Float) -> Int16 {
        return Int16(value)
    }
    
    func toInt16(key: CodingKey, value: Float) -> Int16? {
        return Int16(value)
    }
}

// MARK: Double转Int16
extension TypeConvertible {
    func toInt16(key: CodingKey, value: Double) -> Int16 {
        return Int16(value)
    }
    
    func toInt16(key: CodingKey, value: Double) -> Int16? {
        return Int16(value)
    }
}

// MARK: String转Int16
extension TypeConvertible {
    func toInt16(key: CodingKey, value: String) -> Int16 {
        switch value.lowercased() {
        case "true", "yes": return 1
        case "false", "no": return 0
        default: return Int16(value) ?? 0
        }
    }
    
    func toInt16(key: CodingKey, value: String) -> Int16? {
        switch value.lowercased() {
        case "true", "yes": return 1
        case "false", "no": return 0
        default: return Int16(value)
        }
    }
}

// MARK: Bool转Int32
extension TypeConvertible {
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
}

// MARK: Int转Int32
extension TypeConvertible {
    func toInt32(key: CodingKey, value: Int) -> Int32 {
        return Int32(value)
    }
    
    func toInt32(key: CodingKey, value: Int) -> Int32? {
        return Int32(value)
    }
}

// MARK: Int8转Int32
extension TypeConvertible {
    func toInt32(key: CodingKey, value: Int8) -> Int32 {
        return Int32(value)
    }
    
    func toInt32(key: CodingKey, value: Int8) -> Int32? {
        return Int32(value)
    }
}

// MARK: Int16转Int32
extension TypeConvertible {
    func toInt32(key: CodingKey, value: Int16) -> Int32 {
        return Int32(value)
    }
    
    func toInt32(key: CodingKey, value: Int16) -> Int32? {
        return Int32(value)
    }
}

// MARK: Int64转Int32
extension TypeConvertible {
    func toInt32(key: CodingKey, value: Int64) -> Int32 {
        return Int32(value)
    }
    
    func toInt32(key: CodingKey, value: Int64) -> Int32? {
        return Int32(value)
    }
}


// MARK: UInt转Int32
extension TypeConvertible {
    func toInt32(key: CodingKey, value: UInt) -> Int32 {
        return Int32(value)
    }
    
    func toInt32(key: CodingKey, value: UInt) -> Int32? {
        return Int32(value)
    }
}

// MARK: UInt8转Int32
extension TypeConvertible {
    func toInt32(key: CodingKey, value: UInt8) -> Int32 {
        return Int32(value)
    }
    
    func toInt32(key: CodingKey, value: UInt8) -> Int32? {
        return Int32(value)
    }
}

// MARK: UInt16转Int32
extension TypeConvertible {
    func toInt32(key: CodingKey, value: UInt16) -> Int32 {
        return Int32(value)
    }
    
    func toInt32(key: CodingKey, value: UInt16) -> Int32? {
        return Int32(value)
    }
}

// MARK: UInt32转Int32
extension TypeConvertible {
    func toInt32(key: CodingKey, value: UInt32) -> Int32 {
        return Int32(value)
    }
    
    func toInt32(key: CodingKey, value: UInt32) -> Int32? {
        return Int32(value)
    }
}

// MARK: UInt64转Int32
extension TypeConvertible {
    func toInt32(key: CodingKey, value: UInt64) -> Int32 {
        return Int32(value)
    }
    
    func toInt32(key: CodingKey, value: UInt64) -> Int32? {
        return Int32(value)
    }
}

// MARK: Float转Int32
extension TypeConvertible {
    func toInt32(key: CodingKey, value: Float) -> Int32 {
        return Int32(value)
    }
    
    func toInt32(key: CodingKey, value: Float) -> Int32? {
        return Int32(value)
    }
}

// MARK: Double转Int32
extension TypeConvertible {
    func toInt32(key: CodingKey, value: Double) -> Int32 {
        return Int32(value)
    }
    
    func toInt32(key: CodingKey, value: Double) -> Int32? {
        return Int32(value)
    }
}

// MARK: String转Int32
extension TypeConvertible {
    func toInt32(key: CodingKey, value: String) -> Int32 {
        switch value.lowercased() {
        case "true", "yes": return 1
        case "false", "no": return 0
        default: return Int32(value) ?? 0
        }
    }
    
    func toInt32(key: CodingKey, value: String) -> Int32? {
        switch value.lowercased() {
        case "true", "yes": return 1
        case "false", "no": return 0
        default: return Int32(value)
        }
    }
}

// MARK: Bool转Int64
extension TypeConvertible {
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
}

// MARK: Int转Int64
extension TypeConvertible {
    func toInt64(key: CodingKey, value: Int) -> Int64 {
        return Int64(value)
    }
    
    func toInt64(key: CodingKey, value: Int) -> Int64? {
        return Int64(value)
    }
}

// MARK: Int8转Int64
extension TypeConvertible {
    func toInt64(key: CodingKey, value: Int8) -> Int64 {
        return Int64(value)
    }

    func toInt64(key: CodingKey, value: Int8) -> Int64? {
        return Int64(value)
    }
}

// MARK: Int16转Int64
extension TypeConvertible {
    func toInt64(key: CodingKey, value: Int16) -> Int64 {
        return Int64(value)
    }
    
    func toInt64(key: CodingKey, value: Int16) -> Int64? {
        return Int64(value)
    }
}

// MARK: Int32转Int64
extension TypeConvertible {
    func toInt64(key: CodingKey, value: Int32) -> Int64 {
        return Int64(value)
    }
    
    func toInt64(key: CodingKey, value: Int32) -> Int64? {
        return Int64(value)
    }
}

// MARK: UInt转Int64
extension TypeConvertible {
    func toInt64(key: CodingKey, value: UInt) -> Int64 {
        return Int64(value)
    }
    
    func toInt64(key: CodingKey, value: UInt) -> Int64? {
        return Int64(value)
    }
}

// MARK: UInt8转Int64
extension TypeConvertible {
    func toInt64(key: CodingKey, value: UInt8) -> Int64 {
        return Int64(value)
    }
    
    func toInt64(key: CodingKey, value: UInt8) -> Int64? {
        return Int64(value)
    }
}

// MARK: UInt16转Int64
extension TypeConvertible {
    func toInt64(key: CodingKey, value: UInt16) -> Int64 {
        return Int64(value)
    }
    
    func toInt64(key: CodingKey, value: UInt16) -> Int64? {
        return Int64(value)
    }
}

// MARK: UInt32转Int64
extension TypeConvertible {
    func toInt64(key: CodingKey, value: UInt32) -> Int64 {
        return Int64(value)
    }
    
    func toInt64(key: CodingKey, value: UInt32) -> Int64? {
        return Int64(value)
    }
}

// MARK: UInt64转Int64
extension TypeConvertible {
    func toInt64(key: CodingKey, value: UInt64) -> Int64 {
        return Int64(value)
    }
    
    func toInt64(key: CodingKey, value: UInt64) -> Int64? {
        return Int64(value)
    }
}

// MARK: Float转Int64
extension TypeConvertible {
    func toInt64(key: CodingKey, value: Float) -> Int64 {
        return Int64(value)
    }
    
    func toInt64(key: CodingKey, value: Float) -> Int64? {
        return Int64(value)
    }
}

// MARK: Double转Int64
extension TypeConvertible {
    func toInt64(key: CodingKey, value: Double) -> Int64 {
        return Int64(value)
    }
    
    func toInt64(key: CodingKey, value: Double) -> Int64? {
        return Int64(value)
    }
}

// MARK: String转Int64
extension TypeConvertible {
    func toInt64(key: CodingKey, value: String) -> Int64 {
        switch value.lowercased() {
        case "true", "yes": return 1
        case "false", "no": return 0
        default: return Int64(value) ?? 0
        }
    }
    
    func toInt64(key: CodingKey, value: String) -> Int64? {
        switch value.lowercased() {
        case "true", "yes": return 1
        case "false", "no": return 0
        default: return Int64(value)
        }
    }
}

// MARK: Bool转UInt
extension TypeConvertible {
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
}

// MARK: Int转UInt
extension TypeConvertible {
    func toUInt(key: CodingKey, value: Int) throws -> UInt {
        if value < 0 { throw DecodingError.typeMismatch(UInt.self, DecodingError.Context.init(codingPath: [key], debugDescription: "UInt不能容纳负数")) }
        return UInt(value)
    }
    
    func toUInt(key: CodingKey, value: Int) throws -> UInt? {
        if value < 0 { throw DecodingError.typeMismatch(UInt.self, DecodingError.Context.init(codingPath: [key], debugDescription: "UInt不能容纳负数")) }
        return UInt(value)
    }
}

// MARK: Int8转UInt
extension TypeConvertible {
    func toUInt(key: CodingKey, value: Int8) throws -> UInt {
        if value < 0 { throw DecodingError.typeMismatch(Int8.self, DecodingError.Context.init(codingPath: [key], debugDescription: "UInt不能容纳负数")) }
        return UInt(value)
    }
    
    func toUInt(key: CodingKey, value: Int8) throws -> UInt? {
        if value < 0 { throw DecodingError.typeMismatch(Int8.self, DecodingError.Context.init(codingPath: [key], debugDescription: "UInt不能容纳负数")) }
        return UInt(value)
    }
}

// MARK: Int16转UInt
extension TypeConvertible {
    func toUInt(key: CodingKey, value: Int16) throws -> UInt {
        if value < 0 { throw DecodingError.typeMismatch(Int8.self, DecodingError.Context.init(codingPath: [key], debugDescription: "UInt不能容纳负数")) }
        return UInt(value)
    }
    
    func toUInt(key: CodingKey, value: Int16) throws -> UInt? {
        if value < 0 { throw DecodingError.typeMismatch(Int8.self, DecodingError.Context.init(codingPath: [key], debugDescription: "UInt不能容纳负数")) }
        return UInt(value)
    }
}

// MARK: Int32转UInt
extension TypeConvertible {
    func toUInt(key: CodingKey, value: Int32) throws -> UInt {
        if value < 0 { throw DecodingError.typeMismatch(Int8.self, DecodingError.Context.init(codingPath: [key], debugDescription: "UInt不能容纳负数")) }
        return UInt(value)
    }
    func toUInt(key: CodingKey, value: Int32) throws -> UInt? {
        if value < 0 { throw DecodingError.typeMismatch(Int8.self, DecodingError.Context.init(codingPath: [key], debugDescription: "UInt不能容纳负数")) }
        return UInt(value)
    }
}

// MARK: Int64转UInt
extension TypeConvertible {
    func toUInt(key: CodingKey, value: Int64) throws -> UInt {
        if value < 0 { throw DecodingError.typeMismatch(Int8.self, DecodingError.Context.init(codingPath: [key], debugDescription: "UInt不能容纳负数")) }
        return UInt(value)
    }
    
    func toUInt(key: CodingKey, value: Int64) throws -> UInt? {
        if value < 0 { throw DecodingError.typeMismatch(Int8.self, DecodingError.Context.init(codingPath: [key], debugDescription: "UInt不能容纳负数")) }
        return UInt(value)
    }
}

// MARK: UInt8转UInt
extension TypeConvertible {
    func toUInt(key: CodingKey, value: UInt8) -> UInt {
        return UInt(value)
    }
    
    func toUInt(key: CodingKey, value: UInt8) -> UInt? {
        return UInt(value)
    }
}

// MARK: UInt16转UInt
extension TypeConvertible {
    func toUInt(key: CodingKey, value: UInt16) -> UInt {
        return UInt(value)
    }
    
    func toUInt(key: CodingKey, value: UInt16) -> UInt? {
        return UInt(value)
    }
}

// MARK: UInt32转UInt
extension TypeConvertible {
    func toUInt(key: CodingKey, value: UInt32) -> UInt {
        return UInt(value)
    }
    
    func toUInt(key: CodingKey, value: UInt32) -> UInt? {
        return UInt(value)
    }
}

// MARK: UInt64转UInt
extension TypeConvertible {
    func toUInt(key: CodingKey, value: UInt64) -> UInt {
        return UInt(value)
    }
    
    func toUInt(key: CodingKey, value: UInt64) -> UInt? {
        return UInt(value)
    }
}

// MARK: Float转UInt
extension TypeConvertible {
    func toUInt(key: CodingKey, value: Float) throws -> UInt {
        if value < 0 { throw DecodingError.typeMismatch(Int8.self, DecodingError.Context.init(codingPath: [key], debugDescription: "UInt不能容纳负数")) }
        return UInt(value)
    }
    
    func toUInt(key: CodingKey, value: Float) throws -> UInt? {
        if value < 0 { throw DecodingError.typeMismatch(Int8.self, DecodingError.Context.init(codingPath: [key], debugDescription: "UInt不能容纳负数")) }
        return UInt(value)
    }
}

// MARK: Double转UInt
extension TypeConvertible {
    func toUInt(key: CodingKey, value: Double) throws -> UInt {
        if value < 0 { throw DecodingError.typeMismatch(Int8.self, DecodingError.Context.init(codingPath: [key], debugDescription: "UInt不能容纳负数")) }
        return UInt(value)
    }
    
    func toUInt(key: CodingKey, value: Double) throws -> UInt? {
        if value < 0 { throw DecodingError.typeMismatch(Int8.self, DecodingError.Context.init(codingPath: [key], debugDescription: "UInt不能容纳负数")) }
        return UInt(value)
    }
}

// MARK: String转UInt
extension TypeConvertible {
    func toUInt(key: CodingKey, value: String) -> UInt {
        switch value.lowercased() {
        case "true", "yes": return 1
        case "false", "no": return 0
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
}

// MARK: Bool转UInt8
extension TypeConvertible {
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
}

// MARK: Int转UInt8
extension TypeConvertible {
    func toUInt8(key: CodingKey, value: Int) throws -> UInt8 {
        if value < 0 { throw DecodingError.typeMismatch(UInt8.self, DecodingError.Context.init(codingPath: [key], debugDescription: "UInt8不能容纳负数")) }
        return UInt8(value)
    }

    func toUInt8(key: CodingKey, value: Int) throws -> UInt8? {
        if value < 0 { throw DecodingError.typeMismatch(UInt8.self, DecodingError.Context.init(codingPath: [key], debugDescription: "UInt8不能容纳负数")) }
        return UInt8(value)
    }
}

// MARK: Int8转UInt8
extension TypeConvertible {
    func toUInt8(key: CodingKey, value: Int8) throws -> UInt8 {
        if value < 0 { throw DecodingError.typeMismatch(UInt8.self, DecodingError.Context.init(codingPath: [key], debugDescription: "UInt8不能容纳负数")) }
        return UInt8(value)
    }

    func toUInt8(key: CodingKey, value: Int8) throws -> UInt8? {
        if value < 0 { throw DecodingError.typeMismatch(UInt8.self, DecodingError.Context.init(codingPath: [key], debugDescription: "UInt8不能容纳负数")) }
        return UInt8(value)
    }
}

// MARK: Int16转UInt8
extension TypeConvertible {
    func toUInt8(key: CodingKey, value: Int16) throws -> UInt8 {
        if value < 0 { throw DecodingError.typeMismatch(UInt8.self, DecodingError.Context.init(codingPath: [key], debugDescription: "UInt8不能容纳负数")) }
        return UInt8(value)
    }

    func toUInt8(key: CodingKey, value: Int16) throws -> UInt8? {
        if value < 0 { throw DecodingError.typeMismatch(UInt8.self, DecodingError.Context.init(codingPath: [key], debugDescription: "UInt8不能容纳负数")) }
        return UInt8(value)
    }
}

// MARK: Int32转UInt8
extension TypeConvertible {
    func toUInt8(key: CodingKey, value: Int32) throws -> UInt8 {
        if value < 0 { throw DecodingError.typeMismatch(UInt8.self, DecodingError.Context.init(codingPath: [key], debugDescription: "UInt8不能容纳负数")) }
        return UInt8(value)
    }

    func toUInt8(key: CodingKey, value: Int32) throws -> UInt8? {
        if value < 0 { throw DecodingError.typeMismatch(UInt8.self, DecodingError.Context.init(codingPath: [key], debugDescription: "UInt8不能容纳负数")) }
        return UInt8(value)
    }
}

// MARK: Int64转UInt8
extension TypeConvertible {
    func toUInt8(key: CodingKey, value: Int64) throws -> UInt8 {
        if value < 0 { throw DecodingError.typeMismatch(UInt8.self, DecodingError.Context.init(codingPath: [key], debugDescription: "UInt8不能容纳负数")) }
        return UInt8(value)
    }

    func toUInt8(key: CodingKey, value: Int64) throws -> UInt8? {
        if value < 0 { throw DecodingError.typeMismatch(UInt8.self, DecodingError.Context.init(codingPath: [key], debugDescription: "UInt8不能容纳负数")) }
        return UInt8(value)
    }
}

// MARK: UInt转UInt8
extension TypeConvertible {
    func toUInt8(key: CodingKey, value: UInt) -> UInt8 {
        return UInt8(value)
    }

    func toUInt8(key: CodingKey, value: UInt) -> UInt8? {
        return UInt8(value)
    }
}

// MARK: UInt16转UInt8
extension TypeConvertible {
    func toUInt8(key: CodingKey, value: UInt16) -> UInt8 {
        return UInt8(value)
    }

    func toUInt8(key: CodingKey, value: UInt16) -> UInt8? {
        return UInt8(value)
    }
}

// MARK: UInt32转UInt8
extension TypeConvertible {
    func toUInt8(key: CodingKey, value: UInt32) -> UInt8 {
        return UInt8(value)
    }

    func toUInt8(key: CodingKey, value: UInt32) -> UInt8? {
        return UInt8(value)
    }
}

// MARK: UInt64转UInt8
extension TypeConvertible {
    func toUInt8(key: CodingKey, value: UInt64) -> UInt8 {
        return UInt8(value)
    }

    func toUInt8(key: CodingKey, value: UInt64) -> UInt8? {
        return UInt8(value)
    }
}

// MARK: Float转UInt8
extension TypeConvertible {
    func toUInt8(key: CodingKey, value: Float) throws -> UInt8 {
        if value < 0 { throw DecodingError.typeMismatch(UInt8.self, DecodingError.Context.init(codingPath: [key], debugDescription: "UInt8不能容纳负数")) }
        return UInt8(value)
    }

    func toUInt8(key: CodingKey, value: Float) throws -> UInt8? {
        if value < 0 { throw DecodingError.typeMismatch(UInt8.self, DecodingError.Context.init(codingPath: [key], debugDescription: "UInt8不能容纳负数")) }
        return UInt8(value)
    }
}

// MARK: Double转UInt8
extension TypeConvertible {
    func toUInt8(key: CodingKey, value: Double) throws -> UInt8 {
        if value < 0 { throw DecodingError.typeMismatch(UInt8.self, DecodingError.Context.init(codingPath: [key], debugDescription: "UInt8不能容纳负数")) }
        return UInt8(value)
    }

    func toUInt8(key: CodingKey, value: Double) throws -> UInt8? {
        if value < 0 { throw DecodingError.typeMismatch(UInt8.self, DecodingError.Context.init(codingPath: [key], debugDescription: "UInt8不能容纳负数")) }
        return UInt8(value)
    }
}

// MARK: String转UInt8
extension TypeConvertible {
    func toUInt8(key: CodingKey, value: String) -> UInt8 {
        switch value.lowercased() {
        case "true", "yes": return 1
        case "false", "no": return 0
        default: return UInt8(value.lowercased()) ?? 0
        }
    }

    func toUInt8(key: CodingKey, value: String) -> UInt8? {
        switch value.lowercased() {
        case "true", "yes": return 1
        case "false", "no": return 0
        default: return UInt8(value.lowercased())
        }
    }
}

// MARK: Bool转UInt16
extension TypeConvertible {
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
}

// MARK: Int转UInt16
extension TypeConvertible {
    func toUInt16(key: CodingKey, value: Int) throws -> UInt16 {
        if value < 0 { throw DecodingError.typeMismatch(UInt16.self, DecodingError.Context.init(codingPath: [key], debugDescription: "UInt16不能容纳负数")) }
        return UInt16(value)
    }

    func toUInt16(key: CodingKey, value: Int) throws -> UInt16? {
        if value < 0 { throw DecodingError.typeMismatch(UInt16.self, DecodingError.Context.init(codingPath: [key], debugDescription: "UInt16不能容纳负数")) }
        return UInt16(value)
    }
}

// MARK: Int8转UInt16
extension TypeConvertible {
    func toUInt16(key: CodingKey, value: Int8) throws -> UInt16 {
        if value < 0 { throw DecodingError.typeMismatch(UInt16.self, DecodingError.Context.init(codingPath: [key], debugDescription: "UInt16不能容纳负数")) }
        return UInt16(value)
    }

    func toUInt16(key: CodingKey, value: Int8) throws -> UInt16? {
        if value < 0 { throw DecodingError.typeMismatch(UInt16.self, DecodingError.Context.init(codingPath: [key], debugDescription: "UInt16不能容纳负数")) }
        return UInt16(value)
    }
}

// MARK: Int16转UInt16
extension TypeConvertible {
    func toUInt16(key: CodingKey, value: Int16) throws -> UInt16 {
        if value < 0 { throw DecodingError.typeMismatch(UInt16.self, DecodingError.Context.init(codingPath: [key], debugDescription: "UInt16不能容纳负数")) }
        return UInt16(value)
    }

    func toUInt16(key: CodingKey, value: Int16) throws -> UInt16? {
        if value < 0 { throw DecodingError.typeMismatch(UInt16.self, DecodingError.Context.init(codingPath: [key], debugDescription: "UInt16不能容纳负数")) }
        return UInt16(value)
    }
}

// MARK: Int32转UInt16
extension TypeConvertible {
    func toUInt16(key: CodingKey, value: Int32) throws -> UInt16 {
        if value < 0 { throw DecodingError.typeMismatch(UInt16.self, DecodingError.Context.init(codingPath: [key], debugDescription: "UInt16不能容纳负数")) }
        return UInt16(value)
    }

    func toUInt16(key: CodingKey, value: Int32) throws -> UInt16? {
        if value < 0 { throw DecodingError.typeMismatch(UInt16.self, DecodingError.Context.init(codingPath: [key], debugDescription: "UInt16不能容纳负数")) }
        return UInt16(value)
    }
}

// MARK: Int64转UInt16
extension TypeConvertible {
    func toUInt16(key: CodingKey, value: Int64) throws -> UInt16 {
        if value < 0 { throw DecodingError.typeMismatch(UInt16.self, DecodingError.Context.init(codingPath: [key], debugDescription: "UInt16不能容纳负数")) }
        return UInt16(value)
    }

    func toUInt16(key: CodingKey, value: Int64) throws -> UInt16? {
        if value < 0 { throw DecodingError.typeMismatch(UInt16.self, DecodingError.Context.init(codingPath: [key], debugDescription: "UInt16不能容纳负数")) }
        return UInt16(value)
    }
}

// MARK: UInt转UInt16
extension TypeConvertible {
    func toUInt16(key: CodingKey, value: UInt) -> UInt16 {
        return UInt16(value)
    }

    func toUInt16(key: CodingKey, value: UInt) -> UInt16? {
        return UInt16(value)
    }
}

// MARK: UInt8转UInt16
extension TypeConvertible {
    func toUInt16(key: CodingKey, value: UInt8) -> UInt16 {
        return UInt16(value)
    }

    func toUInt16(key: CodingKey, value: UInt8) -> UInt16? {
        return UInt16(value)
    }
}

// MARK: UInt32转UInt16
extension TypeConvertible {
    func toUInt16(key: CodingKey, value: UInt32) -> UInt16 {
        return UInt16(value)
    }

    func toUInt16(key: CodingKey, value: UInt32) -> UInt16? {
        return UInt16(value)
    }
}

// MARK: UInt64转UInt16
extension TypeConvertible {
    func toUInt16(key: CodingKey, value: UInt64) -> UInt16 {
        return UInt16(value)
    }

    func toUInt16(key: CodingKey, value: UInt64) -> UInt16? {
        return UInt16(value)
    }
}

// MARK: Float转UInt16
extension TypeConvertible {
    func toUInt16(key: CodingKey, value: Float) throws -> UInt16 {
        if value < 0 { throw DecodingError.typeMismatch(UInt16.self, DecodingError.Context.init(codingPath: [key], debugDescription: "UInt16不能容纳负数")) }
        return UInt16(value)
    }

    func toUInt16(key: CodingKey, value: Float) throws -> UInt16? {
        if value < 0 { throw DecodingError.typeMismatch(UInt16.self, DecodingError.Context.init(codingPath: [key], debugDescription: "UInt16不能容纳负数")) }
        return UInt16(value)
    }
}

// MARK: Double转UInt16
extension TypeConvertible {
    func toUInt16(key: CodingKey, value: Double) throws -> UInt16 {
        if value < 0 { throw DecodingError.typeMismatch(UInt16.self, DecodingError.Context.init(codingPath: [key], debugDescription: "UInt16不能容纳负数")) }
        return UInt16(value)
    }

    func toUInt16(key: CodingKey, value: Double) throws -> UInt16? {
        if value < 0 { throw DecodingError.typeMismatch(UInt16.self, DecodingError.Context.init(codingPath: [key], debugDescription: "UInt16不能容纳负数")) }
        return UInt16(value)
    }
}

// MARK: String转UInt16
extension TypeConvertible {
    func toUInt16(key: CodingKey, value: String) -> UInt16 {
        switch value.lowercased() {
        case "true", "yes": return 1
        case "false", "no": return 0
        default: return UInt16(value.lowercased()) ?? 0
        }
    }

    func toUInt16(key: CodingKey, value: String) -> UInt16? {
        switch value.lowercased() {
        case "true", "yes": return 1
        case "false", "no": return 0
        default: return UInt16(value.lowercased())
        }
    }
}

// MARK: String转UInt32
extension TypeConvertible {
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
}

// MARK: Int转UInt32
extension TypeConvertible {
    func toUInt32(key: CodingKey, value: Int) throws -> UInt32 {
        if value < 0 { throw DecodingError.typeMismatch(UInt32.self, DecodingError.Context.init(codingPath: [key], debugDescription: "UInt32不能容纳负数")) }
        return UInt32(value)
    }

    func toUInt32(key: CodingKey, value: Int) throws -> UInt32? {
        if value < 0 { throw DecodingError.typeMismatch(UInt32.self, DecodingError.Context.init(codingPath: [key], debugDescription: "UInt32不能容纳负数")) }
        return UInt32(value)
    }
}

// MARK: Int8转UInt32
extension TypeConvertible {
    func toUInt32(key: CodingKey, value: Int8) throws -> UInt32 {
        if value < 0 { throw DecodingError.typeMismatch(UInt32.self, DecodingError.Context.init(codingPath: [key], debugDescription: "UInt32不能容纳负数")) }
        return UInt32(value)
    }

    func toUInt32(key: CodingKey, value: Int8) throws -> UInt32? {
        if value < 0 { throw DecodingError.typeMismatch(UInt32.self, DecodingError.Context.init(codingPath: [key], debugDescription: "UInt32不能容纳负数")) }
        return UInt32(value)
    }
}

// MARK: Int16转UInt32
extension TypeConvertible {
    func toUInt32(key: CodingKey, value: Int16) throws -> UInt32 {
        if value < 0 { throw DecodingError.typeMismatch(UInt32.self, DecodingError.Context.init(codingPath: [key], debugDescription: "UInt32不能容纳负数")) }
        return UInt32(value)
    }

    func toUInt32(key: CodingKey, value: Int16) throws -> UInt32? {
        if value < 0 { throw DecodingError.typeMismatch(UInt32.self, DecodingError.Context.init(codingPath: [key], debugDescription: "UInt32不能容纳负数")) }
        return UInt32(value)
    }
}

// MARK: Int32转UInt32
extension TypeConvertible {
    func toUInt32(key: CodingKey, value: Int32) throws -> UInt32 {
        if value < 0 { throw DecodingError.typeMismatch(UInt32.self, DecodingError.Context.init(codingPath: [key], debugDescription: "UInt32不能容纳负数")) }
        return UInt32(value)
    }

    func toUInt32(key: CodingKey, value: Int32) throws -> UInt32? {
        if value < 0 { throw DecodingError.typeMismatch(UInt32.self, DecodingError.Context.init(codingPath: [key], debugDescription: "UInt32不能容纳负数")) }
        return UInt32(value)
    }
}

// MARK: Int64转UInt32
extension TypeConvertible {
    func toUInt32(key: CodingKey, value: Int64) throws -> UInt32 {
        if value < 0 { throw DecodingError.typeMismatch(UInt32.self, DecodingError.Context.init(codingPath: [key], debugDescription: "UInt32不能容纳负数")) }
        return UInt32(value)
    }

    func toUInt32(key: CodingKey, value: Int64) throws -> UInt32? {
        if value < 0 { throw DecodingError.typeMismatch(UInt32.self, DecodingError.Context.init(codingPath: [key], debugDescription: "UInt32不能容纳负数")) }
        return UInt32(value)
    }
}

// MARK: UInt转UInt32
extension TypeConvertible {
    func toUInt32(key: CodingKey, value: UInt) -> UInt32 {
        return UInt32(value)
    }

    func toUInt32(key: CodingKey, value: UInt) -> UInt32? {
        return UInt32(value)
    }
}

// MARK: UInt8转UInt32
extension TypeConvertible {
    func toUInt32(key: CodingKey, value: UInt8) -> UInt32 {
        return UInt32(value)
    }

    func toUInt32(key: CodingKey, value: UInt8) -> UInt32? {
        return UInt32(value)
    }
}

// MARK: UInt16转UInt32
extension TypeConvertible {
    func toUInt32(key: CodingKey, value: UInt16) -> UInt32 {
        return UInt32(value)
    }

    func toUInt32(key: CodingKey, value: UInt16) -> UInt32? {
        return UInt32(value)
    }
}

// MARK: UInt64转UInt32
extension TypeConvertible {
    func toUInt32(key: CodingKey, value: UInt64) -> UInt32 {
        return UInt32(value)
    }

    func toUInt32(key: CodingKey, value: UInt64) -> UInt32? {
        return UInt32(value)
    }
}

// MARK: Float转UInt32
extension TypeConvertible {
    func toUInt32(key: CodingKey, value: Float) throws -> UInt32 {
        if value < 0 { throw DecodingError.typeMismatch(UInt32.self, DecodingError.Context.init(codingPath: [key], debugDescription: "UInt32不能容纳负数")) }
        return UInt32(value)
    }

    func toUInt32(key: CodingKey, value: Float) throws -> UInt32? {
        if value < 0 { throw DecodingError.typeMismatch(UInt32.self, DecodingError.Context.init(codingPath: [key], debugDescription: "UInt32不能容纳负数")) }
        return UInt32(value)
    }
}

// MARK: Double转UInt32
extension TypeConvertible {
    func toUInt32(key: CodingKey, value: Double) throws -> UInt32 {
        if value < 0 { throw DecodingError.typeMismatch(UInt32.self, DecodingError.Context.init(codingPath: [key], debugDescription: "UInt32不能容纳负数")) }
        return UInt32(value)
    }

    func toUInt32(key: CodingKey, value: Double) throws -> UInt32? {
        if value < 0 { throw DecodingError.typeMismatch(UInt32.self, DecodingError.Context.init(codingPath: [key], debugDescription: "UInt32不能容纳负数")) }
        return UInt32(value)
    }
}

// MARK: String转UInt32
extension TypeConvertible {
    func toUInt32(key: CodingKey, value: String) -> UInt32 {
        switch value.lowercased() {
        case "true", "yes": return 1
        case "false", "no": return 0
        default: return UInt32(value.lowercased()) ?? 0
        }
    }

    func toUInt32(key: CodingKey, value: String) -> UInt32? {
        switch value.lowercased() {
        case "true", "yes": return 1
        case "false", "no": return 0
        default: return UInt32(value.lowercased())
        }
    }
}

// MARK: Bool转UInt64
extension TypeConvertible {
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
}

// MARK: Int转UInt64
extension TypeConvertible {
    func toUInt64(key: CodingKey, value: Int) throws -> UInt64 {
        if value < 0 { throw DecodingError.typeMismatch(UInt64.self, DecodingError.Context.init(codingPath: [key], debugDescription: "UInt64不能容纳负数")) }
        return UInt64(value)
    }

    func toUInt64(key: CodingKey, value: Int) throws -> UInt64? {
        if value < 0 { throw DecodingError.typeMismatch(UInt64.self, DecodingError.Context.init(codingPath: [key], debugDescription: "UInt64不能容纳负数")) }
        return UInt64(value)
    }
}

// MARK: Int8转UInt64
extension TypeConvertible {
    func toUInt64(key: CodingKey, value: Int8) throws -> UInt64 {
        if value < 0 { throw DecodingError.typeMismatch(UInt64.self, DecodingError.Context.init(codingPath: [key], debugDescription: "UInt64不能容纳负数")) }
        return UInt64(value)
    }

    func toUInt64(key: CodingKey, value: Int8) throws -> UInt64? {
        if value < 0 { throw DecodingError.typeMismatch(UInt64.self, DecodingError.Context.init(codingPath: [key], debugDescription: "UInt64不能容纳负数")) }
        return UInt64(value)
    }
}

// MARK: Int16转UInt64
extension TypeConvertible {
    func toUInt64(key: CodingKey, value: Int16) throws -> UInt64 {
        if value < 0 { throw DecodingError.typeMismatch(UInt64.self, DecodingError.Context.init(codingPath: [key], debugDescription: "UInt64不能容纳负数")) }
        return UInt64(value)
    }

    func toUInt64(key: CodingKey, value: Int16) throws -> UInt64? {
        if value < 0 { throw DecodingError.typeMismatch(UInt64.self, DecodingError.Context.init(codingPath: [key], debugDescription: "UInt64不能容纳负数")) }
        return UInt64(value)
    }
}

// MARK: Int32转UInt64
extension TypeConvertible {
    func toUInt64(key: CodingKey, value: Int32) throws -> UInt64 {
        if value < 0 { throw DecodingError.typeMismatch(UInt64.self, DecodingError.Context.init(codingPath: [key], debugDescription: "UInt64不能容纳负数")) }
        return UInt64(value)
    }

    func toUInt64(key: CodingKey, value: Int32) throws -> UInt64? {
        if value < 0 { throw DecodingError.typeMismatch(UInt64.self, DecodingError.Context.init(codingPath: [key], debugDescription: "UInt64不能容纳负数")) }
        return UInt64(value)
    }
}

// MARK: Int64转UInt64
extension TypeConvertible {
    func toUInt64(key: CodingKey, value: Int64) throws -> UInt64 {
        if value < 0 { throw DecodingError.typeMismatch(UInt64.self, DecodingError.Context.init(codingPath: [key], debugDescription: "UInt64不能容纳负数")) }
        return UInt64(value)
    }

    func toUInt64(key: CodingKey, value: Int64) throws -> UInt64? {
        if value < 0 { throw DecodingError.typeMismatch(UInt64.self, DecodingError.Context.init(codingPath: [key], debugDescription: "UInt64不能容纳负数")) }
        return UInt64(value)
    }
}

// MARK: UInt转UInt64
extension TypeConvertible {
    func toUInt64(key: CodingKey, value: UInt) -> UInt64 {
        return UInt64(value)
    }

    func toUInt64(key: CodingKey, value: UInt) -> UInt64? {
        return UInt64(value)
    }
}

// MARK: UInt8转UInt64
extension TypeConvertible {
    func toUInt64(key: CodingKey, value: UInt8) -> UInt64 {
        return UInt64(value)
    }

    func toUInt64(key: CodingKey, value: UInt8) -> UInt64? {
        return UInt64(value)
    }
}

// MARK: UInt16转UInt64
extension TypeConvertible {
    func toUInt64(key: CodingKey, value: UInt16) -> UInt64 {
        return UInt64(value)
    }

    func toUInt64(key: CodingKey, value: UInt16) -> UInt64? {
        return UInt64(value)
    }
}

// MARK: UInt32转UInt64
extension TypeConvertible {
    func toUInt64(key: CodingKey, value: UInt32) -> UInt64 {
        return UInt64(value)
    }

    func toUInt64(key: CodingKey, value: UInt32) -> UInt64? {
        return UInt64(value)
    }
}

// MARK: Float转UInt64
extension TypeConvertible {
    func toUInt64(key: CodingKey, value: Float) throws -> UInt64 {
        if value < 0 { throw DecodingError.typeMismatch(UInt64.self, DecodingError.Context.init(codingPath: [key], debugDescription: "UInt64不能容纳负数")) }
        return UInt64(value)
    }

    func toUInt64(key: CodingKey, value: Float) throws -> UInt64? {
        if value < 0 { throw DecodingError.typeMismatch(UInt64.self, DecodingError.Context.init(codingPath: [key], debugDescription: "UInt64不能容纳负数")) }
        return UInt64(value)
    }
}

// MARK: Double转UInt64
extension TypeConvertible {
    func toUInt64(key: CodingKey, value: Double) throws -> UInt64 {
        if value < 0 { throw DecodingError.typeMismatch(UInt64.self, DecodingError.Context.init(codingPath: [key], debugDescription: "UInt64不能容纳负数")) }
        return UInt64(value)
    }

    func toUInt64(key: CodingKey, value: Double) throws -> UInt64? {
        if value < 0 { throw DecodingError.typeMismatch(UInt64.self, DecodingError.Context.init(codingPath: [key], debugDescription: "UInt64不能容纳负数")) }
        return UInt64(value)
    }
}

// MARK: String转UInt64
extension TypeConvertible {
    func toUInt64(key: CodingKey, value: String) -> UInt64 {
        switch value.lowercased() {
        case "true", "yes": return 1
        case "false", "no": return 0
        default: return UInt64(value.lowercased()) ?? 0
        }
    }

    func toUInt64(key: CodingKey, value: String) -> UInt64? {
        switch value.lowercased() {
        case "true", "yes": return 1
        case "false", "no": return 0
        default: return UInt64(value.lowercased())
        }
    }
}

// MARK: Bool转Float
extension TypeConvertible {
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
}

// MARK: Int转Float
extension TypeConvertible {
    func toFloat(key: CodingKey, value: Int) -> Float {
        return Float(value)
    }

    func toFloat(key: CodingKey, value: Int) -> Float? {
        return Float(value)
    }
}

// MARK: Int8转Float
extension TypeConvertible {
    func toFloat(key: CodingKey, value: Int8) -> Float {
        return Float(value)
    }

    func toFloat(key: CodingKey, value: Int8) -> Float? {
        return Float(value)
    }
}

// MARK: Int16转Float
extension TypeConvertible {
    func toFloat(key: CodingKey, value: Int16) -> Float {
        return Float(value)
    }

    func toFloat(key: CodingKey, value: Int16) -> Float? {
        return Float(value)
    }
}

// MARK: Int32转Float
extension TypeConvertible {
    func toFloat(key: CodingKey, value: Int32) -> Float {
        return Float(value)
    }

    func toFloat(key: CodingKey, value: Int32) -> Float? {
        return Float(value)
    }
}

// MARK: Int64转Float
extension TypeConvertible {
    func toFloat(key: CodingKey, value: Int64) -> Float {
        return Float(value)
    }

    func toFloat(key: CodingKey, value: Int64) -> Float? {
        return Float(value)
    }
}

// MARK: UInt转Float
extension TypeConvertible {
    func toFloat(key: CodingKey, value: UInt) -> Float {
        return Float(value)
    }

    func toFloat(key: CodingKey, value: UInt) -> Float? {
        return Float(value)
    }
}

// MARK: UInt8转Float
extension TypeConvertible {
    func toFloat(key: CodingKey, value: UInt8) -> Float {
        return Float(value)
    }

    func toFloat(key: CodingKey, value: UInt8) -> Float? {
        return Float(value)
    }
}

// MARK: UInt16转Float
extension TypeConvertible {
    func toFloat(key: CodingKey, value: UInt16) -> Float {
        return Float(value)
    }

    func toFloat(key: CodingKey, value: UInt16) -> Float? {
        return Float(value)
    }
}

// MARK: UInt32转Float
extension TypeConvertible {
    func toFloat(key: CodingKey, value: UInt32) -> Float {
        return Float(value)
    }

    func toFloat(key: CodingKey, value: UInt32) -> Float? {
        return Float(value)
    }
}

// MARK: UInt64转Float
extension TypeConvertible {
    func toFloat(key: CodingKey, value: UInt64) -> Float {
        return Float(value)
    }

    func toFloat(key: CodingKey, value: UInt64) -> Float? {
        return Float(value)
    }
}

// MARK: Double转Float
extension TypeConvertible {
    func toFloat(key: CodingKey, value: Double) -> Float {
        return Float(value)
    }

    func toFloat(key: CodingKey, value: Double) -> Float? {
        return Float(value)
    }
}

// MARK: String转Float
extension TypeConvertible {
    func toFloat(key: CodingKey, value: String) -> Float {
        switch value.lowercased() {
        case "true", "yes": return 1
        case "false", "no": return 0
        default: return Float(value.lowercased()) ?? 0
        }
    }

    func toFloat(key: CodingKey, value: String) -> Float? {
        switch value.lowercased() {
        case "true", "yes": return 1
        case "false", "no": return 0
        default: return Float(value.lowercased())
        }
    }
}

// MARK: Bool转Double
extension TypeConvertible {
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
}

// MARK: Int转Double
extension TypeConvertible {
    func toDouble(key: CodingKey, value: Int) -> Double {
        return Double(value)
    }

    func toDouble(key: CodingKey, value: Int) -> Double? {
        return Double(value)
    }
}

// MARK: Int8转Double
extension TypeConvertible {
    func toDouble(key: CodingKey, value: Int8) -> Double {
        return Double(value)
    }

    func toDouble(key: CodingKey, value: Int8) -> Double? {
        return Double(value)
    }
}

// MARK: Int16转Double
extension TypeConvertible {
    func toDouble(key: CodingKey, value: Int16) -> Double {
        return Double(value)
    }

    func toDouble(key: CodingKey, value: Int16) -> Double? {
        return Double(value)
    }
}

// MARK: Int32转Double
extension TypeConvertible {
    func toDouble(key: CodingKey, value: Int32) -> Double {
        return Double(value)
    }

    func toDouble(key: CodingKey, value: Int32) -> Double? {
        return Double(value)
    }
}

// MARK: Int64转Double
extension TypeConvertible {
    func toDouble(key: CodingKey, value: Int64) -> Double {
        return Double(value)
    }

    func toDouble(key: CodingKey, value: Int64) -> Double? {
        return Double(value)
    }
}

// MARK: UInt转Double
extension TypeConvertible {
    func toDouble(key: CodingKey, value: UInt) -> Double {
        return Double(value)
    }

    func toDouble(key: CodingKey, value: UInt) -> Double? {
        return Double(value)
    }
}

// MARK: UInt8转Double
extension TypeConvertible {
    func toDouble(key: CodingKey, value: UInt8) -> Double {
        return Double(value)
    }

    func toDouble(key: CodingKey, value: UInt8) -> Double? {
          return Double(value)
    }
}

// MARK: UInt16转Double
extension TypeConvertible {
    func toDouble(key: CodingKey, value: UInt16) -> Double {
          return Double(value)
    }

    func toDouble(key: CodingKey, value: UInt16) -> Double? {
          return Double(value)
    }
}

// MARK: UInt32转Double
extension TypeConvertible {
    func toDouble(key: CodingKey, value: UInt32) -> Double {
          return Double(value)
    }

    func toDouble(key: CodingKey, value: UInt32) -> Double? {
          return Double(value)
    }
}

// MARK: UInt64转Double
extension TypeConvertible {
    func toDouble(key: CodingKey, value: UInt64) -> Double {
          return Double(value)
    }

    func toDouble(key: CodingKey, value: UInt64) -> Double? {
          return Double(value)
    }
}

// MARK: Float转Double
extension TypeConvertible {
    func toDouble(key: CodingKey, value: Float) -> Double {
          return Double(value)
    }

    func toDouble(key: CodingKey, value: Float) -> Double? {
          return Double(value)
    }
}

// MARK: String转Double
extension TypeConvertible {
    func toDouble(key: CodingKey, value: String) -> Double {
        switch value.lowercased() {
        case "true", "yes": return 1
        case "false", "no": return 0
        default: return Double(value.lowercased()) ?? 0
        }
    }

    func toDouble(key: CodingKey, value: String) -> Double? {
        switch value.lowercased() {
        case "true", "yes": return 1
        case "false", "no": return 0
        default: return Double(value.lowercased())
        }
    }
}

// MARK: Bool转String
extension TypeConvertible {
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
}

// MARK: Int转String
extension TypeConvertible {
    func toString(key: CodingKey, value: Int) -> String {
        return "\(value)"
    }

    func toString(key: CodingKey, value: Int) -> String? {
        return "\(value)"
    }
}

// MARK: Int8转String
extension TypeConvertible {
    func toString(key: CodingKey, value: Int8) -> String {
        return "\(value)"
    }

    func toString(key: CodingKey, value: Int8) -> String? {
        return "\(value)"
    }
}

// MARK: Int16转String
extension TypeConvertible {
    func toString(key: CodingKey, value: Int16) -> String {
        return "\(value)"
    }

    func toString(key: CodingKey, value: Int16) -> String? {
        return "\(value)"
    }
}

// MARK: Int32转String
extension TypeConvertible {
    func toString(key: CodingKey, value: Int32) -> String {
        return "\(value)"
    }

    func toString(key: CodingKey, value: Int32) -> String? {
        return "\(value)"
    }
}

// MARK: Int64转String
extension TypeConvertible {
    func toString(key: CodingKey, value: Int64) -> String {
        return "\(value)"
    }

    func toString(key: CodingKey, value: Int64) -> String? {
        return "\(value)"
    }
}

// MARK: UInt转String
extension TypeConvertible {
    func toString(key: CodingKey, value: UInt) -> String {
        return "\(value)"
    }

    func toString(key: CodingKey, value: UInt) -> String? {
        return "\(value)"
    }
}

// MARK: UInt8转String
extension TypeConvertible {
    func toString(key: CodingKey, value: UInt8) -> String {
        return "\(value)"
    }

    func toString(key: CodingKey, value: UInt8) -> String? {
        return "\(value)"
    }
}

// MARK: UInt16转String
extension TypeConvertible {
    func toString(key: CodingKey, value: UInt16) -> String {
        return "\(value)"
    }

    func toString(key: CodingKey, value: UInt16) -> String? {
        return "\(value)"
    }
}

// MARK: UInt32转String
extension TypeConvertible {
    func toString(key: CodingKey, value: UInt32) -> String {
        return "\(value)"
    }

    func toString(key: CodingKey, value: UInt32) -> String? {
        return "\(value)"
    }
}

// MARK: UInt64转String
extension TypeConvertible {
    func toString(key: CodingKey, value: UInt64) -> String {
        return "\(value)"
    }

    func toString(key: CodingKey, value: UInt64) -> String? {
        return "\(value)"
    }
}

// MARK: Float转String
extension TypeConvertible {
    func toString(key: CodingKey, value: Float) -> String {
        return "\(value)"
    }

    func toString(key: CodingKey, value: Float) -> String? {
        return "\(value)"
    }
}

// MARK: Double转String
extension TypeConvertible {
    func toString(key: CodingKey, value: Double) -> String {
        return "\(value)"
    }

    func toString(key: CodingKey, value: Double) -> String? {
        return "\(value)"
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
            print(error)
            self = Self.init(with: 0)
        }
    }
}
#endif

public protocol SingleValueDecodingScopeControllable {
    func scope(key: CodingKey) -> Set<AnyHashable>
    func execption(key: CodingKey, source: AnyHashable) -> AnyHashable
}
