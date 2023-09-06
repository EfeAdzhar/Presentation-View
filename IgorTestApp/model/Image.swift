//
//  Image.swift
//  IgorTestApp
//
//  Created by Efe on 18.07.2023.
//

import Foundation
import UIKit

class Image {
    public func createImage() -> UIImageView {
        let imageName = "item.png"
        let image = UIImage(named: imageName)
        let imageView = UIImageView(image: image!)
        return imageView
    }
}
