
import UIKit
import GameController

class Slingshot: NSObject {

    @IBOutlet weak var image: UIButton!
    
    override func awakeFromNib() {
        print("-------------------")
        let remote = GCController.controllers().first
        print(remote)
        remote?.microGamepad?.valueChangedHandler = { pad, pressed in
            print(pad)
        }

    }

}
