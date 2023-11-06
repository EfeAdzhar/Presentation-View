//
//  PresentationCollectionViewCell.swift
//  IgorTestApp
//
//  Created by Efe on 01.11.23.
//

import UIKit

final class RectangularCell : UICollectionViewCell {
    @IBOutlet weak var imageView: UIImageView!
    public static let IDENTIFIER = "rectangularCell"
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.layer.cornerRadius = 15
        self.layer.masksToBounds = true
    }
}

class VerticalCell : UICollectionViewCell {
    public static let IDENTIFIER = "verticalCell"
    override func awakeFromNib() {
        super.awakeFromNib()
        self.layer.cornerRadius = 15
        self.layer.masksToBounds = true
    }
}
