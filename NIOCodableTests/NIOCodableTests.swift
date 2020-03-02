import XCTest
@testable import NIOCodable

class NIOCodableTests: XCTestCase {

    override func setUp() {
        
    }

    override func tearDown() {
        
    }

    func testExample() {
        
    }

    func testPerformanceExample() {
        self.measure {
            
        }
    }
    
    /*
        Bool转化标准支持
        标准布尔值 (true false)
        字符串值 ("true" "false" "yes" "no") 及其大小写混合
        数值 只支持 0 == false 1 == true 其他均为 false
     */
    func testBool() {
        struct Example: Codable {
            var name: Bool
        }
        let data: Data = """
        [
        {"name": true},
        {"name": false},
        {"name": "true"},
        {"name": "false"},
        {"name": "yes"},
        {"name": "no"},
        {"name": 2},
        {"name": 1},
        {"name": 0},
        {"name": -1},
        {"name": -2},
        ]
        """.data(using: String.Encoding.utf8) ?? Data()
        let decoder = NIOJSONDecoder()
        do {
            let models: [Example]? = try decoder.decode(type: [Example].self, from: data)
            XCTAssert(models?[0].name == true)
            XCTAssert(models?[1].name == false)
            XCTAssert(models?[2].name == true)
            XCTAssert(models?[3].name == false)
            XCTAssert(models?[4].name == true)
            XCTAssert(models?[5].name == false)
            XCTAssert(models?[6].name == false)
            XCTAssert(models?[7].name == true)
            XCTAssert(models?[5].name == false)
            XCTAssert(models?[5].name == false)
            XCTAssert(models?[5].name == false)
        } catch {
            print(error)
        }
    }
    
    func testInt() {
        struct Example: Codable {
            var name: Int
        }
        let data: Data = """
        [
        {"name": true},
        {"name": false},
        {"name": "true"},
        {"name": "false"},
        {"name": "yes"},
        {"name": "no"},
        {"name": 2},
        {"name": 1},
        {"name": 0},
        {"name": -1},
        {"name": -2},
        ]
        """.data(using: String.Encoding.utf8) ?? Data()
        let decoder = NIOJSONDecoder()
        do {
            let models: [Example]? = try decoder.decode(type: [Example].self, from: data)
            XCTAssert(models?[0].name == 1)
            XCTAssert(models?[1].name == 0)
            XCTAssert(models?[2].name == 1)
            XCTAssert(models?[3].name == 0)
            XCTAssert(models?[4].name == 1)
            XCTAssert(models?[5].name == 0)
            XCTAssert(models?[6].name == 2)
            XCTAssert(models?[7].name == 1)
            XCTAssert(models?[8].name == 0)
            XCTAssert(models?[9].name == -1)
            XCTAssert(models?[10].name == -2)
        } catch {
            print(error)
        }
    }
    
    func testInt8() {
        struct Example: Codable {
            var name: Int8
        }
        let data: Data = """
        [
        {"name": true},
        {"name": false},
        {"name": "true"},
        {"name": "false"},
        {"name": "yes"},
        {"name": "no"},
        {"name": 2},
        {"name": 1},
        {"name": 0},
        {"name": -1},
        {"name": -2},
        ]
        """.data(using: String.Encoding.utf8) ?? Data()
        let decoder = NIOJSONDecoder()
        do {
            let models: [Example]? = try decoder.decode(type: [Example].self, from: data)
            XCTAssert(models?[0].name == 1)
            XCTAssert(models?[1].name == 0)
            XCTAssert(models?[2].name == 1)
            XCTAssert(models?[3].name == 0)
            XCTAssert(models?[4].name == 1)
            XCTAssert(models?[5].name == 0)
            XCTAssert(models?[6].name == 2)
            XCTAssert(models?[7].name == 1)
            XCTAssert(models?[8].name == 0)
            XCTAssert(models?[9].name == -1)
            XCTAssert(models?[10].name == -2)
        } catch {
            print(error)
        }
    }
    
    func testInt16() {
        struct Example: Codable {
            var name: Int16
        }
        let data: Data = """
        [
        {"name": true},
        {"name": false},
        {"name": "true"},
        {"name": "false"},
        {"name": "yes"},
        {"name": "no"},
        {"name": 2},
        {"name": 1},
        {"name": 0},
        {"name": -1},
        {"name": -2},
        ]
        """.data(using: String.Encoding.utf8) ?? Data()
        let decoder = NIOJSONDecoder()
        do {
            let models: [Example]? = try decoder.decode(type: [Example].self, from: data)
            XCTAssert(models?[0].name == 1)
            XCTAssert(models?[1].name == 0)
            XCTAssert(models?[2].name == 1)
            XCTAssert(models?[3].name == 0)
            XCTAssert(models?[4].name == 1)
            XCTAssert(models?[5].name == 0)
            XCTAssert(models?[6].name == 2)
            XCTAssert(models?[7].name == 1)
            XCTAssert(models?[8].name == 0)
            XCTAssert(models?[9].name == -1)
            XCTAssert(models?[10].name == -2)
        } catch {
            print(error)
        }
    }
    
