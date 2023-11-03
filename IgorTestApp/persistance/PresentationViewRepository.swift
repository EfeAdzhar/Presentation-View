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
    
    //returns [ [titleLabelText : mainLabelText] : [[imageNameString] : messageType] ]
    public func getNextValues() -> Optional<[ [String : String] : [[String] : MessageType] ]>  {
        if(!dao.getMessage().isEmpty) {
            return [dao.removeAndGetTitleAndMainText() :
                        dao.removeAndGetViewImageAndMessageType()]
        }
        return Optional.none
    }
}
