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
        struct Book: Decodable {
            var title: String
            var frontCover: BookCover?
            var backCover: BookCover?
        }
        
        struct BookCover: Decodable {
            var text: String
            var image: String?
            enum CodingKeys: String, CodingKey {
                case text
                case image
            }
        }
        
        let data: Data = """
        {
            "title": "Blah",
            "frontCover": {},
            "backCover": {
                "image": "", "text": "It's good, read it"
            }
        }
        """.data(using: String.Encoding.utf8) ?? Data()

        do {
            let decoder: NIOJSONDecoder = NIOJSONDecoder()
            let model = try decoder.decode(type: Book.self, from: data)
            print(model)
        } catch {
            print(error)
        }
    }
}
