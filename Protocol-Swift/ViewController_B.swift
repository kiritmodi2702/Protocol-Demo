
import UIKit

protocol someDelegate {
    func valueLable(update : String)
}

class ViewController_B: UIViewController , UITextFieldDelegate {
    var delegate : someDelegate! = nil
    @IBOutlet weak var txtField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    @IBAction func click_Pop(_ sender: Any) {
        if (txtField.text?.characters.count)! > 0 {
            delegate.valueLable(update: txtField.text!)
            self.navigationController?.popViewController(animated: true)

        }else{
            let alertC = UIAlertController(title: "Demo", message: "Please enter text in textField.", preferredStyle: UIAlertControllerStyle.alert)
            let action = UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil)
            alertC.addAction(action)
            self.present(alertC, animated: true, completion: nil)
        }
    }

}
