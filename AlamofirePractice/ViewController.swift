import UIKit
import Alamofire

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var searchTextField: UITextField!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func didTabSearchButton(_ sender: Any) {
        guard let search = searchTextField.text else { return }
        let url = "\(API.Base_URL)search/photos"
        
        // 파라미터 사용
        let queryParam = ["query" : search, "client_id" : API.CLIENT_ID]
        
//        AF.request(url, method: .get, parameters: queryParam).response(completionHandler: { response in debugPrint(response)})
        
        MyAlamofireManger.shared.session.request(url).responseString(completionHandler: { response in debugPrint(response) })
    }
    
}

