//
//  PresentationViewRepository.swift
//  IgorTestApp
//
//  Created by Efe on 16.07.2023.
//

import Foundation
import UIKit

class PresentationViewRepository {
    private let tableView = UITableView()
    private let dao = PresentationViewDao()
    
    //returns [ [titleLabelText : mainLabelText] : [imageNameString] ]
    public func getNextValues() -> Optional<[ [String : String] : [String] ]>  {
        if(!dao.getTitleAndMainText().isEmpty
           && !dao.getViewImageArray().isEmpty) {
            return [dao.removeAndGetTitleAndMainText() :
                        dao.removeAndGetViewImage()]
        }
        return Optional.none
    }
}