    func testInt32() {
        struct Example: Codable {
            var name: Int32
        }
        let data: Data = """
        [
        {"name": true},
        {"name": false},
        {"name": "true"},
        {"name": "false"},
        {"name": "yes"},
        {"name": "no"},
        {"name": 2},
        {"name": 1},
        {"name": 0},
        {"name": -1},
        {"name": -2},
        ]
        """.data(using: String.Encoding.utf8) ?? Data()
        let decoder = NIOJSONDecoder()
        do {
            let models: [Example]? = try decoder.decode(type: [Example].self, from: data)
            XCTAssert(models?[0].name == 1)
            XCTAssert(models?[1].name == 0)
            XCTAssert(models?[2].name == 1)
            XCTAssert(models?[3].name == 0)
            XCTAssert(models?[4].name == 1)
            XCTAssert(models?[5].name == 0)
            XCTAssert(models?[6].name == 2)
            XCTAssert(models?[7].name == 1)
            XCTAssert(models?[8].name == 0)
            XCTAssert(models?[9].name == -1)
            XCTAssert(models?[10].name == -2)
        } catch {
            print(error)
        }
    }
    
    func testInt64() {
        struct Example: Codable {
            var name: Int64
        }
        let data: Data = """
        [
        {"name": true},
        {"name": false},
        {"name": "true"},
        {"name": "false"},
        {"name": "yes"},
        {"name": "no"},
        {"name": 2},
        {"name": 1},
        {"name": 0},
        {"name": -1},
        {"name": -2},
        ]
        """.data(using: String.Encoding.utf8) ?? Data()
        let decoder = NIOJSONDecoder()
        do {
            let models: [Example]? = try decoder.decode(type: [Example].self, from: data)
            XCTAssert(models?[0].name == 1)
            XCTAssert(models?[1].name == 0)
            XCTAssert(models?[2].name == 1)
            XCTAssert(models?[3].name == 0)
            XCTAssert(models?[4].name == 1)
            XCTAssert(models?[5].name == 0)
            XCTAssert(models?[6].name == 2)
            XCTAssert(models?[7].name == 1)
            XCTAssert(models?[8].name == 0)
            XCTAssert(models?[9].name == -1)
            XCTAssert(models?[10].name == -2)
        } catch {
            print(error)
        }
    }
    
    func testUInt() {
        struct Example: Codable {
            var name: UInt
        }
        let data: Data = """
        [
        {"name": true},
        {"name": false},
        {"name": "true"},
        {"name": "false"},
        {"name": "yes"},
        {"name": "no"},
        {"name": 2},
        {"name": 1},
        {"name": 0}
        ]
        """.data(using: String.Encoding.utf8) ?? Data()
        let decoder = NIOJSONDecoder()
        do {
            let models: [Example]? = try decoder.decode(type: [Example].self, from: data)
            XCTAssert(models?[0].name == 1)
            XCTAssert(models?[1].name == 0)
            XCTAssert(models?[2].name == 1)
            XCTAssert(models?[3].name == 0)
            XCTAssert(models?[4].name == 1)
            XCTAssert(models?[5].name == 0)
            XCTAssert(models?[6].name == 2)
            XCTAssert(models?[7].name == 1)
            XCTAssert(models?[8].name == 0)
//            XCTAssert(models?[9].name == UInt("-1"))
//            XCTAssert(models?[10].name == UInt("-2"))
        } catch {
            print(error)
        }
    }
    
    func testUInt8() {
        struct Example: Codable {
            var name: UInt8
        }
        let data: Data = """
        [
        {"name": true},
        {"name": false},
        {"name": "true"},
        {"name": "false"},
        {"name": "yes"},
        {"name": "no"},
        {"name": 2},
        {"name": 1},
        {"name": 0},
        ]
        """.data(using: String.Encoding.utf8) ?? Data()
        let decoder = NIOJSONDecoder()
        do {
            let models: [Example]? = try decoder.decode(type: [Example].self, from: data)
            XCTAssert(models?[0].name == 1)
            XCTAssert(models?[1].name == 0)
            XCTAssert(models?[2].name == 1)
            XCTAssert(models?[3].name == 0)
            XCTAssert(models?[4].name == 1)
            XCTAssert(models?[5].name == 0)
            XCTAssert(models?[6].name == 2)
            XCTAssert(models?[7].name == 1)
            XCTAssert(models?[8].name == 0)
//            XCTAssert(models?[9].name == UInt8("-1"))
//            XCTAssert(models?[10].name == UInt8("-2"))
        } catch {
            print(error)
        }
    }
    
