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
        struct Example: Codable {
            var success: Bool
        }
        let data: Data = """
        [
        {"success": "xdffdadf"},
        {"success": "xdffdadf"},
        {"success": "xdffdadf"},
        {"success": "xdffdadf"},
        {"success": "xdffdadf"},
        ]
        """.data(using: String.Encoding.utf8) ?? Data()
        let decoder = NIOJSONDecoder()
        decoder.booleanStrategy = .useNumerical
        do {
            guard let model: [Example] = try decoder.decode(type: [Example].self, from: data) else { return }
            print(model)
        } catch {
            print(error)
        }
    }
}
