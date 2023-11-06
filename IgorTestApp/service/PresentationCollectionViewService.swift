//
//  PresentationCollectionViewService.swift
//  IgorTestApp
//
//  Created by Efe on 06.11.23.
//

import Foundation
import UIKit

final class PresentationCollectionViewService {
    public func setUpCellType(_ indexPath : IndexPath, as cellType : CellType, identifier : String, view : UICollectionView) -> UICollectionViewCell {
        let cell = view
            .dequeueReusableCell(withReuseIdentifier: identifier, for: indexPath)
        switch(cellType) {
        case .RECTANGULAR :
            return (cell as? RectangularCell)!
        case .VERTICAL :
            return (cell as? VerticalCell)!
        }
    }
}
