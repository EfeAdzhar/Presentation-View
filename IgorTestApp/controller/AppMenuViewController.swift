//
//  AppMenuViewController.swift
//  IgorTestApp
//
//  Created by Efe on 11.07.2023.
//

import Foundation
import UIKit

class AppMenuViewController : UIViewController {
    @IBOutlet private weak var backButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func backButtonPressed(_ sender: UIButton) {
            self.dismiss(animated: true)
    }
}
