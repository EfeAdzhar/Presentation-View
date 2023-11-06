//  PresentationViewController.swift
//  IgorTestApp
//  Created by Efe on 11.07.2023.

import Foundation
import UIKit

class PresentationViewController : UIViewController {
    @IBOutlet weak var titleText: UILabel!
    @IBOutlet weak var mainText: UILabel!
    @IBOutlet weak var continueButton: UIButton!
    @IBOutlet weak var sighUpButton: UIButton!
    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var collectionView : UICollectionView!

    private var service : PresentationViewService?
    private var dto = PresentationDto()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setUpFont()
        self.setNibs()
        self.service = PresentationViewService(collectionView)
    }
    
    @IBAction func continuePressed(_ sender: UIButton) {
        collectionView.reloadData()
        self.dto = service?.getNextValues() ?? PresentationDto()
        self.titleText.text = dto.titleText ?? "That's it!"
        self.mainText.text = dto.mainText ?? "Thank you for your attantion!"
    }
}

extension PresentationViewController : UICollectionViewDelegate, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return dto.imageString?.count ?? 0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let message = dto.messageType else {return UICollectionViewCell()}
        
        switch(message) {
        case .KICKOFF, .ROOM_SCAN, .DESIGN :
            return (service?
                .setUpCellType(indexPath, as: .RECTANGULAR, identifier: RectangularCell.IDENTIFIER))!
        case .CONFIGURE:
            return (service?
                .setUpCellType(indexPath, as: .VERTICAL, identifier: VerticalCell.IDENTIFIER))!
        case .ORDER:
            break
        }
        return UICollectionViewCell()
    }
}

extension PresentationViewController {

    func setHorizontalScrolling() {
//     let layout = UICollectionViewFlowLayout()
//        layout.scrollDirection = .horizontal
//        coll
        
    }
}
