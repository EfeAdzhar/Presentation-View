//
//  PresentationCollectionViewCell.swift
//  IgorTestApp
//
//  Created by Efe on 01.11.23.
//

import UIKit

class RectangularCell : UICollectionViewCell {
    @IBOutlet weak var imageView: UIImageView!
    public static let IDENTIFIER = "rectangularCell"
    
    override func awakeFromNib() {
        super.awakeFromNib()
        contentView.layer.cornerRadius = 15
        contentView.layer.masksToBounds = true
        imageView.contentMode = .scaleAspectFit
        imageView.layer.cornerRadius = 15
    }
}

class VerticalCell : UICollectionViewCell {
    public static let IDENTIFIER = "verticalCell"
    override func awakeFromNib() {
        super.awakeFromNib()
        contentView.layer.cornerRadius = 15
        contentView.layer.masksToBounds = true
    }
}
