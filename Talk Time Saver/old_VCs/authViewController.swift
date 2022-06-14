import UIKit
import Foundation
import UIKit


 

class authViewController: UIViewController {
    @IBOutlet weak var menu_bttn: UIBarButtonItem!

    @IBOutlet weak var pin_TEXT: UITextField!
    var iboNum = "";
    var password: String = "";
    var name = "";
    var em = "";
        @IBOutlet weak var ibo: UITextField!
        @IBOutlet weak var pass: UITextField!
    @IBOutlet weak var email: UITextField!

    
    
    @IBOutlet weak var caAccount: UIButton!
    @IBOutlet weak var loginButton: UIButton!
    
    
    var hasSetPointOrigin = false
    var pointOrigin: CGPoint?
    
    @IBOutlet weak var slideIdicator: UIView!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var subscribeButton: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        menu_clicked_class()

        
   
    }
    
    @IBAction func authenticate(_ sender: UIButton) {
        
        let defaults = UserDefaults.standard
        let pinTheUserCreated = defaults.string(forKey: "pin_user_created")
        
        
        if (pin_TEXT.text == pinTheUserCreated) {
            defaults.set("true", forKey: "authd")
            self.dismiss(animated: true) {
                self.pin_TEXT.text = ""
            }

        }else {
            let alert = UIAlertController(title: "Wrong PIN number", message: "The PIN number you entered is wrong. please try agaion.", preferredStyle: .alert)
                   alert.addAction(UIAlertAction(title: "Okay", style: .default, handler: nil))
               
                   self.present(alert, animated: true)
            pin_TEXT.text = ""
        }
        
        
    }
    override func viewDidLayoutSubviews() {
        if !hasSetPointOrigin {
            hasSetPointOrigin = true
            pointOrigin = self.view.frame.origin
        }
        
        self.setupToHideKeyboardOnTapOnView()
            
               
                let defaults = UserDefaults.standard
             
     
         
                      
    }
    
    
    @IBAction func menu_clicked(_ sender: UIBarButtonItem) {
        
      menu_clicked_class()
        
        
        
    }
    
    
    func menu_clicked_class() {
        menu_bttn.target = revealViewController()
        menu_bttn.action = #selector(SWRevealViewController.revealToggle(_:))
        view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
    }
    }


