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

// MARK: - Bool -
    // MARK: Bool -> Bool
    func testBoolToBool() {
        if true {
            let data: Data = """
            [true, false, null]
            """.data(using: String.Encoding.utf8) ?? Data()
            let decoder = NIOJSONDecoder()
            do {
                guard let models: [Bool?] = try decoder.decode(type: [Bool?].self, from: data) else {
                    XCTAssertNil(nil)
                    return
                }
                XCTAssertEqual(models[0], true)
                XCTAssertEqual(models[1], false)
                XCTAssertEqual(models[2], nil)
            } catch {
                XCTAssertNil(error, error.localizedDescription)
            }
        }
    }

    func testHandleBoolToBool() {
        if true {
            struct Adapter: TypeConvertible {
                func toBool(key: CodingKey, value: NSNull) -> Bool {
                    return true
                }
            }
            let data: Data = """
            [true, false, null]
            """.data(using: String.Encoding.utf8) ?? Data()
            let decoder = NIOJSONDecoder()
            decoder.convertTypeStrategy = .useCustom(Adapter())
            do {
                guard let models: [Bool?] = try decoder.decode(type: [Bool?].self, from: data) else {
                    XCTAssertNil(nil)
                    return
                }
                XCTAssertEqual(models[0], true)
                XCTAssertEqual(models[1], false)
                XCTAssertEqual(models[2], nil)
            } catch {
                XCTAssertNil(error, error.localizedDescription)
            }
        }
    }

    // MARK: - Number -> Bool
    /// 默认处理 数字映射 1为 true 非1为false
    func testNumberToBool() {
        let data: Data = """
        [0, 1, 2, 3, 4.5, 5.9, 100, 150, null]
        """.data(using: String.Encoding.utf8) ?? Data()
        let decoder = NIOJSONDecoder()
        do {
            guard let models: [Bool?] = try decoder.decode(type: [Bool?].self, from: data) else {
                XCTAssertNil(nil)
                return
            }
            XCTAssertEqual(models[0], false)
            XCTAssertEqual(models[1], true)
            XCTAssertEqual(models[2], false)
            XCTAssertEqual(models[3], false)
            XCTAssertEqual(models[4], false)
            XCTAssertEqual(models[5], false)
            XCTAssertEqual(models[6], false)
            XCTAssertEqual(models[7], false)
            XCTAssertEqual(models[8], nil)
        } catch {
            XCTAssertNil(error, error.localizedDescription)
        }
    }

    /// 自定义处理 数字映射 映射过程自定义
    /// !!! 注意浮点型解析"Float", "Double"都需处理 不然会有问题 !!!
    func testHandleNumberToBool() {
        /// 自定义的具体处理
        struct Adapter: TypeConvertible {
            func toBool(key: CodingKey, value: Int) -> Bool {
                if value == 100 {
                    return true
                }
                return false
            }
            func toBool(key: CodingKey, value: Float) -> Bool {
                if value == 5.9 {
                    return true
                }
                return false
            }
            func toBool(key: CodingKey, value: Double) -> Bool {
                if value == 5.9 {
                    return true
                }
                return false
            }
        }
        let data: Data = """
        [0, 1, 2, 3, 4.5, 5.9, 100, 150, null]
        """.data(using: String.Encoding.utf8) ?? Data()
        let decoder = NIOJSONDecoder()
        decoder.convertTypeStrategy = .useCustom(Adapter())
        do {
            guard let models: [Bool] = try decoder.decode(type: [Bool].self, from: data) else {
                XCTAssertNil(nil)
                return
            }
            XCTAssertEqual(models[0], false)
            XCTAssertEqual(models[1], false)
            XCTAssertEqual(models[2], false)
            XCTAssertEqual(models[3], false)
            XCTAssertEqual(models[4], false)
            XCTAssertEqual(models[5], true)
            XCTAssertEqual(models[6], true)
            XCTAssertEqual(models[7], false)
        } catch {
            XCTAssertNil(error, error.localizedDescription)
        }
    }

    // MARK: - String -> Bool
    // 默认为 "true" 映射为true, 其他为false
    func testStringToBool() {
        struct Adapter: TypeConvertible {
            func toBool(key: CodingKey, value: String) -> Bool {
                if value == "null" {
                    return true
                }
                return false
            }
        }
        let data: Data = """
        ["0", "1", "2", "3", "4.5", "5.9", "100", "150", "abc", "efg", "null", "true", "false"]
        """.data(using: String.Encoding.utf8) ?? Data()
        let decoder = NIOJSONDecoder()
        decoder.convertTypeStrategy = .useCustom(Adapter())
        do {
            guard let models: [Bool] = try decoder.decode(type: [Bool].self, from: data) else {
                XCTAssertNil(nil)
                return
            }
            XCTAssertEqual(models[0], false)
            XCTAssertEqual(models[1], false)
            XCTAssertEqual(models[2], false)
            XCTAssertEqual(models[3], false)
            XCTAssertEqual(models[4], false)
            XCTAssertEqual(models[5], false)
            XCTAssertEqual(models[6], false)
            XCTAssertEqual(models[7], false)
            XCTAssertEqual(models[8], false)
            XCTAssertEqual(models[9], false)
            XCTAssertEqual(models[10], true)
            XCTAssertEqual(models[11], false)
            XCTAssertEqual(models[12], false)
        } catch {
            XCTAssertNil(error, error.localizedDescription)
        }
    }

    func testHandleStringToBool() {
        let data: Data = """
        ["0", "1", "2", "3", "4.5", "5.9", "100", "150", "abc", "efg", "null", "true", "false"]
        """.data(using: String.Encoding.utf8) ?? Data()
        let decoder = NIOJSONDecoder()
        do {
            guard let models: [Bool] = try decoder.decode(type: [Bool].self, from: data) else {
                XCTAssertNil(nil)
                return
            }
            XCTAssertEqual(models[0], false)
            XCTAssertEqual(models[1], false)
            XCTAssertEqual(models[2], false)
            XCTAssertEqual(models[3], false)
            XCTAssertEqual(models[4], false)
            XCTAssertEqual(models[5], false)
            XCTAssertEqual(models[6], false)
            XCTAssertEqual(models[7], false)
            XCTAssertEqual(models[8], false)
            XCTAssertEqual(models[9], false)
            XCTAssertEqual(models[10], false)
            XCTAssertEqual(models[11], true)
            XCTAssertEqual(models[12], false)
        } catch {
            XCTAssertNil(error, error.localizedDescription)
        }
    }

