//  IntroViewController.swift
//  IgorTestApp
//  Created by Efe on 13.07.2023.

import Foundation
import UIKit

class IntroViewController : UIViewController {
    @IBOutlet private weak var continueButton: UIButton!
    @IBOutlet private weak var introductionLabel: UILabel!
    @IBOutlet private weak var overviewSection: UILabel!
    @IBOutlet private weak var signUpButton: UIButton!
    @IBOutlet private weak var image: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpIntroViewControllerElementsFont()
    }

    @IBAction func signInButtonPressed(_ sender: UIButton) {
//   Here should be Sign In With Apple logic
    }
    
    private func setUpIntroViewControllerElementsFont() {
        self.image.layer.masksToBounds = true
        self.image.layer.borderColor = UIColor.black.cgColor
        self.image.layer.cornerRadius = image.frame.height / 2
        
        self.continueButton.layer.cornerRadius = 30
        self.continueButton.layer.mask?.masksToBounds = true
        self.continueButton.titleLabel?.font = UIFont(name: "TWKLausanne-100", size: 22)
        self.introductionLabel.font = UIFont(name: "TWKLausanne-200", size: 39)
        self.overviewSection.font = UIFont(name: "TWKLausanne-200", size: 23)
        self.signUpButton.titleLabel?.font = UIFont(name: "TWKLausanne-100", size: 19)
    }
}
