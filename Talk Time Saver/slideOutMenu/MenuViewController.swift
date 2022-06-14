//
//  MenuViewController.swift
//  Talk Time Saver
//
//  Created by Ian Schrauth on 6/14/22.
//

import Foundation


class MenuViewController: UIViewController, UIViewControllerTransitioningDelegate {
    

    @IBAction func custTimes_clicked(_ sender: UIButton) {
        
        performSegue(withIdentifier: "cust_segue", sender: nil)
    }
    
    
    @IBAction func pinChange_clicked(_ sender: UIButton) {
        
        performSegue(withIdentifier: "cp_segue", sender: nil)

    }
    
    @IBAction func history_clicked(_ sender: UIButton) {
        
        _ = easySwiftAPI()
        
        let defaults = UserDefaults.standard
        let emailToken = defaults.string(forKey: "authd")
        
        if (emailToken == "false") {
            //NOTE: Show Authenticate Pop up
            performSegue(withIdentifier: "verify_segue", sender: nil)

        } else {
            
            performSegue(withIdentifier: "history_segue", sender: nil)

        }
        
        
    }
    
    
    @IBAction func about_clicked(_ sender: UIButton) {

 
        performSegue(withIdentifier: "about_segue", sender: nil)
        
        
        
    }
    
    @IBAction func home_clicked(_ sender: UIButton) {
        performSegue(withIdentifier: "home_segue", sender: nil)

        
    }
    


override func viewDidLoad() {
    super.viewDidLoad()
    
}

    
}

extension ViewController: UIViewControllerTransitioningDelegate {
    func presentationController(forPresented presented: UIViewController, presenting: UIViewController?, source: UIViewController) -> UIPresentationController? {
        PresentationController(presentedViewController: presented, presenting: presenting)
    }

}

    
    
    





