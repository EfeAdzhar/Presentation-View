//  PresentationViewService.swift
//  IgorTestApp
//  Created by Efe on 16.07.2023.

import Foundation
import UIKit

class PresentationViewService {
    private var model : PresentationViewRepository?
    
    init() {
        model = PresentationViewRepository()
    }
    
    public func getNextValues() -> PresentationDto {
        let dto = PresentationDto()
        dto.fetchValues(model?.getNextValues())
        return dto
    }
}
