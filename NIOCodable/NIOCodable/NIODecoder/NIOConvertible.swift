import Foundation

public protocol CustomConvertible {
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
    
    func toUInt(key: CodingKey, value: Int) -> UInt
    func toUInt(key: CodingKey, value: Int) -> UInt?
    
    func toUInt(key: CodingKey, value: Int8) -> UInt
    func toUInt(key: CodingKey, value: Int8) -> UInt?
    
    func toUInt(key: CodingKey, value: Int16) -> UInt
    func toUInt(key: CodingKey, value: Int16) -> UInt?
    
    func toUInt(key: CodingKey, value: Int32) -> UInt
    func toUInt(key: CodingKey, value: Int32) -> UInt?
    
    func toUInt(key: CodingKey, value: Int64) -> UInt
    func toUInt(key: CodingKey, value: Int64) -> UInt?
    
    func toUInt(key: CodingKey, value: UInt8) -> UInt
    func toUInt(key: CodingKey, value: UInt8) -> UInt?
    
    func toUInt(key: CodingKey, value: UInt16) -> UInt
    func toUInt(key: CodingKey, value: UInt16) -> UInt?
    
    func toUInt(key: CodingKey, value: UInt32) -> UInt
    func toUInt(key: CodingKey, value: UInt32) -> UInt?
    
    func toUInt(key: CodingKey, value: UInt64) -> UInt
    func toUInt(key: CodingKey, value: UInt64) -> UInt?
    
    func toUInt(key: CodingKey, value: Float) -> UInt
    func toUInt(key: CodingKey, value: Float) -> UInt?
    
    func toUInt(key: CodingKey, value: Double) -> UInt
    func toUInt(key: CodingKey, value: Double) -> UInt?
    
    func toUInt(key: CodingKey, value: String) -> UInt
    func toUInt(key: CodingKey, value: String) -> UInt?

    func toUInt8(key: CodingKey, value: Bool) -> UInt8
    func toUInt8(key: CodingKey, value: Bool) -> UInt8?

    func toUInt8(key: CodingKey, value: Int) -> UInt8
    func toUInt8(key: CodingKey, value: Int) -> UInt8?

    func toUInt8(key: CodingKey, value: Int8) -> UInt8
    func toUInt8(key: CodingKey, value: Int8) -> UInt8?

    func toUInt8(key: CodingKey, value: Int16) -> UInt8
    func toUInt8(key: CodingKey, value: Int16) -> UInt8?

    func toUInt8(key: CodingKey, value: Int32) -> UInt8
    func toUInt8(key: CodingKey, value: Int32) -> UInt8?

    func toUInt8(key: CodingKey, value: Int64) -> UInt8
    func toUInt8(key: CodingKey, value: Int64) -> UInt8?

    func toUInt8(key: CodingKey, value: UInt) -> UInt8
    func toUInt8(key: CodingKey, value: UInt) -> UInt8?

    func toUInt8(key: CodingKey, value: UInt16) -> UInt8
    func toUInt8(key: CodingKey, value: UInt16) -> UInt8?

    func toUInt8(key: CodingKey, value: UInt32) -> UInt8
    func toUInt8(key: CodingKey, value: UInt32) -> UInt8?

    func toUInt8(key: CodingKey, value: UInt64) -> UInt8
    func toUInt8(key: CodingKey, value: UInt64) -> UInt8?

    func toUInt8(key: CodingKey, value: Float) -> UInt8
    func toUInt8(key: CodingKey, value: Float) -> UInt8?

    func toUInt8(key: CodingKey, value: Double) -> UInt8
    func toUInt8(key: CodingKey, value: Double) -> UInt8?

    func toUInt8(key: CodingKey, value: String) -> UInt8
    func toUInt8(key: CodingKey, value: String) -> UInt8?

    func toUInt16(key: CodingKey, value: Bool) -> UInt16
    func toUInt16(key: CodingKey, value: Bool) -> UInt16?

    func toUInt16(key: CodingKey, value: Int) -> UInt16
    func toUInt16(key: CodingKey, value: Int) -> UInt16?

    func toUInt16(key: CodingKey, value: Int8) -> UInt16
    func toUInt16(key: CodingKey, value: Int8) -> UInt16?

    func toUInt16(key: CodingKey, value: Int16) -> UInt16
    func toUInt16(key: CodingKey, value: Int16) -> UInt16?

    func toUInt16(key: CodingKey, value: Int32) -> UInt16
    func toUInt16(key: CodingKey, value: Int32) -> UInt16?

    func toUInt16(key: CodingKey, value: Int64) -> UInt16
    func toUInt16(key: CodingKey, value: Int64) -> UInt16?

    func toUInt16(key: CodingKey, value: UInt) -> UInt16
    func toUInt16(key: CodingKey, value: UInt) -> UInt16?

    func toUInt16(key: CodingKey, value: UInt8) -> UInt16
    func toUInt16(key: CodingKey, value: UInt8) -> UInt16?

    func toUInt16(key: CodingKey, value: UInt32) -> UInt16
    func toUInt16(key: CodingKey, value: UInt32) -> UInt16?

    func toUInt16(key: CodingKey, value: UInt64) -> UInt16
    func toUInt16(key: CodingKey, value: UInt64) -> UInt16?

    func toUInt16(key: CodingKey, value: Float) -> UInt16
    func toUInt16(key: CodingKey, value: Float) -> UInt16?

    func toUInt16(key: CodingKey, value: Double) -> UInt16
    func toUInt16(key: CodingKey, value: Double) -> UInt16?

    func toUInt16(key: CodingKey, value: String) -> UInt16
    func toUInt16(key: CodingKey, value: String) -> UInt16?

    func toUInt32(key: CodingKey, value: Bool) -> UInt32
    func toUInt32(key: CodingKey, value: Bool) -> UInt32?

    func toUInt32(key: CodingKey, value: Int) -> UInt32
    func toUInt32(key: CodingKey, value: Int) -> UInt32?

    func toUInt32(key: CodingKey, value: Int8) -> UInt32
    func toUInt32(key: CodingKey, value: Int8) -> UInt32?

    func toUInt32(key: CodingKey, value: Int16) -> UInt32
    func toUInt32(key: CodingKey, value: Int16) -> UInt32?

    func toUInt32(key: CodingKey, value: Int32) -> UInt32
    func toUInt32(key: CodingKey, value: Int32) -> UInt32?

