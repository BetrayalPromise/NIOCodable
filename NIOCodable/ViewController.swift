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
            var name: UInt8?
        }
        let data: Data = """
        [
        {"name": -20},
        ]
        """.data(using: String.Encoding.utf8) ?? Data()

        do {
            let decoder: JSONDecoder = JSONDecoder()
            let model = try decoder.decode([JSON].self, from: data)
            print(model)
        } catch {
            print(error)
        }

    }
}