// MARK: - Null -> Bool
    /// null默认为false
    func testNullToBool() {
        let data: Data = """
        [null, null, null]
        """.data(using: String.Encoding.utf8) ?? Data()
        let decoder = NIOJSONDecoder()
        do {
            guard let models: [Bool] = try decoder.decode(type: [Bool].self, from: data) else {
                XCTAssertNil(nil)
                return
            }
            XCTAssertEqual(models[0], false)
            XCTAssertEqual(models[1], false)
            XCTAssertEqual(models[2], false)
        } catch {
            XCTAssertNil(error, error.localizedDescription)
        }
    }

    func testHandleNullToBool() {
        struct Adapter: TypeConvertible {
            func toBool(key: CodingKey, value: NSNull) -> Bool {
                return true
            }
        }
        let data: Data = """
        [null, null, null]
        """.data(using: String.Encoding.utf8) ?? Data()
        let decoder = NIOJSONDecoder()
        decoder.convertTypeStrategy = .useCustom(Adapter())
        do {
            guard let models: [Bool] = try decoder.decode(type: [Bool].self, from: data) else {
                XCTAssertNil(nil)
                return
            }
            XCTAssertEqual(models[0], true)
            XCTAssertEqual(models[1], true)
            XCTAssertEqual(models[2], true)
        } catch {
            XCTAssertNil(error, error.localizedDescription)
        }
    }
    // MARK: - Array -> Bool
    /// 默认为false
    func testArrayToBool() {
        let data: Data = """
        [[], [], [], null]
        """.data(using: String.Encoding.utf8) ?? Data()
        let decoder = NIOJSONDecoder()
        decoder.valueNotFoundStrategy = .useDefaultable
        do {
            guard let models: [Bool] = try decoder.decode(type: [Bool].self, from: data) else {
                XCTAssertNil(nil)
                return
            }
            XCTAssertEqual(models[0], false)
            XCTAssertEqual(models[1], false)
            XCTAssertEqual(models[2], false)
            XCTAssertEqual(models[3], false)
        } catch {
            XCTAssertNil(error, error.localizedDescription)
        }
    }

    func testHandleArrayToBool() {
        struct Adapter: TypeConvertible {
            func toBool(key: CodingKey, value: NSNull) -> Bool {
                return true
            }
        }
        let data: Data = """
        [[], [], [], null]
        """.data(using: String.Encoding.utf8) ?? Data()
        let decoder = NIOJSONDecoder()
        decoder.valueNotFoundStrategy = .useDefaultable
        decoder.convertTypeStrategy = .useCustom(Adapter())
        do {
            guard let models: [Bool] = try decoder.decode(type: [Bool].self, from: data) else {
                XCTAssertNil(nil)
                return
            }
            XCTAssertEqual(models[0], false)
            XCTAssertEqual(models[1], false)
            XCTAssertEqual(models[2], false)
            XCTAssertEqual(models[3], true)
        } catch {
            XCTAssertNil(error, error.localizedDescription)
        }
    }

    // MARK: - Dictionary -> Bool
    /// 默认为false
    func testDictionaryToBool() {
        let data: Data = """
        [{}, {}, {}, null]
        """.data(using: String.Encoding.utf8) ?? Data()
        let decoder = NIOJSONDecoder()
        decoder.valueNotFoundStrategy = .useDefaultable
        do {
            guard let models: [Bool] = try decoder.decode(type: [Bool].self, from: data) else {
                XCTAssertNil(nil)
                return
            }
            XCTAssertEqual(models[0], false)
            XCTAssertEqual(models[1], false)
            XCTAssertEqual(models[2], false)
            XCTAssertEqual(models[3], false)
        } catch {
            XCTAssertNil(error, error.localizedDescription)
        }
    }

    func testHandleDictionaryToBool() {
          struct Adapter: TypeConvertible {
              func toBool(key: CodingKey, value: NSNull) -> Bool {
                  return true
              }
          }
          let data: Data = """
          [{}, {}, {}, null]
          """.data(using: String.Encoding.utf8) ?? Data()
          let decoder = NIOJSONDecoder()
          decoder.valueNotFoundStrategy = .useDefaultable
          decoder.convertTypeStrategy = .useCustom(Adapter())
          do {
              guard let models: [Bool] = try decoder.decode(type: [Bool].self, from: data) else {
                  XCTAssertNil(nil)
                  return
              }
              XCTAssertEqual(models[0], false)
              XCTAssertEqual(models[1], false)
              XCTAssertEqual(models[2], false)
              XCTAssertEqual(models[3], true)
          } catch {
              XCTAssertNil(error, error.localizedDescription)
          }
      }