    func testUInt16() {
        struct Example: Codable {
            var name: UInt16
        }
        let data: Data = """
        [
        {"name": true},
        {"name": false},
        {"name": "true"},
        {"name": "false"},
        {"name": "yes"},
        {"name": "no"},
        {"name": 2},
        {"name": 1},
        {"name": 0},
        ]
        """.data(using: String.Encoding.utf8) ?? Data()
        let decoder = NIOJSONDecoder()
        do {
            let models: [Example]? = try decoder.decode(type: [Example].self, from: data)
            XCTAssert(models?[0].name == 1)
            XCTAssert(models?[1].name == 0)
            XCTAssert(models?[2].name == 1)
            XCTAssert(models?[3].name == 0)
            XCTAssert(models?[4].name == 1)
            XCTAssert(models?[5].name == 0)
            XCTAssert(models?[6].name == 2)
            XCTAssert(models?[7].name == 1)
            XCTAssert(models?[8].name == 0)
            //            XCTAssert(models?[9].name == UInt8("-1"))
            //            XCTAssert(models?[10].name == UInt8("-2"))
        } catch {
            print(error)
        }
    }
    
    func testUInt32() {
        struct Example: Codable {
            var name: UInt32
        }
        let data: Data = """
        [
        {"name": true},
        {"name": false},
        {"name": "true"},
        {"name": "false"},
        {"name": "yes"},
        {"name": "no"},
        {"name": 2},
        {"name": 1},
        {"name": 0},
        ]
        """.data(using: String.Encoding.utf8) ?? Data()
        let decoder = NIOJSONDecoder()
        do {
            let models: [Example]? = try decoder.decode(type: [Example].self, from: data)
            XCTAssert(models?[0].name == 1)
            XCTAssert(models?[1].name == 0)
            XCTAssert(models?[2].name == 1)
            XCTAssert(models?[3].name == 0)
            XCTAssert(models?[4].name == 1)
            XCTAssert(models?[5].name == 0)
            XCTAssert(models?[6].name == 2)
            XCTAssert(models?[7].name == 1)
            XCTAssert(models?[8].name == 0)
            //            XCTAssert(models?[9].name == UInt8("-1"))
            //            XCTAssert(models?[10].name == UInt8("-2"))
        } catch {
            print(error)
        }
    }
    
    func testUInt64() {
        struct Example: Codable {
            var name: UInt64
        }
        let data: Data = """
        [
        {"name": true},
        {"name": false},
        {"name": "true"},
        {"name": "false"},
        {"name": "yes"},
        {"name": "no"},
        {"name": 2},
        {"name": 1},
        {"name": 0}
        ]
        """.data(using: String.Encoding.utf8) ?? Data()
        let decoder = NIOJSONDecoder()
        do {
            let models: [Example]? = try decoder.decode(type: [Example].self, from: data)
            XCTAssert(models?[0].name == 1)
            XCTAssert(models?[1].name == 0)
            XCTAssert(models?[2].name == 1)
            XCTAssert(models?[3].name == 0)
            XCTAssert(models?[4].name == 1)
            XCTAssert(models?[5].name == 0)
            XCTAssert(models?[6].name == 2)
            XCTAssert(models?[7].name == 1)
            XCTAssert(models?[8].name == 0)
        } catch {
            print(error)
        }
    }
    
    func testFloat() {
        struct Example: Codable {
            var name: Float
        }
        let data: Data = """
        [
        {"name": true},
        {"name": false},
        {"name": "true"},
        {"name": "false"},
        {"name": "yes"},
        {"name": "no"},
        {"name": 2},
        {"name": 1},
        {"name": 0},
        {"name": -1},
        {"name": -2},
        ]
        """.data(using: String.Encoding.utf8) ?? Data()
        let decoder = NIOJSONDecoder()
        do {
            let models: [Example]? = try decoder.decode(type: [Example].self, from: data)
            XCTAssert(models?[0].name == 1)
            XCTAssert(models?[1].name == 0)
            XCTAssert(models?[2].name == 1)
            XCTAssert(models?[3].name == 0)
            XCTAssert(models?[4].name == 1)
            XCTAssert(models?[5].name == 0)
            XCTAssert(models?[6].name == 2)
            XCTAssert(models?[7].name == 1)
            XCTAssert(models?[8].name == 0)
            XCTAssert(models?[9].name == -1)
            XCTAssert(models?[10].name == -2)
        } catch {
            print(error)
        }
    }
    
