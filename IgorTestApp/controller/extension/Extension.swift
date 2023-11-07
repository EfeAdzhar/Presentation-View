//
//  PresentationExtension.swift
//  IgorTestApp
//
//  Created by Efe on 03.11.23.
//

import Foundation
import UIKit

extension PresentationCollectionView {
    func setUpLayoutAndFieldsForAwakeFromNib() {
        layout = UICollectionViewFlowLayout()
        layout?.scrollDirection = .horizontal
        self.collectionViewLayout = layout ?? UICollectionViewFlowLayout()
        self.delegate = self
        self.dataSource = self
        self.dto = PresentationDto()
        self.service = PresentationCollectionViewService()
        showsVerticalScrollIndicator = false
        showsHorizontalScrollIndicator = false
    }
}

extension PresentationCollectionView {
    func setNibs() {
        let rectangularCellNib = UINib(nibName: "RectangularCell", bundle: nil)
        let verticalCellNib = UINib(nibName: "VerticalCell", bundle: nil)
        register(rectangularCellNib, forCellWithReuseIdentifier: "rectangularCell")
        register(verticalCellNib, forCellWithReuseIdentifier: "verticalCell")
    }
}

extension PresentationViewController {
    func setUpFont() {
        self.continueButton.titleLabel?.font = UIFont(name: "TWKLausanne-200", size: 22)
        self.titleText.font = UIFont(name: "TWKLausanne-300", size: 20)
        self.mainText.font = UIFont(name: "TWKLausanne-300", size: 35)
        self.sighUpButton.titleLabel?.font = UIFont(name: "TWKLausanne-200", size: 19)
    }
}

extension PresentationViewController {
    func setUpOutlets() {
        self.continueButton.layer.cornerRadius = 30
        self.image.layer.masksToBounds = true
        self.image.layer.borderColor = UIColor.black.cgColor
        self.image.layer.cornerRadius = image.frame.height / 2
    }
}

