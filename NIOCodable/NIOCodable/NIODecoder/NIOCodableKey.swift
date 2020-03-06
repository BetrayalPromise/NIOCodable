import Foundation

struct NIOCodableKey: CodingKey {
    var stringValue: String

    init?(stringValue: String) {
        self.stringValue = stringValue
    }

    var intValue: Int?

    init?(intValue: Int) {
        self.stringValue = "\(intValue)"
        self.intValue = intValue
    }

    init(unkeyedIndex: Int) {
        self.stringValue = "unkeyedIndex \(unkeyedIndex)"
        self.intValue = unkeyedIndex
    }
}
