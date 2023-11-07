//
//  PresentationCollectionView.swift
//  IgorTestApp
//
//  Created by Efe on 06.11.23.
//

import UIKit

final class PresentationCollectionView: UICollectionView {
    var dto : PresentationDto? {
        didSet {
            self.reloadData()
        }
    }
    var service : PresentationCollectionViewService?
    var layout : UICollectionViewFlowLayout?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setUpLayoutAndFieldsForAwakeFromNib()
        setNibs()
    }
}

extension PresentationCollectionView : UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return dto?.imageString?.count ?? 0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let message = dto?.messageType else {return UICollectionViewCell()}
        switch(message) {
        case .KICKOFF, .ROOM_SCAN, .DESIGN :
            return (service?
                .setUpCellType(indexPath,
                               as: .RECTANGULAR,
                               identifier: RectangularCell.IDENTIFIER,
                               view: collectionView))!
        case .CONFIGURE:
            layout?.scrollDirection = .vertical
            self.collectionViewLayout = layout!
            return (service?
                .setUpCellType(indexPath,
                               as: .VERTICAL,
                               identifier: VerticalCell.IDENTIFIER,
                               view: collectionView))!
        case .ORDER:
            layout?.scrollDirection = .init(rawValue: 3)!
            self.collectionViewLayout = layout!
            return (service?
                .setUpCellType(indexPath,
                               as: .RECTANGULAR,
                               identifier: RectangularCell.IDENTIFIER,
                               view: collectionView))!
        }
    }
}

extension PresentationCollectionView : UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        switch(layout?.scrollDirection) {
        case .horizontal :
            if(dto?.imageString?.count == 1) {
                return CGSize(width: self.frame.size.width, height: self.frame.height)
            }
            return CGSize(width: self.frame.size.width/1.5, height: self.frame.size.height)
        case .vertical :
            self.isScrollEnabled = false
            return CGSize(width: self.frame.size.width, height: self.frame.size.height/4.6)
        case UICollectionView.ScrollDirection(rawValue: 3) :
            let padding : CGFloat = 50
            let collectionViewSize = collectionView.frame.size.width - padding
            return CGSize(width: collectionViewSize/1.8,
                          height: collectionViewSize / 2.4)
        case .none:
            return CGSize()
        @unknown default:
            fatalError("Error in changing layout scroll direction")
        }
    }
}
