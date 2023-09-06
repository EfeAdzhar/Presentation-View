//
//  SingInViewController.swift
//  IgorTestApp
//
//  Created by Efe on 11.07.2023.
//

import Foundation
import UIKit

class SignInViewController : UIViewController {
    @IBOutlet private weak var name: UITextField!
    @IBOutlet private weak var email: UITextField!
    @IBOutlet private weak var password: UITextField!
    @IBOutlet weak var registrationButton: UIButton!
    private final var service : UserService?
    
    override func viewDidLoad() {
        self.viewDidLoad()
        service = UserService()
        registrationButton.addTarget(self, action: #selector(registrationButtonIsHidden), for: .allEditingEvents)
    }
    
    @IBAction func registerButtonPressed(_ sender: UIButton) {
        guard let service = service else {return}
        let newUser = User(id: UUID().uuidString, name: name.text!,
                           email: email.text!,
                           password: password.text!)
        if(service.addUser(newUser)) {
            self.present(AppMenuViewController(), animated: true)
        }
    }
    
    @objc private func registrationButtonIsHidden() {
        if(!name.text!.isEmpty
           && !email.text!.isEmpty
           && !password.text!.isEmpty) {
            registrationButton.isHidden = false
        }
    }
}
