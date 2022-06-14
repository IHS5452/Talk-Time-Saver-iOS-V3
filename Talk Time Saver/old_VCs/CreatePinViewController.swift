//
//  CreatePinViewController.swift
//  Talk Time Saver
//
//  Created by Ian Schrauth on 6/14/22.
//

import Foundation


class CreatePinViewController: UIViewController, UIViewControllerTransitioningDelegate {
    

    @IBOutlet weak var menu_bttn: UIBarButtonItem!
    
    
    @IBAction func menu_clicked(_ sender: UIBarButtonItem) {
        
      menu_clicked_class()
        
        
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        menu_clicked_class()

//
//
//
//        let panGesture = UIPanGestureRecognizer(target: self, action: #selector(panGestureRecognizerAction))
//        view.addGestureRecognizer(panGesture)

    }
    
    func menu_clicked_class() {
        menu_bttn.target = revealViewController()
        menu_bttn.action = #selector(SWRevealViewController.revealToggle(_:))
        view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
    }

  


@IBOutlet weak var caAccount: UIButton!
@IBOutlet weak var loginButton: UIButton!


@IBOutlet weak var pin_TF: UITextField!
var hasSetPointOrigin = false
var pointOrigin: CGPoint?

@IBOutlet weak var slideIdicator: UIView!
@IBOutlet weak var imageView: UIImageView!
@IBOutlet weak var subscribeButton: UIView!




@IBAction func create_pressed(_ sender: UIButton) {
    let defaults = UserDefaults.standard
//        let emailToken = defaults.string(forKey: "created_PIN")
    
    if pin_TF.text == "" {
        defaults.set("0000", forKey: "pin_user_created")
        defaults.set("0000", forKey: "pin_number_temp")
        defaults.set("true", forKey: "authd")
        defaults.set("true", forKey: "did_create_pin")
        self.dismiss(animated: true, completion: nil)
    } else {
      
        defaults.set(pin_TF.text, forKey: "pin_user_created")
        defaults.set(pin_TF.text, forKey: "pin_number_temp")
        defaults.set("true", forKey: "authd")
        defaults.set("true", forKey: "did_create_pin")

        self.dismiss(animated: true, completion: nil)
        
    }
    
    
}




override func viewDidLayoutSubviews() {
    if !hasSetPointOrigin {
        hasSetPointOrigin = true
        pointOrigin = self.view.frame.origin
    }
    
    self.setupToHideKeyboardOnTapOnView()
        
           
           

 
     
                  
}
//@objc func panGestureRecognizerAction(sender: UIPanGestureRecognizer) {
//    let translation = sender.translation(in: view)
//
//    // Not allowing the user to drag the view upward
//    guard translation.y >= 0 else { return }
//
//    // setting x as 0 because we don't want users to move the frame side ways!! Only want straight up or down
//    view.frame.origin = CGPoint(x: 0, y: self.pointOrigin!.y + translation.y)
//
//    if sender.state == .ended {
//        let dragVelocity = sender.velocity(in: view)
//        if dragVelocity.y >= 1300 {
//            self.dismiss(animated: true, completion: nil)
//        } else {
//            // Set back to original position of the view controller
//            UIView.animate(withDuration: 0.3) {
//                self.view.frame.origin = self.pointOrigin ?? CGPoint(x: 0, y: 400)
//            }
//        }
//    }
//}
}
