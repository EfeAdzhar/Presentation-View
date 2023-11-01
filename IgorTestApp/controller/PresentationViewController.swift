//  PresentationViewController.swift
//  IgorTestApp
//  Created by Efe on 11.07.2023.

import Foundation
import UIKit

class PresentationViewController : UIViewController {
    @IBOutlet private weak var titleText: UILabel!
    @IBOutlet private weak var mainText: UILabel!
    @IBOutlet private weak var continueButton: UIButton!
    @IBOutlet private weak var sighUpButton: UIButton!
    @IBOutlet private weak var image: UIImageView!
    @IBOutlet weak var collectionView: UICollectionView!
    
    private var service = PresentationViewService()
    private var cells = PresentationCollectionViewCells()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setUpFont()
//        self.collectionView.delegate = self
    }
    
    @IBAction func continuePressed(_ sender: UIButton) {
        let dto = service.getNextValues()
        self.titleText.text = dto.titleText ?? "That's it!"
        self.mainText.text = dto.mainText ?? "Thank you for your attantion!"
    }
}



//extension PresentationViewController : UICollectionViewDelegate, UICollectionViewDataSource {
//    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
//
//    }
//
//    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
//
//    }
//}

extension PresentationViewController {
    func setUpFont() {
        self.continueButton.titleLabel?.font = UIFont(name: "TWKLausanne-200", size: 22)
               self.titleText.font = UIFont(name: "TWKLausanne-300", size: 20)
               self.mainText.font = UIFont(name: "TWKLausanne-300", size: 35)
               self.sighUpButton.titleLabel?.font = UIFont(name: "TWKLausanne-200", size: 19)
    }
}