    func toUInt32(key: CodingKey, value: Int64) -> UInt32
    func toUInt32(key: CodingKey, value: Int64) -> UInt32?

    func toUInt32(key: CodingKey, value: UInt) -> UInt32
    func toUInt32(key: CodingKey, value: UInt) -> UInt32?

    func toUInt32(key: CodingKey, value: UInt8) -> UInt32
    func toUInt32(key: CodingKey, value: UInt8) -> UInt32?

    func toUInt32(key: CodingKey, value: UInt16) -> UInt32
    func toUInt32(key: CodingKey, value: UInt16) -> UInt32?

    func toUInt32(key: CodingKey, value: UInt64) -> UInt32
    func toUInt32(key: CodingKey, value: UInt64) -> UInt32?

    func toUInt32(key: CodingKey, value: Float) -> UInt32
    func toUInt32(key: CodingKey, value: Float) -> UInt32?

    func toUInt32(key: CodingKey, value: Double) -> UInt32
    func toUInt32(key: CodingKey, value: Double) -> UInt32?

    func toUInt32(key: CodingKey, value: String) -> UInt32
    func toUInt32(key: CodingKey, value: String) -> UInt32?

    func toUInt64(key: CodingKey, value: Bool) -> UInt64
    func toUInt64(key: CodingKey, value: Bool) -> UInt64?

    func toUInt64(key: CodingKey, value: Int) -> UInt64
    func toUInt64(key: CodingKey, value: Int) -> UInt64?

    func toUInt64(key: CodingKey, value: Int8) -> UInt64
    func toUInt64(key: CodingKey, value: Int8) -> UInt64?

    func toUInt64(key: CodingKey, value: Int16) -> UInt64
    func toUInt64(key: CodingKey, value: Int16) -> UInt64?

    func toUInt64(key: CodingKey, value: Int32) -> UInt64
    func toUInt64(key: CodingKey, value: Int32) -> UInt64?

    func toUInt64(key: CodingKey, value: Int64) -> UInt64
    func toUInt64(key: CodingKey, value: Int64) -> UInt64?

    func toUInt64(key: CodingKey, value: UInt) -> UInt64
    func toUInt64(key: CodingKey, value: UInt) -> UInt64?

    func toUInt64(key: CodingKey, value: UInt8) -> UInt64
    func toUInt64(key: CodingKey, value: UInt8) -> UInt64?

    func toUInt64(key: CodingKey, value: UInt16) -> UInt64
    func toUInt64(key: CodingKey, value: UInt16) -> UInt64?

    func toUInt64(key: CodingKey, value: UInt32) -> UInt64
    func toUInt64(key: CodingKey, value: UInt32) -> UInt64?

    func toUInt64(key: CodingKey, value: Float) -> UInt64
    func toUInt64(key: CodingKey, value: Float) -> UInt64?

    func toUInt64(key: CodingKey, value: Double) -> UInt64
    func toUInt64(key: CodingKey, value: Double) -> UInt64?

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
extension CustomConvertible {
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
extension CustomConvertible {
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
extension CustomConvertible {
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
extension CustomConvertible {
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
extension CustomConvertible {
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
extension CustomConvertible {
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
extension CustomConvertible {
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
extension CustomConvertible {
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
extension CustomConvertible {
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
extension CustomConvertible {
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
extension CustomConvertible {
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
extension CustomConvertible {
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
extension CustomConvertible {
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
extension CustomConvertible {
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
extension CustomConvertible {
    func toInt(key: CodingKey, value: Int8) -> Int {
        return Int(value)
    }
    
    func toInt(key: CodingKey, value: Int8) -> Int? {
        return Int(value)
    }
}

// MARK: Int16转Int
extension CustomConvertible {
    func toInt(key: CodingKey, value: Int16) -> Int {
        return Int(value)
    }
    
    func toInt(key: CodingKey, value: Int16) -> Int? {
        return Int(value)
    }
}

// MARK: Int32转Int
extension CustomConvertible {
    func toInt(key: CodingKey, value: Int32) -> Int {
        return Int(value)
    }
    
    func toInt(key: CodingKey, value: Int32) -> Int? {
        return Int(value)
    }
}

// MARK: Int64转Int
extension CustomConvertible {
    func toInt(key: CodingKey, value: Int64) -> Int {
        return Int(value)
    }
    
    func toInt(key: CodingKey, value: Int64) -> Int? {
        return Int(value)
    }
}

// MARK: UInt转Int
extension CustomConvertible {
    func toInt(key: CodingKey, value: UInt) -> Int {
        return Int(value)
    }
    
    func toInt(key: CodingKey, value: UInt) -> Int? {
        return Int(value)
    }
}

// MARK: UInt8转Int
extension CustomConvertible {
    func toInt(key: CodingKey, value: UInt8) -> Int {
        return Int(value)
    }
    
    func toInt(key: CodingKey, value: UInt8) -> Int? {
        return Int(value)
    }
}

// MARK: UInt16转Int
extension CustomConvertible {
    func toInt(key: CodingKey, value: UInt16) -> Int {
        return Int(value)
    }
    
    func toInt(key: CodingKey, value: UInt16) -> Int? {
        return Int(value)
    }
}

// MARK: UInt32转Int
extension CustomConvertible {
    func toInt(key: CodingKey, value: UInt32) -> Int {
        return Int(value)
    }
    
    func toInt(key: CodingKey, value: UInt32) -> Int? {
        return Int(value)
    }
}

// MARK: UInt64转Int
extension CustomConvertible {
    func toInt(key: CodingKey, value: UInt64) -> Int {
        return Int(value)
    }
    
    func toInt(key: CodingKey, value: UInt64) -> Int? {
        return Int(value)
    }
}

// MARK: Float转Int
extension CustomConvertible {
    func toInt(key: CodingKey, value: Float) -> Int {
        return Int(value)
    }
    
    func toInt(key: CodingKey, value: Float) -> Int? {
        return Int(value)
    }
}

// MARK: Double转Int
extension CustomConvertible {
    func toInt(key: CodingKey, value: Double) -> Int {
        return Int(value)
    }
    
