//  PresentationViewService.swift
//  IgorTestApp
//  Created by Efe on 16.07.2023.

import Foundation
import UIKit

class PresentationViewService {
    private var model : PresentationViewRepository?
    private var collectionView : UICollectionView?
    
    init(_ collectionView : UICollectionView) {
        self.collectionView = collectionView
        model = PresentationViewRepository()
    }
    
    public func getNextValues() -> PresentationDto {
        let dto = PresentationDto()
        dto.fetchValues(model?.getNextValues())
        return dto
    }
    
    public func setUpCellType(_ indexPath : IndexPath, as cellType : CellType, identifier : String) -> UICollectionViewCell {
        let cell = collectionView?
            .dequeueReusableCell(withReuseIdentifier: identifier, for: indexPath)
        switch(cellType) {
        case .RECTANGULAR :
            return (cell as? RectangularCell)!
        case .VERTICAL :
            return (cell as? VerticalCell)!
        }
    }
}
