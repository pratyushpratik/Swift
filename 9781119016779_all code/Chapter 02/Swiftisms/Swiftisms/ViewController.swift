import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var button: UIButton!

    let strings = [
        "Swift is fun!",
        "I like Swift",
        "This app was written with Swift",
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        label.text = selectString()
    }

    func selectString() -> String {
        let idx = Int(arc4random_uniform(UInt32(strings.count)))
        return strings[idx]
    }

    @IBAction func buttonTapped(AnyObject) {
        let string = selectString()
        label.text = string
    }
}
