
import UIKit

class ViewController_A: UIViewController, someDelegate {

    @IBOutlet weak var lblTitle: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func click_Push(_ sender: Any) {
        self.performSegue(withIdentifier: "second", sender: nil)
    }
    
    func valueLable(update : String){
        self.lblTitle.text = update
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "second" {
            let destination = segue.destination as! ViewController_B
            destination.delegate = self
        }
    }
}
