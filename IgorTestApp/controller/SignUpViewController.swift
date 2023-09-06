//
//  SingInViewController.swift
//  IgorTestApp
//
//  Created by Efe on 11.07.2023.
//

import Foundation
import UIKit

class SignUpViewController : UIViewController {
    @IBOutlet private weak var name: UITextField!
    @IBOutlet private weak var email: UITextField!
    @IBOutlet private weak var password: UITextField!
    @IBOutlet private weak var reggisterButton: UIButton!
    private final var service : UserService = UserService()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func registerButtonPressed(_ sender: UIButton) {
        let newUser = User(id: UUID().uuidString, name: name.text!,
                           email: email.text!,
                           password: password.text!)
        
        if(service.addUser(newUser) == true) {
            
            let app = self.storyboard?.instantiateViewController(withIdentifier: "appViewController") as! AppMenuViewController

            app.modalTransitionStyle = UIModalTransitionStyle.flipHorizontal
            app.modalPresentationStyle = UIModalPresentationStyle.fullScreen

            self.present(app, animated: true, completion: nil)
        } else {
            print("user already exists")
        }
    }
}
