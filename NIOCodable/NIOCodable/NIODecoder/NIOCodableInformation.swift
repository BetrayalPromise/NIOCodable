import Foundation

/// 自定义默认值
public struct BoxBaseValue {
    var bool: Bool = false

    var int: Int = 0
    var int8: Int8 = 0
    var int16: Int16 = 0
    var int32: Int32 = 0
    var int64: Int64 = 0

    var uint: UInt = 0
    var uint8: UInt8 = 0
    var uint16: UInt16 = 0
    var uint32: UInt32 = 0
    var uint64: UInt64 = 0

    var float: Float = 0.0
    var double: Double = 0.0

    var string: String = ""
}

extension Bool: Initalizable {
    public init(by key: CodingKey, path: NIOCodingPath, source: Any) {
        self.init()
    }
}

extension Int: Initalizable {
    public init(by key: CodingKey, path: NIOCodingPath, source: Any) {
        self.init()
    }
}

extension Int8: Initalizable {
    public init(by key: CodingKey, path: NIOCodingPath, source: Any) {
        self.init()
    }
}

extension Int16: Initalizable {
    public init(by key: CodingKey, path: NIOCodingPath, source: Any) {
        self.init()
    }
}

extension Int32: Initalizable {
    public init(by key: CodingKey, path: NIOCodingPath, source: Any) {
        self.init()
    }
}


extension Int64: Initalizable {
    public init(by key: CodingKey, path: NIOCodingPath, source: Any) {
        self.init()
    }
}

extension UInt: Initalizable {
    public init(by key: CodingKey, path: NIOCodingPath, source: Any) {
        self.init()
    }
}

extension UInt8: Initalizable {
    public init(by key: CodingKey, path: NIOCodingPath, source: Any) {
        self.init()
    }
}

extension UInt16: Initalizable {
    public init(by key: CodingKey, path: NIOCodingPath, source: Any) {
        self.init()
    }
}

extension UInt32: Initalizable {
    public init(by key: CodingKey, path: NIOCodingPath, source: Any) {
        self.init()
    }
}

extension UInt64: Initalizable {
    public init(by key: CodingKey, path: NIOCodingPath, source: Any) {
        self.init()
    }
}

extension Float: Initalizable {
    public init(by key: CodingKey, path: NIOCodingPath, source: Any) {
        self.init()
    }
}

extension Double: Initalizable {
    public init(by key: CodingKey, path: NIOCodingPath, source: Any) {
        self.init()
    }
}

extension String: Initalizable {
    public init(by key: CodingKey, path: NIOCodingPath, source: Any) {
        self.init()
    }
}
