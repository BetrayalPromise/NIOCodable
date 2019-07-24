import XCTest
@testable import NIOCodable

class NIOCodableTests: XCTestCase {

    override func setUp() {
        
    }

    override func tearDown() {
        
    }

    func testExample() {
        struct JSON: Codable {
            var name: Bool?
        }
        let data: Data = """
        {"name": "3a"}
        """.data(using: String.Encoding.utf8) ?? Data()
        
        do {
            let decoder = NIOJSONDecoder()
            let model: JSON = try decoder.decode(type: JSON.self, from: data)
            XCTAssert(model.name == false)
        } catch {
            print(error)
        }
    }

    func testPerformanceExample() {
        self.measure {
            
        }
    }

}
