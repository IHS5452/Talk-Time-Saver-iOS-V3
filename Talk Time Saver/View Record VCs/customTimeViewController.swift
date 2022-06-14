//
//  customTimeViewController.swift
//  Talk Time Saver
//
//  Created by Ian Schrauth on 6/14/22.
//customTimeViewController


import Foundation


class customTimeViewController: UIViewController, UIViewControllerTransitioningDelegate {
    

    @IBOutlet weak var menu_bttn: UIBarButtonItem!
    

override func viewDidLoad() {
    super.viewDidLoad()
    menu_clicked_class()
    
}
    
    @IBAction func menu_clicked(_ sender: UIBarButtonItem) {
        
      menu_clicked_class()
        
        
        
    }
    
    
    func menu_clicked_class() {
        menu_bttn.target = revealViewController()
        menu_bttn.action = #selector(SWRevealViewController.revealToggle(_:))
        view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
    }
    @IBOutlet weak var sec_TF: UITextField!
    @IBOutlet weak var min_TF: UITextField!
    @IBOutlet weak var hr_TF: UITextField!
    
    
    
    @IBOutlet weak var caAccount: UIButton!
    @IBOutlet weak var loginButton: UIButton!
    
    
    var hasSetPointOrigin = false
    var pointOrigin: CGPoint?
    
    @IBOutlet weak var slideIdicator: UIView!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var subscribeButton: UIView!
  
    
    @IBAction func dismiss_clicked(_ sender: UIButton) {
        
        
        dismiss(animated: true, completion: nil)
        
        
    }
    
    
    
    @IBAction func add_to_total(_ sender: UIButton) {
        var time_input = time()
        var ta = actions()
        
        var hrr = Int(hr_TF.text ?? "") ?? 0
        var min = Int(min_TF.text ?? "") ?? 0
        var sec = Int(sec_TF.text ?? "") ?? 0

    
        
        
        
        time_input.setHour(input: hrr)
        time_input.setMin(input: min)
        time_input.setSec(input: sec)



        
        dismiss(animated: true) {
            ta.saveToArray(h_m_s: "h")
            ta.saveToArray(h_m_s: "m")
            ta.saveToArray(h_m_s: "s")
            
            
            NotificationCenter.default.post(name: NSNotification.Name(rawValue: "load"), object: nil)

        }
         


   
        
        
      
    
}
    

    
    override func viewDidLayoutSubviews() {
        if !hasSetPointOrigin {
            hasSetPointOrigin = true
            pointOrigin = self.view.frame.origin
        }
        
        self.setupToHideKeyboardOnTapOnView()
            
               
                let defaults = UserDefaults.standard
                let iboToken = defaults.string(forKey: "iboNum")
                let emailToken = defaults.string(forKey: "email")

     
         
                      
    }

}


