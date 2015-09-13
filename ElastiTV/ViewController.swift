
import UIKit
import TVServices
import ElasticityKit
import Artsy_UIFonts
import Representor

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        NSNotificationCenter.defaultCenter().postNotificationName(TVTopShelfItemsDidChangeNotification, object: nil)
        // Do any additional setup after loading the view, typically from a nib.

        let drive = ArtsyDrive(token: "Asdasd")

        drive.enter() { result in
            switch result {
            case .Success(let representor):
                print("The API has offered us the following transitions: \(representor.transitions)")

            case .Failure(let error):
                print("Unfortunately there was an error: \(error)")
            }
        }

    }

}

