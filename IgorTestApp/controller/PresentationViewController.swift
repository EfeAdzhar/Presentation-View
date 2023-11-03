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
    private var presentationCollectionViewCells = PresentationCollectionViewCells()
    private var dto = PresentationDto()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setUpFont()
        self.setNibs()
    }
    
    @IBAction func continuePressed(_ sender: UIButton) {
        self.dto = service.getNextValues()
        self.titleText.text = dto.titleText ?? "That's it!"
        self.mainText.text = dto.mainText ?? "Thank you for your attantion!"
    }
}

extension PresentationViewController : UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return dto.imageString?.count ?? 1
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let message = dto.messageType else {return UICollectionViewCell()}
        switch(message) {
        case .KICKOFF, .ROOM_SCAN, .DESIGN :
           return setUpRectangularCell(indexPath)
        case .CONFIGURE:
            return setUpVerticalCell(indexPath)
        case .ORDER:
            break
        default :
               guard let cell =
                        collectionView.dequeueReusableCell(withReuseIdentifier: "rectangularCell", for: indexPath) as? RectangularCell else {
                   return UICollectionViewCell()
               }
                return cell
        }
        return UICollectionViewCell()
    }
    
    private func setUpRectangularCell(_ indexPath : IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView
            .dequeueReusableCell(withReuseIdentifier: "rectangularCell", for: indexPath) as? RectangularCell
        else {return UICollectionViewCell()}
        for _ in 0...dto.imageString!.count {
            return cell
        }
        return UICollectionViewCell()
    }
    
    private func setUpVerticalCell(_ indexPath : IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView
            .dequeueReusableCell(withReuseIdentifier: "rectangularCell", for: indexPath) as? VerticalCell
        else {return UICollectionViewCell()}
        for _ in 0...dto.imageString!.count {
            return cell
        }
        return UICollectionViewCell()
    }
}

extension PresentationViewController {
    func setNibs() {
        self.collectionView.delegate = self
        self.collectionView.dataSource = self
        let rectangularCellNib = UINib(nibName: "RectangularCell", bundle: nil)
        let verticalCellNib = UINib(nibName: "VerticalCell", bundle: nil)
        collectionView.register(rectangularCellNib, forCellWithReuseIdentifier: "rectangularCell")
        collectionView.register(verticalCellNib, forCellWithReuseIdentifier: "verticalCell")
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
