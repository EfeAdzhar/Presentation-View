//  IntroViewController.swift
//  IgorTestApp
//  Created by Efe on 13.07.2023.

import Foundation
import UIKit

@objc(IntroViewController)
class IntroViewController : UIViewController {

    override func viewDidLoad() {
        self.viewDidLoad()
    }

    @IBAction func signInButtonPressed(_ sender: UIButton) {
        if(sender.isTouchInside) {
            let signInView = self.storyboard?.instantiateViewController(withIdentifier: "SignInViewController") as! SignInViewController

            signInView.modalTransitionStyle = UIModalTransitionStyle.flipHorizontal
            signInView.modalPresentationStyle = UIModalPresentationStyle.fullScreen

            self.present(signInView, animated: true, completion: nil)
        }
    }
}
