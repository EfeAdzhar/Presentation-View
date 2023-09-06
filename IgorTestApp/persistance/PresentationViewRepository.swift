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
    private let dao = PresentationViewDao.shared
    
    public func getNext() -> Optional<[String: [String :  [Optional<String>]]]> {
        if(!dao.getTitleTextArray().isEmpty
           && !dao.getMainTextArray().isEmpty) {
            if(!dao.getViewImageArray().isEmpty) {
                return [dao.removeAndGetTitleText() :
                            [dao.removeAndGetMainText()  : dao.removeAndGetViewImage()]]
            } else {
                return [dao.removeAndGetTitleText() :
                            [dao.removeAndGetMainText()  : [Optional.none]]]
            }
        }
        return Optional.none
    }
}
