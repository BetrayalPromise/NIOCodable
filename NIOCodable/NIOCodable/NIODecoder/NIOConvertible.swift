import Foundation

public protocol CustomConvertible {
    func toBool(key: AnyHashable, value: String) -> Bool
    func toBool(key: AnyHashable, value: String) -> Bool?
}

extension CustomConvertible {
    func toBool(key: AnyHashable, value: String) -> Bool {
        switch value.lowercased() {
        case "true", "yes": return true
        case "false", "no": return false
        default: return false
        }
    }
    
    func toBool(key: AnyHashable, value: String) -> Bool? {
        switch value.lowercased() {
        case "true", "yes": return true
        case "false", "no": return false
        default: return nil
        }
    }
}
