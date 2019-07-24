import UIKit

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.white
        
        let button: UIButton = UIButton(frame: CGRect(x: 100, y: 100, width: 100, height: 50))
        self.view.addSubview(button)
        button.backgroundColor = UIColor.red
        button.addTarget(self, action: #selector(handle(button:)), for: UIControl.Event.touchUpInside)
    }
    
    @objc
    func handle(button: UIButton) {
        struct JSON: Codable {
            var name: Bool
        }
        let data: Data = """
        [{"name": "3a"}, {"name": "true"}]
        """.data(using: String.Encoding.utf8) ?? Data()
        
        do {
            let decoder: NIOJSONDecoder = NIOJSONDecoder()
            decoder.typeDecodingStrategy = .custom(self)
            let model = try decoder.decode(type: [JSON].self, from: data)
            print(model)
        } catch {
            print(error)
        }
    }
}

extension ViewController: CustomConvertible {
    func toBool(key: CodingKey, value: String) -> Bool {
        if value == "3a" {
            return true
        }
        return false
    }
}
