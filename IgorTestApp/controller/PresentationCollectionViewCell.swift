//
//  PresentationCollectionViewCell.swift
//  IgorTestApp
//
//  Created by Efe on 01.11.23.
//

import UIKit

enum CellTypes {
    case RECTANGULAR
    case VERTICAL
}

class PresentationCollectionViewCells {
   private var rectangularCell : [RectangularCell] = []
   private var verticalCell : [VerticalCell] = []
    
   public func generateCell(_type : CellTypes, _ amount : Int) -> [UICollectionViewCell] {
        switch _type {
        case .RECTANGULAR:
            return addCell(RectangularCell(), rectangularCell, amount)
        case .VERTICAL:
            return addCell(VerticalCell(), verticalCell, amount)
        }
    }
    
    private func addCell(_ cell : UICollectionViewCell, _ cellArray : [UICollectionViewCell], _ amount : Int) -> [UICollectionViewCell] {
        var cellArray : [UICollectionViewCell] = []
        for _ in 0...amount {
            cellArray.append(cell)
        }
        return cellArray
    }
}

class RectangularCell : UICollectionViewCell {
    override func awakeFromNib() {
        super.awakeFromNib()
        
        contentView.layer.cornerRadius = 15
        contentView.layer.masksToBounds = true
    }
}

class VerticalCell : UICollectionViewCell {
    override func awakeFromNib() {
        super.awakeFromNib()
        
        contentView.layer.cornerRadius = 15
        contentView.layer.masksToBounds = true
    }
}
