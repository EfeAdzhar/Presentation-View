//
//  PresentationExtension.swift
//  IgorTestApp
//
//  Created by Efe on 03.11.23.
//

import Foundation
import UIKit

extension PresentationViewController {
    func setNibs() {
        self.collectionView.delegate = self
        self.collectionView.dataSource = self
        let rectangularCellNib = UINib(nibName: "RectangularCell", bundle: nil)
        let verticalCellNib = UINib(nibName: "VerticalCell", bundle: nil)
        collectionView.register(rectangularCellNib, forCellWithReuseIdentifier: "rectangularCell")
        collectionView.register(verticalCellNib, forCellWithReuseIdentifier: "verticalCell")
    }
    
    func setUpFont() {
        self.continueButton.titleLabel?.font = UIFont(name: "TWKLausanne-200", size: 22)
        self.titleText.font = UIFont(name: "TWKLausanne-300", size: 20)
        self.mainText.font = UIFont(name: "TWKLausanne-300", size: 35)
        self.sighUpButton.titleLabel?.font = UIFont(name: "TWKLausanne-200", size: 19)
    }
}