// MARK: - Number -
    /// 默认true映射为1 false 映射为0
    func testBoolToInt() {
        let data: Data = """
        [true, false, 0, 1, 2]
        """.data(using: String.Encoding.utf8) ?? Data()
        let decoder = NIOJSONDecoder()
        do {
            guard let models: [Int] = try decoder.decode(type: [Int].self, from: data) else {
                XCTAssertNil(nil)
                return
            }
            XCTAssertEqual(models[0], 1)
            XCTAssertEqual(models[1], 0)
        } catch {
            XCTAssertNil(error, error.localizedDescription)
        }
    }

    func testHandleBoolToInt() {
        struct Adapter: TypeConvertible {
            func toInt(key: CodingKey, value: Bool) -> Int {
                if value {
                    return 0
                }
                return 1
            }
        }
        let data: Data = """
        [true, false, 0, 1, 2]
        """.data(using: String.Encoding.utf8) ?? Data()
        let decoder = NIOJSONDecoder()
        decoder.convertTypeStrategy = .useCustom(Adapter())
        do {
            guard let models: [Int] = try decoder.decode(type: [Int].self, from: data) else {
                XCTAssertNil(nil)
                return
            }
            XCTAssertEqual(models[0], 0)
            XCTAssertEqual(models[1], 1)
            XCTAssertEqual(models[2], 0)
            XCTAssertEqual(models[3], 1)
            XCTAssertEqual(models[4], 2)
        } catch {
            XCTAssertNil(error, error.localizedDescription)
        }
    }

    func testBoolToInt8() {
        let data: Data = """
        [true, false]
        """.data(using: String.Encoding.utf8) ?? Data()
        let decoder = NIOJSONDecoder()
        do {
            guard let models: [Int8] = try decoder.decode(type: [Int8].self, from: data) else {
                XCTAssertNil(nil)
                return
            }
            XCTAssertEqual(models[0], 1)
            XCTAssertEqual(models[1], 0)
        } catch {
            XCTAssertNil(error, error.localizedDescription)
        }
    }

    func testHandleBoolToInt8() {
        struct Adapter: TypeConvertible {
            func toInt(key: CodingKey, value: Bool) -> Int {
                if value {
                    return 0
                }
                return 1
            }
        }
        let data: Data = """
        [true, false]
        """.data(using: String.Encoding.utf8) ?? Data()
        let decoder = NIOJSONDecoder()
        decoder.convertTypeStrategy = .useCustom(Adapter())
        do {
            guard let models: [Int8] = try decoder.decode(type: [Int8].self, from: data) else {
                XCTAssertNil(nil)
                return
            }
            XCTAssertEqual(models[0], 0)
            XCTAssertEqual(models[1], 1)
        } catch {
            XCTAssertNil(error, error.localizedDescription)
        }
    }

    func testBoolToInt16() {
        let data: Data = """
        [true, false]
        """.data(using: String.Encoding.utf8) ?? Data()
        let decoder = NIOJSONDecoder()
        do {
            guard let models: [Int16] = try decoder.decode(type: [Int16].self, from: data) else {
                XCTAssertNil(nil)
                return
            }
            XCTAssertEqual(models[0], 1)
            XCTAssertEqual(models[1], 0)
        } catch {
            XCTAssertNil(error, error.localizedDescription)
        }
    }

    func testHandleBoolToInt16() {
        struct Adapter: TypeConvertible {
            func toInt16(key: CodingKey, value: Bool) -> Int {
                if value {
                    return 0
                }
                return 1
            }
        }
        let data: Data = """
        [true, false]
        """.data(using: String.Encoding.utf8) ?? Data()
        let decoder = NIOJSONDecoder()
        decoder.convertTypeStrategy = .useCustom(Adapter())
        do {
            guard let models: [Int16] = try decoder.decode(type: [Int16].self, from: data) else {
                XCTAssertNil(nil)
                return
            }
            XCTAssertEqual(models[0], 0)
            XCTAssertEqual(models[1], 1)
        } catch {
            XCTAssertNil(error, error.localizedDescription)
        }
    }

    func testBoolToInt32() {
        let data: Data = """
        [true, false]
        """.data(using: String.Encoding.utf8) ?? Data()
        let decoder = NIOJSONDecoder()
        do {
            guard let models: [Int32] = try decoder.decode(type: [Int32].self, from: data) else {
                XCTAssertNil(nil)
                return
            }
            XCTAssertEqual(models[0], 1)
            XCTAssertEqual(models[1], 0)
        } catch {
            XCTAssertNil(error, error.localizedDescription)
        }
    }

    func testHandleBoolToInt32() {
        struct Adapter: TypeConvertible {
            func toInt32(key: CodingKey, value: Bool) -> Int32 {
                if value {
                    return 0
                }
                return 1
            }
        }
        let data: Data = """
        [true, false]
        """.data(using: String.Encoding.utf8) ?? Data()
        let decoder = NIOJSONDecoder()
        decoder.convertTypeStrategy = .useCustom(Adapter())
        do {
            guard let models: [Int32] = try decoder.decode(type: [Int32].self, from: data) else {
                XCTAssertNil(nil)
                return
            }
            XCTAssertEqual(models[0], 0)
            XCTAssertEqual(models[1], 1)
        } catch {
            XCTAssertNil(error, error.localizedDescription)
        }
    }

    func testBoolToInt64() {
        let data: Data = """
        [true, false]
        """.data(using: String.Encoding.utf8) ?? Data()
        let decoder = NIOJSONDecoder()
        do {
            guard let models: [Int64] = try decoder.decode(type: [Int64].self, from: data) else {
                XCTAssertNil(nil)
                return
            }
            XCTAssertEqual(models[0], 1)
            XCTAssertEqual(models[1], 0)
        } catch {
            XCTAssertNil(error, error.localizedDescription)
        }
    }

    func testHandleBoolToInt64() {
        struct Adapter: TypeConvertible {
            func toInt64(key: CodingKey, value: Bool) -> Int64 {
                if value {
                    return 0
                }
                return 1
            }
        }
        let data: Data = """
        [true, false]
        """.data(using: String.Encoding.utf8) ?? Data()
        let decoder = NIOJSONDecoder()
        decoder.convertTypeStrategy = .useCustom(Adapter())
        do {
            guard let models: [Int64] = try decoder.decode(type: [Int64].self, from: data) else {
                XCTAssertNil(nil)
                return
            }
            XCTAssertEqual(models[0], 0)
            XCTAssertEqual(models[1], 1)
        } catch {
            XCTAssertNil(error, error.localizedDescription)
        }
    }

    func testBoolToUInt() {
        let data: Data = """
        [true, false]
        """.data(using: String.Encoding.utf8) ?? Data()
        let decoder = NIOJSONDecoder()
        do {
            guard let models: [UInt] = try decoder.decode(type: [UInt].self, from: data) else {
                XCTAssertNil(nil)
                return
            }
            XCTAssertEqual(models[0], 1)
            XCTAssertEqual(models[1], 0)
        } catch {
            XCTAssertNil(error, error.localizedDescription)
        }
    }

    func testHandleBoolToUInt() {
        struct Adapter: TypeConvertible {
            func toUInt(key: CodingKey, value: Bool) -> UInt {
                if value {
                    return 0
                }
                return 1
            }
        }
        let data: Data = """
        [true, false]
        """.data(using: String.Encoding.utf8) ?? Data()
        let decoder = NIOJSONDecoder()
        decoder.convertTypeStrategy = .useCustom(Adapter())
        do {
            guard let models: [UInt] = try decoder.decode(type: [UInt].self, from: data) else {
                XCTAssertNil(nil)
                return
            }
            XCTAssertEqual(models[0], 0)
            XCTAssertEqual(models[1], 1)
        } catch {
            XCTAssertNil(error, error.localizedDescription)
        }
    }

    func testBoolToUInt8() {
        let data: Data = """
        [true, false]
        """.data(using: String.Encoding.utf8) ?? Data()
        let decoder = NIOJSONDecoder()
        do {
            guard let models: [UInt8] = try decoder.decode(type: [UInt8].self, from: data) else {
                XCTAssertNil(nil)
                return
            }
            XCTAssertEqual(models[0], 1)
            XCTAssertEqual(models[1], 0)
        } catch {
            XCTAssertNil(error, error.localizedDescription)
        }
    }

    func testHandleBoolToUInt8() {
         struct Adapter: TypeConvertible {
            func toUInt8(key: CodingKey, value: Bool) -> UInt8 {
                if value {
                    return 0
                }
                return 1
            }
         }
         let data: Data = """
         [true, false]
         """.data(using: String.Encoding.utf8) ?? Data()
         let decoder = NIOJSONDecoder()
         decoder.convertTypeStrategy = .useCustom(Adapter())
         do {
             guard let models: [UInt8] = try decoder.decode(type: [UInt8].self, from: data) else {
                 XCTAssertNil(nil)
                 return
             }
             XCTAssertEqual(models[0], 0)
             XCTAssertEqual(models[1], 1)
         } catch {
             XCTAssertNil(error, error.localizedDescription)
         }
     }

    func testBoolToUInt16() {
        let data: Data = """
        [true, false]
        """.data(using: String.Encoding.utf8) ?? Data()
        let decoder = NIOJSONDecoder()
        do {
            guard let models: [UInt16] = try decoder.decode(type: [UInt16].self, from: data) else {
                XCTAssertNil(nil)
                return
            }
            XCTAssertEqual(models[0], 1)
            XCTAssertEqual(models[1], 0)
        } catch {
            XCTAssertNil(error, error.localizedDescription)
        }
    }

    func testHandleBoolToUInt16() {
         struct Adapter: TypeConvertible {
            func toUInt16(key: CodingKey, value: Bool) -> UInt16 {
                if value {
                    return 0
                }
                return 1
            }
         }
         let data: Data = """
         [true, false]
         """.data(using: String.Encoding.utf8) ?? Data()
         let decoder = NIOJSONDecoder()
         decoder.convertTypeStrategy = .useCustom(Adapter())
         do {
             guard let models: [UInt16] = try decoder.decode(type: [UInt16].self, from: data) else {
                 XCTAssertNil(nil)
                 return
             }
             XCTAssertEqual(models[0], 0)
             XCTAssertEqual(models[1], 1)
         } catch {
             XCTAssertNil(error, error.localizedDescription)
         }
     }

    func testBoolToUInt32() {
        let data: Data = """
        [true, false]
        """.data(using: String.Encoding.utf8) ?? Data()
        let decoder = NIOJSONDecoder()
        do {
            guard let models: [UInt32] = try decoder.decode(type: [UInt32].self, from: data) else {
                XCTAssertNil(nil)
                return
            }
            XCTAssertEqual(models[0], 1)
            XCTAssertEqual(models[1], 0)
        } catch {
            XCTAssertNil(error, error.localizedDescription)
        }
    }

    func testHandleBoolToUInt32() {
         struct Adapter: TypeConvertible {
            func toUInt32(key: CodingKey, value: Bool) -> UInt32 {
                if value {
                    return 0
                }
                return 1
            }
         }
         let data: Data = """
         [true, false]
         """.data(using: String.Encoding.utf8) ?? Data()
         let decoder = NIOJSONDecoder()
         decoder.convertTypeStrategy = .useCustom(Adapter())
         do {
             guard let models: [UInt32] = try decoder.decode(type: [UInt32].self, from: data) else {
                 XCTAssertNil(nil)
                 return
             }
             XCTAssertEqual(models[0], 0)
             XCTAssertEqual(models[1], 1)
         } catch {
             XCTAssertNil(error, error.localizedDescription)
         }
     }

    func testBoolToUInt64() {
        let data: Data = """
        [true, false]
        """.data(using: String.Encoding.utf8) ?? Data()
        let decoder = NIOJSONDecoder()
        do {
            guard let models: [UInt64] = try decoder.decode(type: [UInt64].self, from: data) else {
                XCTAssertNil(nil)
                return
            }
            XCTAssertEqual(models[0], 1)
            XCTAssertEqual(models[1], 0)
        } catch {
            XCTAssertNil(error, error.localizedDescription)
        }
    }

    func testHandleBoolToUInt64() {
         struct Adapter: TypeConvertible {
            func toUInt64(key: CodingKey, value: Bool) -> UInt64 {
                if value {
                    return 0
                }
                return 1
            }
         }
         let data: Data = """
         [true, false]
         """.data(using: String.Encoding.utf8) ?? Data()
         let decoder = NIOJSONDecoder()
         decoder.convertTypeStrategy = .useCustom(Adapter())
         do {
             guard let models: [UInt64] = try decoder.decode(type: [UInt64].self, from: data) else {
                 XCTAssertNil(nil)
                 return
             }
             XCTAssertEqual(models[0], 0)
             XCTAssertEqual(models[1], 1)
         } catch {
             XCTAssertNil(error, error.localizedDescription)
         }
     }

    func testBoolToFloat() {
          let data: Data = """
          [true, false]
          """.data(using: String.Encoding.utf8) ?? Data()
          let decoder = NIOJSONDecoder()
          do {
              guard let models: [Float] = try decoder.decode(type: [Float].self, from: data) else {
                  XCTAssertNil(nil)
                  return
              }
              XCTAssertEqual(models[0], 1)
              XCTAssertEqual(models[1], 0)
          } catch {
              XCTAssertNil(error, error.localizedDescription)
          }
      }

      func testHandleBoolToFloat() {
           struct Adapter: TypeConvertible {
            func toFloat(key: CodingKey, value: Bool) -> Float {
                  if value {
                      return 0
                  }
                  return 1
              }
           }
           let data: Data = """
           [true, false]
           """.data(using: String.Encoding.utf8) ?? Data()
           let decoder = NIOJSONDecoder()
           decoder.convertTypeStrategy = .useCustom(Adapter())
           do {
               guard let models: [Float] = try decoder.decode(type: [Float].self, from: data) else {
                   XCTAssertNil(nil)
                   return
               }
               XCTAssertEqual(models[0], 0)
               XCTAssertEqual(models[1], 1)
           } catch {
               XCTAssertNil(error, error.localizedDescription)
           }
       }

    func testBoolToDouble() {
          let data: Data = """
          [true, false]
          """.data(using: String.Encoding.utf8) ?? Data()
          let decoder = NIOJSONDecoder()
          do {
              guard let models: [Double] = try decoder.decode(type: [Double].self, from: data) else {
                  XCTAssertNil(nil)
                  return
              }
              XCTAssertEqual(models[0], 1)
              XCTAssertEqual(models[1], 0)
          } catch {
              XCTAssertNil(error, error.localizedDescription)
          }
      }

      func testHandleBoolToDouble() {
           struct Adapter: TypeConvertible {
            func toDouble(key: CodingKey, value: Bool) -> Double {
                  if value {
                      return 0
                  }
                  return 1
              }
           }
           let data: Data = """
           [true, false]
           """.data(using: String.Encoding.utf8) ?? Data()
           let decoder = NIOJSONDecoder()
           decoder.convertTypeStrategy = .useCustom(Adapter())
           do {
               guard let models: [Double] = try decoder.decode(type: [Double].self, from: data) else {
                   XCTAssertNil(nil)
                   return
               }
               XCTAssertEqual(models[0], 0)
               XCTAssertEqual(models[1], 1)
           } catch {
               XCTAssertNil(error, error.localizedDescription)
           }
       }

    func testBoolToString() {
          let data: Data = """
          [true, false]
          """.data(using: String.Encoding.utf8) ?? Data()
          let decoder = NIOJSONDecoder()
          do {
              guard let models: [String] = try decoder.decode(type: [String].self, from: data) else {
                  XCTAssertNil(nil)
                  return
              }
              XCTAssertEqual(models[0], "true")
              XCTAssertEqual(models[1], "false")
          } catch {
              XCTAssertNil(error, error.localizedDescription)
          }
      }

      func testHandleBoolToString() {
           struct Adapter: TypeConvertible {
                func toString(key: CodingKey, value: Bool) -> String {
                    if value {
                        return "1"
                    }
                    return "0"
                }
           }
           let data: Data = """
           [true, false]
           """.data(using: String.Encoding.utf8) ?? Data()
           let decoder = NIOJSONDecoder()
           decoder.convertTypeStrategy = .useCustom(Adapter())
           do {
               guard let models: [String] = try decoder.decode(type: [String].self, from: data) else {
                   XCTAssertNil(nil)
                   return
               }
               XCTAssertEqual(models[0], "1")
               XCTAssertEqual(models[1], "0")
           } catch {
               XCTAssertNil(error, error.localizedDescription)
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
        {"name": null}
        ]
        """.data(using: String.Encoding.utf8) ?? Data()
        let decoder = NIOJSONDecoder()
        do {
            let models: [Example]? = try decoder.decode(type: [Example].self, from: data)
            XCTAssertEqual(models?[0].name, 1)
            XCTAssertEqual(models?[1].name, 0)
            XCTAssertEqual(models?[2].name, 1)
            XCTAssertEqual(models?[3].name, 0)
            XCTAssertEqual(models?[4].name, 1)
            XCTAssertEqual(models?[5].name, 0)
            XCTAssertEqual(models?[6].name, 2)
            XCTAssertEqual(models?[7].name, 1)
            XCTAssertEqual(models?[8].name, 0)
            XCTAssertEqual(models?[9].name, -1)
            XCTAssertEqual(models?[10].name, -2)
            XCTAssertEqual(models?[11].name, 0)
        } catch {
            XCTAssertNil(error, error.localizedDescription)
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
            XCTAssertNil(error, error.localizedDescription)
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
            XCTAssertNil(error, error.localizedDescription)
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
            XCTAssertNil(error, error.localizedDescription)
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
            XCTAssertNil(error, error.localizedDescription)
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
            XCTAssertNil(error, error.localizedDescription)
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
            XCTAssertNil(error, error.localizedDescription)
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
            XCTAssertNil(error, error.localizedDescription)
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
            XCTAssertNil(error, error.localizedDescription)
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
            XCTAssertNil(error, error.localizedDescription)
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
            XCTAssertNil(error, error.localizedDescription)
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
            XCTAssertNil(error, error.localizedDescription)
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
        do {
            guard let models: [Example] = try decoder.decode(type: [Example].self, from: data) else { return }
            print(models[0].name)
            print(models[1].name)
            XCTAssert(models[0].name == "true")
            XCTAssert(models[1].name == "false")
        } catch {
            XCTAssertNil(error, error.localizedDescription)
        }
    }
    
    func testDictionary0() {
        struct Example: Codable {
            var name: String
        }
        let data: Data = """
        {}
        """.data(using: String.Encoding.utf8) ?? Data()
        let decoder = NIOJSONDecoder()
        decoder.containerStrategy = .useNull
        do {
            let model: Example? = try decoder.decode(type: Example.self, from: data)
            XCTAssert(model == nil)
        } catch {
            XCTAssertNil(error, error.localizedDescription)
        }
    }

    func testDictionary1() {
        let data: Data = """
        {"key": [{"info": "b"}]}
        """.data(using: String.Encoding.utf8) ?? Data()

        class ESRootClass: Codable {
            var key: [Key]?
        }

        class Key: Codable {
            var info: String?
        }
        let decoder = NIOJSONDecoder()
        decoder.containerStrategy = .useNull
        do {
            let model: ESRootClass? = try decoder.decode(type: ESRootClass.self, from: data)
            XCTAssert(model?.key != nil)
            XCTAssert(model?.key?[0].info == "b")
        } catch {
            XCTAssertNil(error, error.localizedDescription)
        }
    }

    func testDictionary2() {
        let data: Data = """
        {"key": {"key": {"key": "key"}}}
        """.data(using: String.Encoding.utf8) ?? Data()
        let decoder = NIOJSONDecoder()
        decoder.containerStrategy = .useNull

        class ESRootClass: Codable {
            var key: Key0?
            enum CodingKeys: String, CodingKey {
                case key = "key"
            }
        }
        class Key0: Codable {
            var key: Key1?
        }
        class Key1: Codable {
            var key: String?
        }
        do {
            let model: ESRootClass? = try decoder.decode(type: ESRootClass.self, from: data)
            XCTAssert(model?.key?.key?.key == "key")
        } catch {
            XCTAssertNil(error, error.localizedDescription)
        }
    }
    
    func testArray0() {
        struct Example: Codable {
            var name: String
        }
        let data: Data = """
        [{"namef": "2ddf"}, {"namef": null}]
        """.data(using: String.Encoding.utf8) ?? Data()
        let decoder = NIOJSONDecoder()
        do {
            guard let models: [Example] = try decoder.decode(type: [Example].self, from: data) else { return }
            XCTAssert(models.count == 2)
        } catch {
            XCTAssertNil(error, error.localizedDescription)
        }
    }

    func testArray1() {
        struct Example: Codable {
            var name: Int64
        }
        let data: Data = """
        [
        ]
        """.data(using: String.Encoding.utf8) ?? Data()
        let decoder = NIOJSONDecoder()
        decoder.containerStrategy = .useEmpty
        do {
            let models: [Example]? = try decoder.decode(type: [Example].self, from: data)
            XCTAssert(models?.count == 0)
        } catch {
            XCTAssertNil(error, error.localizedDescription)
        }
    }

    func testArray2() {
        let data: Data = """
        [
            true, false
        ]
        """.data(using: String.Encoding.utf8) ?? Data()
        let decoder = NIOJSONDecoder()
        decoder.containerStrategy = .useNull
        do {
            guard let models: [Bool] = try decoder.decode(type: [Bool].self, from: data) else {
                XCTAssert(false)
                return
            }
            XCTAssert(models.count == 2)
            XCTAssert(models[0] == true)
        } catch {
            XCTAssertNil(error, error.localizedDescription)
        }
    }

    func testArray3() {
        let data: Data = """
        {
            "a": [{"b": "c"}]
        }
        """.data(using: String.Encoding.utf8) ?? Data()

        class ESRootClass: Codable {
            var a: [A]?
        }
        class A: Codable {
            var b: String?
        }

        let decoder = NIOJSONDecoder()
        decoder.containerStrategy = .useNull
        do {
            guard let models: ESRootClass = try decoder.decode(type: ESRootClass.self, from: data) else {
                XCTAssert(false)
                return
            }
            XCTAssert(models.a?.count == 1)
            XCTAssert(models.a?[0].b == "c")
        } catch {
            XCTAssertNil(error, error.localizedDescription)
        }
    }

    func testArray4() {
            let data: Data = """
            [[
            {"name": true}
            ]]
            """.data(using: String.Encoding.utf8) ?? Data()

            class ESRootClass: Codable {
                var a: [[A]]
            }
            class A: Codable {
                var name: String?
            }

            let decoder = NIOJSONDecoder()
            decoder.containerStrategy = .useNull
            do {
                guard let models: ESRootClass = try decoder.decode(type: ESRootClass.self, from: data) else {
                    XCTAssert(false)
                    return
                }
                XCTAssert(models.a.count == 1)
                XCTAssert(models.a[0][0].name == "true")
            } catch {
                XCTAssertNil(error, error.localizedDescription)
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
            XCTAssertNil(error, error.localizedDescription)
        }
    }
    // 测试范围不一致
    func testCustom1() {
        struct Adapter: MappingControllable {
            func scope(key: CodingKey) -> Set<AnyHashable> {
                return [0, 1, 2]
            }

            func execption(key: CodingKey, source: AnyHashable) -> AnyHashable {
                return 2
            }
        }
        
        struct Human: Codable {
            var gender: Gender?
        }
        enum Gender: Int, Codable {
            case male = 0
            case female = 1
            case unknow = 2

            enum CodingKeys: CodingKey {
                case male
                case female
                case unknow
            }
        }

        let data: Data = """
         {"gender": 4}
        """.data(using: String.Encoding.utf8) ?? Data()
        let decoder: NIOJSONDecoder = NIOJSONDecoder()
        decoder.mappingStrategy = .useCustom(Adapter())
        do {
            guard let models: Human = try decoder.decode(type: Human.self, from: data) else { return }
            XCTAssert(models.gender == Gender.unknow)
        } catch {
            XCTAssertNil(error, error.localizedDescription)
        }
    }

    // 测试类型不一致
    func testCustom2() {
        struct Human: Codable {
            var gender: Gender?
        }

        enum Gender: Int, Codable, TypeConvertible {
            case male = 0
            case female = 1
            case unknow = 2
            enum CodingKeys: CodingKey {
                case male
                case female
                case unknow
            }

            func toInt(key: CodingKey, value: Double) -> Int {
                print(value)
                return 2
            }
        }

        let data: Data = """
         {"gender": 3.5}
        """.data(using: String.Encoding.utf8) ?? Data()
        let decoder: NIOJSONDecoder = NIOJSONDecoder()
        decoder.convertTypeStrategy = .useCustom(Gender.male)
        do {
            guard let models: Human = try decoder.decode(type: Human.self, from: data) else { return }
            XCTAssert(models.gender == Gender.unknow)
        } catch {
            XCTAssertNil(error, error.localizedDescription)
        }
    }

    /// 继承问题
    func testCustom3()  {
        class Wine: Codable {
            var abv: Float?
        }
        class Beer: Wine {
            var name: String?
            var brewery: String?
            enum CodingKeys: String, CodingKey {
                case name
                case brewery
            }

            required init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                self.name = try container.decode(String.self, forKey: .name)
                self.brewery = try container.decode(String.self, forKey: .brewery)
                try super.init(from: decoder)
            }
        }

        let jsonDic = ["name": "beer", "brewery": "100", "abv": 10.0] as [String : Any]

        let jsonData = try! JSONSerialization.data(withJSONObject: jsonDic, options: .prettyPrinted)
        let decode = NIOJSONDecoder()
        do {
            let beer = try decode.decode(type: Beer.self, from: jsonData)
            print("解析成功:\(beer.debugDescription)")
        } catch  {
            XCTAssertNil(error, error.localizedDescription)
        }
    }

    func testCustom4() {
        enum Level: String, Codable {
            case large
            case medium
            case small
        }

        struct Location: Codable {
            let latitude: Double
            let longitude: Double
        }

        // CustomDebugStringConvertible只是为了更好打印
        class City: Codable, CustomDebugStringConvertible {
            let name: String
            let pop: UInt
            let level: Level
            let location: Location

            /// 计算属性不参与codable过程
            var debugDescription: String {
                return """
                {
                    "name": \(name),
                    "pop": \(pop),
                    "level": \(level.rawValue),
                    "location": {
                        "latitude": \(location.latitude),
                        "longitude": \(location.longitude)
                    }
                }
                """
            }
        }

        let jsonData = """
                {
                "name": "Shanghai",
                "pop": 21000000,
                "level": "large",
                "location": {
                  "latitude": 30.40,
                  "longitude": 120.51
                }
                }
                """.data(using: .utf8)!
        do {
            let city = try JSONDecoder().decode(City.self, from: jsonData)
            print("city:", city)
        } catch {
            XCTAssertNil(error, error.localizedDescription)
        }
    }

    func testCustom5() {

    }

    func testNull() {
        let data: Data = """
          {
            "array": "null"
          }
          """.data(using: String.Encoding.utf8) ?? Data()

        class ESRootClass: Codable {
            var array: [List]?
        }

        class List: Codable {
            var a: String?
        }

        let decoder = NIOJSONDecoder()
        decoder.containerStrategy = .useEmpty
        do {
            guard let models: ESRootClass = try decoder.decode(type: ESRootClass.self, from: data) else { return }
            print(models)
            XCTAssert(models.array != nil)
        } catch {
            XCTAssertNil(error, error.localizedDescription)
        }
    }

    func testKeyNoFound0() {
        let data: Data = """
            {"key": "abc"}
        """.data(using: String.Encoding.utf8) ?? Data()

        class Root: Codable {
            var array: String?
        }

        let decoder = NIOJSONDecoder()
        decoder.containerStrategy = .useEmpty
        decoder.keyNotFoundStrategy = .useNull
        do {
            guard let models: Root = try decoder.decode(type: Root.self, from: data) else { return }
            print(models)
            XCTAssert(models.array == nil)
        } catch {
            XCTAssertNil(error, error.localizedDescription)
        }
    }

    func testKeyNoFound1() {
        struct Human: Codable {
            var gender: Gender
        }

        enum Gender: String, Codable {
            case male
            case female
        }

        let data: Data = """
         {"gendergender": "male"}
        """.data(using: String.Encoding.utf8) ?? Data()
        let decoder: NIOJSONDecoder = NIOJSONDecoder()
        do {
            guard let models: Human = try decoder.decode(type: Human.self, from: data) else { return }
            XCTAssert(models.gender.rawValue == "male")
        } catch {
            XCTAssertNil(error, error.localizedDescription)
        }
    }

    func testKeyNoFound2() {
        struct Root: Codable {
            let lastName: String
            let firstName: String
        }
        let data: Data = """
         {
             "firstNameM": "John",
             "lastNameM": "Smith"
         }
        """.data(using: String.Encoding.utf8) ?? Data()
        let decoder: NIOJSONDecoder = NIOJSONDecoder()
        decoder.keyNotFoundStrategy = .useDefaultable
        do {
            guard let model: Root = try decoder.decode(type: Root.self, from: data) else {
                XCTAssertNil(nil)
                return
            }
            XCTAssertEqual(model.firstName, "")
        } catch {
            XCTAssertNil(error, error.localizedDescription)
        }
    }
}
