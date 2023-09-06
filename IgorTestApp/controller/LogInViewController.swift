 //  LogInViewController.swift
//  IgorTestApp
//  Created by Efe on 13.07.2023.

import Foundation
import UIKit

class LogInViewController : UIViewController {
    
    @IBOutlet private weak var password: UITextField!
    @IBOutlet private weak var email: UITextField!
    @IBOutlet private weak var signInButton: UIButton!
    private var service : UserService = UserService()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func enterButtonPressed(_ sender : UIButton) {
        if(!email.text!.isEmpty && !password.text!.isEmpty) {
            if(service.getUser(email.text!) != nil) {
                let app = self.storyboard?.instantiateViewController(withIdentifier: "appViewController") as! AppMenuViewController
                
                app.modalTransitionStyle = UIModalTransitionStyle.flipHorizontal
                app.modalPresentationStyle = UIModalPresentationStyle.fullScreen
                
                self.present(app, animated: true, completion: nil)
            } else {
                print("user does not exists")
            }
        } else {
            print("empty fields")
        }
    }
    
    @IBAction func signInButtonPressed(_ sender: Any) {
        if(signInButton.isTouchInside) {
            self.dismiss(animated: true)
        }
    }
}