    func toInt(key: CodingKey, value: Double) -> Int? {
        return Int(value)
    }
}

// MARK: String转Int
extension CustomConvertible {
    func toInt(key: CodingKey, value: String) -> Int {
        switch value.lowercased() {
        case "true", "yes": return 1
        case "false", "no": return 0
        default: return Int(value) ?? 0
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
extension CustomConvertible {
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
extension CustomConvertible {
    func toInt8(key: CodingKey, value: Int) -> Int8 {
        return Int8(value)
    }
    
    func toInt8(key: CodingKey, value: Int) -> Int8? {
        return Int8(value)
    }
}

// MARK: Int16转Int8
extension CustomConvertible {
    func toInt8(key: CodingKey, value: Int16) -> Int8 {
        return Int8(value)
    }
    
    func toInt8(key: CodingKey, value: Int16) -> Int8? {
        return Int8(value)
    }
}

// MARK: Int32转Int8
extension CustomConvertible {
    func toInt8(key: CodingKey, value: Int32) -> Int8 {
        return Int8(value)
    }
    
    func toInt8(key: CodingKey, value: Int32) -> Int8? {
        return Int8(value)
    }
}

// MARK: Int64转Int8
extension CustomConvertible {
    func toInt8(key: CodingKey, value: Int64) -> Int8 {
        return Int8(value)
    }
    
    func toInt8(key: CodingKey, value: Int64) -> Int8? {
        return Int8(value)
    }
}

// MARK: UInt转Int8
extension CustomConvertible {
    func toInt8(key: CodingKey, value: UInt) -> Int8 {
        return Int8(value)
    }
    
    func toInt8(key: CodingKey, value: UInt) -> Int8? {
        return Int8(value)
    }
}

// MARK: UInt8转Int8
extension CustomConvertible {
    func toInt8(key: CodingKey, value: UInt8) -> Int8 {
        return Int8(value)
    }
    
    func toInt8(key: CodingKey, value: UInt8) -> Int8? {
        return Int8(value)
    }
}

extension CustomConvertible {
    func toInt8(key: CodingKey, value: UInt16) -> Int8 {
        return Int8(value)
    }
    
    func toInt8(key: CodingKey, value: UInt16) -> Int8? {
        return Int8(value)
    }
}

// MARK: UInt32转Int8
extension CustomConvertible {
    func toInt8(key: CodingKey, value: UInt32) -> Int8 {
        return Int8(value)
    }
    
    func toInt8(key: CodingKey, value: UInt32) -> Int8? {
        return Int8(value)
    }
}

// MARK: UInt64转Int8
extension CustomConvertible {
    func toInt8(key: CodingKey, value: UInt64) -> Int8 {
        return Int8(value)
    }
    
    func toInt8(key: CodingKey, value: UInt64) -> Int8? {
        return Int8(value)
    }
}

// MARK: Float转Int8
extension CustomConvertible {
    func toInt8(key: CodingKey, value: Float) -> Int8 {
        return Int8(value)
    }
    
    func toInt8(key: CodingKey, value: Float) -> Int8? {
        return Int8(value)
    }
}

// MARK: Double转Int8
extension CustomConvertible {
    func toInt8(key: CodingKey, value: Double) -> Int8 {
        return Int8(value)
    }
    
    func toInt8(key: CodingKey, value: Double) -> Int8? {
        return Int8(value)
    }
}

// MARK: String转Int8
extension CustomConvertible {
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
extension CustomConvertible {
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
extension CustomConvertible {
    func toInt16(key: CodingKey, value: Int) -> Int16 {
        return Int16(value)
    }
    
    func toInt16(key: CodingKey, value: Int) -> Int16? {
        return Int16(value)
    }
}

// MARK: Int8转Int16
extension CustomConvertible {
    func toInt16(key: CodingKey, value: Int8) -> Int16 {
        return Int16(value)
    }
    
    func toInt16(key: CodingKey, value: Int8) -> Int16? {
        return Int16(value)
    }
}

// MARK: Int32转Int16
extension CustomConvertible {
    func toInt16(key: CodingKey, value: Int32) -> Int16 {
        return Int16(value)
    }
    
    func toInt16(key: CodingKey, value: Int32) -> Int16? {
        return Int16(value)
    }
}

// MARK: Int64转Int16
extension CustomConvertible {
    func toInt16(key: CodingKey, value: Int64) -> Int16 {
        return Int16(value)
    }
    
    func toInt16(key: CodingKey, value: Int64) -> Int16? {
        return Int16(value)
    }
}

// MARK: UInt转Int16
extension CustomConvertible {
    func toInt16(key: CodingKey, value: UInt) -> Int16 {
        return Int16(value)
    }
    
    func toInt16(key: CodingKey, value: UInt) -> Int16? {
        return Int16(value)
    }
}

// MARK: UInt8转Int16
extension CustomConvertible {
    func toInt16(key: CodingKey, value: UInt8) -> Int16 {
        return Int16(value)
    }
    
    func toInt16(key: CodingKey, value: UInt8) -> Int16? {
        return Int16(value)
    }
}

// MARK: UInt16转Int16
extension CustomConvertible  {
    func toInt16(key: CodingKey, value: UInt16) -> Int16 {
        return Int16(value)
    }
    
    func toInt16(key: CodingKey, value: UInt16) -> Int16? {
        return Int16(value)
    }
}

// MARK: UInt32转Int16
extension CustomConvertible {
    func toInt16(key: CodingKey, value: UInt32) -> Int16 {
        return Int16(value)
    }
    
    func toInt16(key: CodingKey, value: UInt32) -> Int16? {
        return Int16(value)
    }
}

// MARK: UInt64转Int16
extension CustomConvertible {
    func toInt16(key: CodingKey, value: UInt64) -> Int16 {
        return Int16(value)
    }
    
    func toInt16(key: CodingKey, value: UInt64) -> Int16? {
        return Int16(value)
    }
}

// MARK: Float转Int16
extension CustomConvertible {
    func toInt16(key: CodingKey, value: Float) -> Int16 {
        return Int16(value)
    }
    
    func toInt16(key: CodingKey, value: Float) -> Int16? {
        return Int16(value)
    }
}

// MARK: Double转Int16
extension CustomConvertible {
    func toInt16(key: CodingKey, value: Double) -> Int16 {
        return Int16(value)
    }
    
    func toInt16(key: CodingKey, value: Double) -> Int16? {
        return Int16(value)
    }
}

// MARK: String转Int16
extension CustomConvertible {
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
extension CustomConvertible {
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
extension CustomConvertible {
    func toInt32(key: CodingKey, value: Int) -> Int32 {
        return Int32(value)
    }
    
    func toInt32(key: CodingKey, value: Int) -> Int32? {
        return Int32(value)
    }
}

// MARK: Int8转Int32
extension CustomConvertible {
    func toInt32(key: CodingKey, value: Int8) -> Int32 {
        return Int32(value)
    }
    
    func toInt32(key: CodingKey, value: Int8) -> Int32? {
        return Int32(value)
    }
}

// MARK: Int16转Int32
extension CustomConvertible {
    func toInt32(key: CodingKey, value: Int16) -> Int32 {
        return Int32(value)
    }
    
    func toInt32(key: CodingKey, value: Int16) -> Int32? {
        return Int32(value)
    }
}

// MARK: Int64转Int32
extension CustomConvertible {
    func toInt32(key: CodingKey, value: Int64) -> Int32 {
        return Int32(value)
    }
    
    func toInt32(key: CodingKey, value: Int64) -> Int32? {
        return Int32(value)
    }
}


// MARK: UInt转Int32
extension CustomConvertible {
    func toInt32(key: CodingKey, value: UInt) -> Int32 {
        return Int32(value)
    }
    
    func toInt32(key: CodingKey, value: UInt) -> Int32? {
        return Int32(value)
    }
}

// MARK: UInt8转Int32
extension CustomConvertible {
    func toInt32(key: CodingKey, value: UInt8) -> Int32 {
        return Int32(value)
    }
    
    func toInt32(key: CodingKey, value: UInt8) -> Int32? {
        return Int32(value)
    }
}

// MARK: UInt16转Int32
extension CustomConvertible {
    func toInt32(key: CodingKey, value: UInt16) -> Int32 {
        return Int32(value)
    }
    
    func toInt32(key: CodingKey, value: UInt16) -> Int32? {
        return Int32(value)
    }
}

// MARK: UInt32转Int32
extension CustomConvertible {
    func toInt32(key: CodingKey, value: UInt32) -> Int32 {
        return Int32(value)
    }
    
    func toInt32(key: CodingKey, value: UInt32) -> Int32? {
        return Int32(value)
    }
}

// MARK: UInt64转Int32
extension CustomConvertible {
    func toInt32(key: CodingKey, value: UInt64) -> Int32 {
        return Int32(value)
    }
    
    func toInt32(key: CodingKey, value: UInt64) -> Int32? {
        return Int32(value)
    }
}

// MARK: Float转Int32
extension CustomConvertible {
    func toInt32(key: CodingKey, value: Float) -> Int32 {
        return Int32(value)
    }
    
    func toInt32(key: CodingKey, value: Float) -> Int32? {
        return Int32(value)
    }
}

// MARK: Double转Int32
extension CustomConvertible {
    func toInt32(key: CodingKey, value: Double) -> Int32 {
        return Int32(value)
    }
    
    func toInt32(key: CodingKey, value: Double) -> Int32? {
        return Int32(value)
    }
}

// MARK: String转Int32
extension CustomConvertible {
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
extension CustomConvertible {
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
extension CustomConvertible {
    func toInt64(key: CodingKey, value: Int) -> Int64 {
        return Int64(value)
    }
    
    func toInt64(key: CodingKey, value: Int) -> Int64? {
        return Int64(value)
    }
}

// MARK: Int8转Int64
extension CustomConvertible {
    func toInt64(key: CodingKey, value: Int8) -> Int64 {
        return Int64(value)
    }

    func toInt64(key: CodingKey, value: Int8) -> Int64? {
        return Int64(value)
    }
}

// MARK: Int16转Int64
extension CustomConvertible {
    func toInt64(key: CodingKey, value: Int16) -> Int64 {
        return Int64(value)
    }
    
    func toInt64(key: CodingKey, value: Int16) -> Int64? {
        return Int64(value)
    }
}

// MARK: Int32转Int64
extension CustomConvertible {
    func toInt64(key: CodingKey, value: Int32) -> Int64 {
        return Int64(value)
    }
    
    func toInt64(key: CodingKey, value: Int32) -> Int64? {
        return Int64(value)
    }
}

// MARK: UInt转Int64
extension CustomConvertible {
    func toInt64(key: CodingKey, value: UInt) -> Int64 {
        return Int64(value)
    }
    
    func toInt64(key: CodingKey, value: UInt) -> Int64? {
        return Int64(value)
    }
}

// MARK: UInt8转Int64
extension CustomConvertible {
    func toInt64(key: CodingKey, value: UInt8) -> Int64 {
        return Int64(value)
    }
    
    func toInt64(key: CodingKey, value: UInt8) -> Int64? {
        return Int64(value)
    }
}

// MARK: UInt16转Int64
extension CustomConvertible {
    func toInt64(key: CodingKey, value: UInt16) -> Int64 {
        return Int64(value)
    }
    
    func toInt64(key: CodingKey, value: UInt16) -> Int64? {
        return Int64(value)
    }
}

// MARK: UInt32转Int64
extension CustomConvertible {
    func toInt64(key: CodingKey, value: UInt32) -> Int64 {
        return Int64(value)
    }
    
    func toInt64(key: CodingKey, value: UInt32) -> Int64? {
        return Int64(value)
    }
}

// MARK: UInt64转Int64
extension CustomConvertible {
    func toInt64(key: CodingKey, value: UInt64) -> Int64 {
        return Int64(value)
    }
    
    func toInt64(key: CodingKey, value: UInt64) -> Int64? {
        return Int64(value)
    }
}

// MARK: Float转Int64
extension CustomConvertible {
    func toInt64(key: CodingKey, value: Float) -> Int64 {
        return Int64(value)
    }
    
    func toInt64(key: CodingKey, value: Float) -> Int64? {
        return Int64(value)
    }
}

// MARK: Double转Int64
extension CustomConvertible {
    func toInt64(key: CodingKey, value: Double) -> Int64 {
        return Int64(value)
    }
    
    func toInt64(key: CodingKey, value: Double) -> Int64? {
        return Int64(value)
    }
}

// MARK: String转Int64
extension CustomConvertible {
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
extension CustomConvertible {
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
extension CustomConvertible {
    func toUInt(key: CodingKey, value: Int) -> UInt {
        return UInt(value)
    }
    
    func toUInt(key: CodingKey, value: Int) -> UInt? {
        return UInt(value)
    }
}

// MARK: Int8转UInt
extension CustomConvertible {
    func toUInt(key: CodingKey, value: Int8) -> UInt {
        return UInt(value)
    }
    
    func toUInt(key: CodingKey, value: Int8) -> UInt? {
        return UInt(value)
    }
}

// MARK: Int16转UInt
extension CustomConvertible {
    func toUInt(key: CodingKey, value: Int16) -> UInt {
        return UInt(value)
    }
    
    func toUInt(key: CodingKey, value: Int16) -> UInt? {
        return UInt(value)
    }
}

// MARK: Int32转UInt
extension CustomConvertible {
    func toUInt(key: CodingKey, value: Int32) -> UInt {
        return UInt(value)
    }
    func toUInt(key: CodingKey, value: Int32) -> UInt? {
        return UInt(value)
    }
}

// MARK: Int64转UInt
extension CustomConvertible {
    func toUInt(key: CodingKey, value: Int64) -> UInt {
        return UInt(value)
    }
    
    func toUInt(key: CodingKey, value: Int64) -> UInt? {
        return UInt(value)
    }
}

// MARK: UInt8转UInt
extension CustomConvertible {
    func toUInt(key: CodingKey, value: UInt8) -> UInt {
        return UInt(value)
    }
    
    func toUInt(key: CodingKey, value: UInt8) -> UInt? {
        return UInt(value)
    }
}

// MARK: UInt16转UInt
extension CustomConvertible {
    func toUInt(key: CodingKey, value: UInt16) -> UInt {
        return UInt(value)
    }
    
    func toUInt(key: CodingKey, value: UInt16) -> UInt? {
        return UInt(value)
    }
}

// MARK: UInt32转UInt
extension CustomConvertible {
    func toUInt(key: CodingKey, value: UInt32) -> UInt {
        return UInt(value)
    }
    
    func toUInt(key: CodingKey, value: UInt32) -> UInt? {
        return UInt(value)
    }
}

// MARK: UInt64转UInt
extension CustomConvertible {
    func toUInt(key: CodingKey, value: UInt64) -> UInt {
        return UInt(value)
    }
    
    func toUInt(key: CodingKey, value: UInt64) -> UInt? {
        return UInt(value)
    }
}

// MARK: Float转UInt
extension CustomConvertible {
    func toUInt(key: CodingKey, value: Float) -> UInt {
        return UInt(value)
    }
    
    func toUInt(key: CodingKey, value: Float) -> UInt? {
        return UInt(value)
    }
}

// MARK: Double转UInt
extension CustomConvertible {
    func toUInt(key: CodingKey, value: Double) -> UInt {
        return UInt(value)
    }
    
    func toUInt(key: CodingKey, value: Double) -> UInt? {
        return UInt(value)
    }
}

// MARK: String转UInt
extension CustomConvertible {
    func toUInt(key: CodingKey, value: String) -> UInt {
        return UInt(value) ?? 0
    }
    
    func toUInt(key: CodingKey, value: String) -> UInt? {
        return UInt(value)
    }
}

// MARK: Bool转UInt8
extension CustomConvertible {
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
extension CustomConvertible {
    func toUInt8(key: CodingKey, value: Int) -> UInt8 {
        return UInt8(value)
    }

    func toUInt8(key: CodingKey, value: Int) -> UInt8? {
        return UInt8(value)
    }
}

// MARK: Int8转UInt8
extension CustomConvertible {
    func toUInt8(key: CodingKey, value: Int8) -> UInt8 {
        return UInt8(value)
    }

    func toUInt8(key: CodingKey, value: Int8) -> UInt8? {
        return UInt8(value)
    }
}

// MARK: Int16转UInt8
extension CustomConvertible {
    func toUInt8(key: CodingKey, value: Int16) -> UInt8 {
        return UInt8(value)
    }

    func toUInt8(key: CodingKey, value: Int16) -> UInt8? {
        return UInt8(value)
    }
}

// MARK: Int32转UInt8
extension CustomConvertible {
    func toUInt8(key: CodingKey, value: Int32) -> UInt8 {
        return UInt8(value)
    }

    func toUInt8(key: CodingKey, value: Int32) -> UInt8? {
        return UInt8(value)
    }
}

// MARK: Int64转UInt8
extension CustomConvertible {
    func toUInt8(key: CodingKey, value: Int64) -> UInt8 {
        return UInt8(value)
    }

    func toUInt8(key: CodingKey, value: Int64) -> UInt8? {
        return UInt8(value)
    }
}

// MARK: UInt转UInt8
extension CustomConvertible {
    func toUInt8(key: CodingKey, value: UInt) -> UInt8 {
        return UInt8(value)
    }

    func toUInt8(key: CodingKey, value: UInt) -> UInt8? {
        return UInt8(value)
    }
}

// MARK: UInt16转UInt8
extension CustomConvertible {
    func toUInt8(key: CodingKey, value: UInt16) -> UInt8 {
        return UInt8(value)
    }

    func toUInt8(key: CodingKey, value: UInt16) -> UInt8? {
        return UInt8(value)
    }
}

// MARK: UInt32转UInt8
extension CustomConvertible {
    func toUInt8(key: CodingKey, value: UInt32) -> UInt8 {
        return UInt8(value)
    }

    func toUInt8(key: CodingKey, value: UInt32) -> UInt8? {
        return UInt8(value)
    }
}

// MARK: UInt64转UInt8
extension CustomConvertible {
    func toUInt8(key: CodingKey, value: UInt64) -> UInt8 {
        return UInt8(value)
    }

    func toUInt8(key: CodingKey, value: UInt64) -> UInt8? {
        return UInt8(value)
    }
}

// MARK: Float转UInt8
extension CustomConvertible {
    func toUInt8(key: CodingKey, value: Float) -> UInt8 {
        return UInt8(value)
    }

    func toUInt8(key: CodingKey, value: Float) -> UInt8? {
        return UInt8(value)
    }
}

// MARK: Double转UInt8
extension CustomConvertible {
    func toUInt8(key: CodingKey, value: Double) -> UInt8 {
        return UInt8(value)
    }

    func toUInt8(key: CodingKey, value: Double) -> UInt8? {
        return UInt8(value)
    }
}

// MARK: String转UInt8
extension CustomConvertible {
    func toUInt8(key: CodingKey, value: String) -> UInt8 {
        return UInt8(value) ?? 0
    }

    func toUInt8(key: CodingKey, value: String) -> UInt8? {
        return UInt8(value)
    }
}

// MARK: Bool转UInt16
extension CustomConvertible {
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
extension CustomConvertible {
    func toUInt16(key: CodingKey, value: Int) -> UInt16 {
        return UInt16(value)
    }

    func toUInt16(key: CodingKey, value: Int) -> UInt16? {
        return UInt16(value)
    }
}

// MARK: Int8转UInt16
extension CustomConvertible {
    func toUInt16(key: CodingKey, value: Int8) -> UInt16 {
        return UInt16(value)
    }

    func toUInt16(key: CodingKey, value: Int8) -> UInt16? {
        return UInt16(value)
    }
}

// MARK: Int16转UInt16
extension CustomConvertible {
    func toUInt16(key: CodingKey, value: Int16) -> UInt16 {
        return UInt16(value)
    }

    func toUInt16(key: CodingKey, value: Int16) -> UInt16? {
        return UInt16(value)
    }
}

// MARK: Int32转UInt16
extension CustomConvertible {
    func toUInt16(key: CodingKey, value: Int32) -> UInt16 {
        return UInt16(value)
    }

    func toUInt16(key: CodingKey, value: Int32) -> UInt16? {
        return UInt16(value)
    }
}

// MARK: Int64转UInt16
extension CustomConvertible {
    func toUInt16(key: CodingKey, value: Int64) -> UInt16 {
        return UInt16(value)
    }

    func toUInt16(key: CodingKey, value: Int64) -> UInt16? {
        return UInt16(value)
    }
}

// MARK: UInt转UInt16
extension CustomConvertible {
    func toUInt16(key: CodingKey, value: UInt) -> UInt16 {
        return UInt16(value)
    }

    func toUInt16(key: CodingKey, value: UInt) -> UInt16? {
        return UInt16(value)
    }
}

// MARK: UInt8转UInt16
extension CustomConvertible {
    func toUInt16(key: CodingKey, value: UInt8) -> UInt16 {
        return UInt16(value)
    }

    func toUInt16(key: CodingKey, value: UInt8) -> UInt16? {
        return UInt16(value)
    }
}

// MARK: UInt32转UInt16
extension CustomConvertible {
    func toUInt16(key: CodingKey, value: UInt32) -> UInt16 {
        return UInt16(value)
    }

    func toUInt16(key: CodingKey, value: UInt32) -> UInt16? {
        return UInt16(value)
    }
}

// MARK: UInt64转UInt16
extension CustomConvertible {
    func toUInt16(key: CodingKey, value: UInt64) -> UInt16 {
        return UInt16(value)
    }

    func toUInt16(key: CodingKey, value: UInt64) -> UInt16? {
        return UInt16(value)
    }
}

// MARK: Float转UInt16
extension CustomConvertible {
    func toUInt16(key: CodingKey, value: Float) -> UInt16 {
        return UInt16(value)
    }

    func toUInt16(key: CodingKey, value: Float) -> UInt16? {
        return UInt16(value)
    }
}

// MARK: Double转UInt16
extension CustomConvertible {
    func toUInt16(key: CodingKey, value: Double) -> UInt16 {
        return UInt16(value)
    }

    func toUInt16(key: CodingKey, value: Double) -> UInt16? {
        return UInt16(value)
    }
}

// MARK: String转UInt16
extension CustomConvertible {
    func toUInt16(key: CodingKey, value: String) -> UInt16 {
        return UInt16(value) ?? 0
    }

    func toUInt16(key: CodingKey, value: String) -> UInt16? {
        return UInt16(value)
    }
}

// MARK: String转UInt32
extension CustomConvertible {
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
extension CustomConvertible {
    func toUInt32(key: CodingKey, value: Int) -> UInt32 {
        return UInt32(value)
    }

    func toUInt32(key: CodingKey, value: Int) -> UInt32? {
        return UInt32(value)
    }
}

// MARK: Int8转UInt32
extension CustomConvertible {
    func toUInt32(key: CodingKey, value: Int8) -> UInt32 {
        return UInt32(value)
    }

    func toUInt32(key: CodingKey, value: Int8) -> UInt32? {
        return UInt32(value)
    }
}

// MARK: Int16转UInt32
extension CustomConvertible {
    func toUInt32(key: CodingKey, value: Int16) -> UInt32 {
        return UInt32(value)
    }

    func toUInt32(key: CodingKey, value: Int16) -> UInt32? {
        return UInt32(value)
    }
}

// MARK: Int32转UInt32
extension CustomConvertible {
    func toUInt32(key: CodingKey, value: Int32) -> UInt32 {
        return UInt32(value)
    }

    func toUInt32(key: CodingKey, value: Int32) -> UInt32? {
        return UInt32(value)
    }
}

// MARK: Int64转UInt32
extension CustomConvertible {
    func toUInt32(key: CodingKey, value: Int64) -> UInt32 {
        return UInt32(value)
    }

    func toUInt32(key: CodingKey, value: Int64) -> UInt32? {
        return UInt32(value)
    }
}

// MARK: UInt转UInt32
extension CustomConvertible {
    func toUInt32(key: CodingKey, value: UInt) -> UInt32 {
        return UInt32(value)
    }

    func toUInt32(key: CodingKey, value: UInt) -> UInt32? {
        return UInt32(value)
    }
}

// MARK: UInt8转UInt32
extension CustomConvertible {
    func toUInt32(key: CodingKey, value: UInt8) -> UInt32 {
        return UInt32(value)
    }

    func toUInt32(key: CodingKey, value: UInt8) -> UInt32? {
        return UInt32(value)
    }
}

// MARK: UInt16转UInt32
extension CustomConvertible {
    func toUInt32(key: CodingKey, value: UInt16) -> UInt32 {
        return UInt32(value)
    }

    func toUInt32(key: CodingKey, value: UInt16) -> UInt32? {
        return UInt32(value)
    }
}

// MARK: UInt64转UInt32
extension CustomConvertible {
    func toUInt32(key: CodingKey, value: UInt64) -> UInt32 {
        return UInt32(value)
    }

    func toUInt32(key: CodingKey, value: UInt64) -> UInt32? {
        return UInt32(value)
    }
}

// MARK: Float转UInt32
extension CustomConvertible {
    func toUInt32(key: CodingKey, value: Float) -> UInt32 {
        return UInt32(value)
    }

    func toUInt32(key: CodingKey, value: Float) -> UInt32? {
        return UInt32(value)
    }
}

// MARK: Double转UInt32
extension CustomConvertible {
    func toUInt32(key: CodingKey, value: Double) -> UInt32 {
        return UInt32(value)
    }

    func toUInt32(key: CodingKey, value: Double) -> UInt32? {
        return UInt32(value)
    }
}

// MARK: String转UInt32
extension CustomConvertible {
    func toUInt32(key: CodingKey, value: String) -> UInt32 {
        return UInt32(value) ?? 0
    }

    func toUInt32(key: CodingKey, value: String) -> UInt32? {
        return UInt32(value)
    }
}

// MARK: Bool转UInt64
extension CustomConvertible {
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
extension CustomConvertible {
    func toUInt64(key: CodingKey, value: Int) -> UInt64 {
        return UInt64(value)
    }

    func toUInt64(key: CodingKey, value: Int) -> UInt64? {
        return UInt64(value)
    }
}

// MARK: Int8转UInt64
extension CustomConvertible {
    func toUInt64(key: CodingKey, value: Int8) -> UInt64 {
        return UInt64(value)
    }

    func toUInt64(key: CodingKey, value: Int8) -> UInt64? {
        return UInt64(value)
    }
}

// MARK: Int16转UInt64
extension CustomConvertible {
    func toUInt64(key: CodingKey, value: Int16) -> UInt64 {
        return UInt64(value)
    }

    func toUInt64(key: CodingKey, value: Int16) -> UInt64? {
        return UInt64(value)
    }
}

// MARK: Int32转UInt64
extension CustomConvertible {
    func toUInt64(key: CodingKey, value: Int32) -> UInt64 {
        return UInt64(value)
    }

    func toUInt64(key: CodingKey, value: Int32) -> UInt64? {
        return UInt64(value)
    }
}

// MARK: Int64转UInt64
extension CustomConvertible {
    func toUInt64(key: CodingKey, value: Int64) -> UInt64 {
        return UInt64(value)
    }

    func toUInt64(key: CodingKey, value: Int64) -> UInt64? {
        return UInt64(value)
    }
}

// MARK: UInt转UInt64
extension CustomConvertible {
    func toUInt64(key: CodingKey, value: UInt) -> UInt64 {
        return UInt64(value)
    }

    func toUInt64(key: CodingKey, value: UInt) -> UInt64? {
        return UInt64(value)
    }
}

// MARK: UInt8转UInt64
extension CustomConvertible {
    func toUInt64(key: CodingKey, value: UInt8) -> UInt64 {
        return UInt64(value)
    }

    func toUInt64(key: CodingKey, value: UInt8) -> UInt64? {
        return UInt64(value)
    }
}

// MARK: UInt16转UInt64
extension CustomConvertible {
    func toUInt64(key: CodingKey, value: UInt16) -> UInt64 {
        return UInt64(value)
    }

    func toUInt64(key: CodingKey, value: UInt16) -> UInt64? {
        return UInt64(value)
    }
}

// MARK: UInt32转UInt64
extension CustomConvertible {
    func toUInt64(key: CodingKey, value: UInt32) -> UInt64 {
        return UInt64(value)
    }

    func toUInt64(key: CodingKey, value: UInt32) -> UInt64? {
        return UInt64(value)
    }
}

// MARK: Float转UInt64
extension CustomConvertible {
    func toUInt64(key: CodingKey, value: Float) -> UInt64 {
        return UInt64(value)
    }

    func toUInt64(key: CodingKey, value: Float) -> UInt64? {
        return UInt64(value)
    }
}

// MARK: Double转UInt64
extension CustomConvertible {
    func toUInt64(key: CodingKey, value: Double) -> UInt64 {
        return UInt64(value)
    }

    func toUInt64(key: CodingKey, value: Double) -> UInt64? {
        return UInt64(value)
    }
}

// MARK: String转UInt64
extension CustomConvertible {
    func toUInt64(key: CodingKey, value: String) -> UInt64 {
        return UInt64(value) ?? 0
    }

    func toUInt64(key: CodingKey, value: String) -> UInt64? {
        return UInt64(value)
    }
}

// MARK: Bool转Float
extension CustomConvertible {
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
extension CustomConvertible {
    func toFloat(key: CodingKey, value: Int) -> Float {
        return Float(value)
    }

    func toFloat(key: CodingKey, value: Int) -> Float? {
        return Float(value)
    }
}

// MARK: Int8转Float
extension CustomConvertible {
    func toFloat(key: CodingKey, value: Int8) -> Float {
        return Float(value)
    }

    func toFloat(key: CodingKey, value: Int8) -> Float? {
        return Float(value)
    }
}

// MARK: Int16转Float
extension CustomConvertible {
    func toFloat(key: CodingKey, value: Int16) -> Float {
        return Float(value)
    }

    func toFloat(key: CodingKey, value: Int16) -> Float? {
        return Float(value)
    }
}

// MARK: Int32转Float
extension CustomConvertible {
    func toFloat(key: CodingKey, value: Int32) -> Float {
        return Float(value)
    }

    func toFloat(key: CodingKey, value: Int32) -> Float? {
        return Float(value)
    }
}

// MARK: Int64转Float
extension CustomConvertible {
    func toFloat(key: CodingKey, value: Int64) -> Float {
        return Float(value)
    }

    func toFloat(key: CodingKey, value: Int64) -> Float? {
        return Float(value)
    }
}

// MARK: UInt转Float
extension CustomConvertible {
    func toFloat(key: CodingKey, value: UInt) -> Float {
        return Float(value)
    }

    func toFloat(key: CodingKey, value: UInt) -> Float? {
        return Float(value)
    }
}

// MARK: UInt8转Float
extension CustomConvertible {
    func toFloat(key: CodingKey, value: UInt8) -> Float {
        return Float(value)
    }

    func toFloat(key: CodingKey, value: UInt8) -> Float? {
        return Float(value)
    }
}

// MARK: UInt16转Float
extension CustomConvertible {
    func toFloat(key: CodingKey, value: UInt16) -> Float {
        return Float(value)
    }

    func toFloat(key: CodingKey, value: UInt16) -> Float? {
        return Float(value)
    }
}

// MARK: UInt32转Float
extension CustomConvertible {
    func toFloat(key: CodingKey, value: UInt32) -> Float {
        return Float(value)
    }

    func toFloat(key: CodingKey, value: UInt32) -> Float? {
        return Float(value)
    }
}

// MARK: UInt64转Float
extension CustomConvertible {
    func toFloat(key: CodingKey, value: UInt64) -> Float {
        return Float(value)
    }

    func toFloat(key: CodingKey, value: UInt64) -> Float? {
        return Float(value)
    }
}

// MARK: Double转Float
extension CustomConvertible {
    func toFloat(key: CodingKey, value: Double) -> Float {
        return Float(value)
    }

    func toFloat(key: CodingKey, value: Double) -> Float? {
        return Float(value)
    }
}

// MARK: String转Float
extension CustomConvertible {
    func toFloat(key: CodingKey, value: String) -> Float {
        return Float(value) ?? 0
    }

    func toFloat(key: CodingKey, value: String) -> Float? {
        return Float(value)
    }
}

// MARK: Bool转Double
extension CustomConvertible {
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
extension CustomConvertible {
    func toDouble(key: CodingKey, value: Int) -> Double {
        return Double(value)
    }

    func toDouble(key: CodingKey, value: Int) -> Double? {
        return Double(value)
    }
}

// MARK: Int8转Double
extension CustomConvertible {
    func toDouble(key: CodingKey, value: Int8) -> Double {
        return Double(value)
    }

    func toDouble(key: CodingKey, value: Int8) -> Double? {
        return Double(value)
    }
}

// MARK: Int16转Double
extension CustomConvertible {
    func toDouble(key: CodingKey, value: Int16) -> Double {
        return Double(value)
    }

    func toDouble(key: CodingKey, value: Int16) -> Double? {
        return Double(value)
    }
}

// MARK: Int32转Double
extension CustomConvertible {
    func toDouble(key: CodingKey, value: Int32) -> Double {
        return Double(value)
    }

    func toDouble(key: CodingKey, value: Int32) -> Double? {
        return Double(value)
    }
}

// MARK: Int64转Double
extension CustomConvertible {
    func toDouble(key: CodingKey, value: Int64) -> Double {
        return Double(value)
    }

    func toDouble(key: CodingKey, value: Int64) -> Double? {
        return Double(value)
    }
}

// MARK: UInt转Double
extension CustomConvertible {
    func toDouble(key: CodingKey, value: UInt) -> Double {
        return Double(value)
    }

    func toDouble(key: CodingKey, value: UInt) -> Double? {
        return Double(value)
    }
}

// MARK: UInt8转Double
extension CustomConvertible {
    func toDouble(key: CodingKey, value: UInt8) -> Double {
        return Double(value)
    }

    func toDouble(key: CodingKey, value: UInt8) -> Double? {
          return Double(value)
    }
}

// MARK: UInt16转Double
extension CustomConvertible {
    func toDouble(key: CodingKey, value: UInt16) -> Double {
          return Double(value)
    }

    func toDouble(key: CodingKey, value: UInt16) -> Double? {
          return Double(value)
    }
}

// MARK: UInt32转Double
extension CustomConvertible {
    func toDouble(key: CodingKey, value: UInt32) -> Double {
          return Double(value)
    }

    func toDouble(key: CodingKey, value: UInt32) -> Double? {
          return Double(value)
    }
}

// MARK: UInt64转Double
extension CustomConvertible {
    func toDouble(key: CodingKey, value: UInt64) -> Double {
          return Double(value)
    }

    func toDouble(key: CodingKey, value: UInt64) -> Double? {
          return Double(value)
    }
}

// MARK: Float转Double
extension CustomConvertible {
    func toDouble(key: CodingKey, value: Float) -> Double {
          return Double(value)
    }

    func toDouble(key: CodingKey, value: Float) -> Double? {
          return Double(value)
    }
}

// MARK: String转Double
extension CustomConvertible {
    func toDouble(key: CodingKey, value: String) -> Double {
          return Double(value) ?? 0
    }

    func toDouble(key: CodingKey, value: String) -> Double? {
          return Double(value)
    }
}

// MARK: Bool转String
extension CustomConvertible {
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
extension CustomConvertible {
    func toString(key: CodingKey, value: Int) -> String {
        return "\(value)"
    }

    func toString(key: CodingKey, value: Int) -> String? {
        return "\(value)"
    }
}

// MARK: Int8转String
extension CustomConvertible {
    func toString(key: CodingKey, value: Int8) -> String {
        return "\(value)"
    }

    func toString(key: CodingKey, value: Int8) -> String? {
        return "\(value)"
    }
}

// MARK: Int16转String
extension CustomConvertible {
    func toString(key: CodingKey, value: Int16) -> String {
        return "\(value)"
    }

    func toString(key: CodingKey, value: Int16) -> String? {
        return "\(value)"
    }
}

// MARK: Int32转String
extension CustomConvertible {
    func toString(key: CodingKey, value: Int32) -> String {
        return "\(value)"
    }

    func toString(key: CodingKey, value: Int32) -> String? {
        return "\(value)"
    }
}

// MARK: Int64转String
extension CustomConvertible {
    func toString(key: CodingKey, value: Int64) -> String {
        return "\(value)"
    }

    func toString(key: CodingKey, value: Int64) -> String? {
        return "\(value)"
    }
}

// MARK: UInt转String
extension CustomConvertible {
    func toString(key: CodingKey, value: UInt) -> String {
        return "\(value)"
    }

    func toString(key: CodingKey, value: UInt) -> String? {
        return "\(value)"
    }
}

// MARK: UInt8转String
extension CustomConvertible {
    func toString(key: CodingKey, value: UInt8) -> String {
        return "\(value)"
    }

    func toString(key: CodingKey, value: UInt8) -> String? {
        return "\(value)"
    }
}

// MARK: UInt16转String
extension CustomConvertible {
    func toString(key: CodingKey, value: UInt16) -> String {
        return "\(value)"
    }

    func toString(key: CodingKey, value: UInt16) -> String? {
        return "\(value)"
    }
}

// MARK: UInt32转String
extension CustomConvertible {
    func toString(key: CodingKey, value: UInt32) -> String {
        return "\(value)"
    }

    func toString(key: CodingKey, value: UInt32) -> String? {
        return "\(value)"
    }
}

// MARK: UInt64转String
extension CustomConvertible {
    func toString(key: CodingKey, value: UInt64) -> String {
        return "\(value)"
    }

    func toString(key: CodingKey, value: UInt64) -> String? {
        return "\(value)"
    }
}

// MARK: Float转String
extension CustomConvertible {
    func toString(key: CodingKey, value: Float) -> String {
        return "\(value)"
    }

    func toString(key: CodingKey, value: Float) -> String? {
        return "\(value)"
    }
}

// MARK: Double转String
extension CustomConvertible {
    func toString(key: CodingKey, value: Double) -> String {
        return "\(value)"
    }

    func toString(key: CodingKey, value: Double) -> String? {
        return "\(value)"
    }
}