    func testDouble() {
        struct Example: Codable {
            var name: Double
        }
        let data: Data = """
        [
        {"name": true},
        {"name": false},
        {"name": "true"},
        {"name": "false"},
        {"name": "yes"},
        {"name": "no"},
        {"name": 2},
        {"name": 1},
        {"name": 0},
        {"name": -1},
        {"name": -2},
        ]
        """.data(using: String.Encoding.utf8) ?? Data()
        let decoder = NIOJSONDecoder()
        do {
            let models: [Example]? = try decoder.decode(type: [Example].self, from: data)
            XCTAssert(models?[0].name == 1)
            XCTAssert(models?[1].name == 0)
            XCTAssert(models?[2].name == 1)
            XCTAssert(models?[3].name == 0)
            XCTAssert(models?[4].name == 1)
            XCTAssert(models?[5].name == 0)
            XCTAssert(models?[6].name == 2)
            XCTAssert(models?[7].name == 1)
            XCTAssert(models?[8].name == 0)
            XCTAssert(models?[9].name == -1)
            XCTAssert(models?[10].name == -2)
        } catch {
            print(error)
        }
    }
    
    func testString() {
        struct Example: Codable {
            var name: String
        }
        let data: Data = """
        [
        {"name": 1},
        {"name": 0},
        ]
        """.data(using: String.Encoding.utf8) ?? Data()
        let decoder = NIOJSONDecoder()
        decoder.baseConvertNumericalStrategy = .useBoolean
        do {
            guard let models: [Example] = try decoder.decode(type: [Example].self, from: data) else { return }
            print(models[0].name)
            print(models[1].name)
            XCTAssert(models[0].name == "true")
            XCTAssert(models[1].name == "false")
        } catch {
            print(error)
        }
    }
    
    func testDictionary() {
        struct Example: Codable {
            var name: String
        }
        let data: Data = """
        {}
        """.data(using: String.Encoding.utf8) ?? Data()
        let decoder = NIOJSONDecoder()
        do {
            guard let model: Example = try decoder.decode(type: Example.self, from: data) else { return }
            XCTAssert(model.name == "")
        } catch {
            print(error)
        }
    }
    
    func testArray() {
        struct Example: Codable {
            var name: String
        }
        let data: Data = """
        [{"name": "2ddf"}, {"name": null}]
        """.data(using: String.Encoding.utf8) ?? Data()
        let decoder = NIOJSONDecoder()
        do {
            guard let models: [Example] = try decoder.decode(type: [Example].self, from: data) else { return }
            XCTAssert(models.count == 2)
        } catch {
            print(error)
        }
    }

    func testCustom0() {
        struct A: Codable {
            var a: [B?]
        }

        struct B: Codable {
            var gender: Gender?
        }

        enum Gender: Int, Codable {
            case male = 0
            case female = 1
            case unknow = 2
        }

        let data: Data = """
        {
         "a": [{"gender": 0}, {"gender": 1}, {"gender": 2}]
        }
        """.data(using: String.Encoding.utf8) ?? Data()
        let decoder = NIOJSONDecoder()
        do {
            guard let models: A = try decoder.decode(type: A.self, from: data) else { return }
            XCTAssert((models.a[0]?.gender ?? Gender.unknow) == Gender.male)
            XCTAssert((models.a[1]?.gender ?? Gender.unknow) == Gender.female)
            XCTAssert((models.a[2]?.gender ?? Gender.unknow) == Gender.unknow)
        } catch {
            print(error)
        }
    }

    func testCustom1() {
        struct A: Codable {
            var a: [B?]
        }

        struct B: Codable {
            var gender: Gender?
        }

        enum Gender: Int, Codable, CustomConvertible {
            typealias T = Int

            case male = 0
            case female = 1
            case unknow = 2

            func toType(value: Int) -> Gender.T {
                if value > 2 {
                    return Gender.unknow.rawValue
                } else {
                    return value
                }
            }
        }

        let data: Data = """
        {
         "a": [{"gender": 3.5}]
        }
        """.data(using: String.Encoding.utf8) ?? Data()
        let decoder = NIOJSONDecoder()
        do {
            guard let models: A = try decoder.decode(type: A.self, from: data) else { return }
            XCTAssert((models.a[0]?.gender ?? Gender.unknow) == Gender.unknow)
        } catch {
            print(error)
        }
    }
}
