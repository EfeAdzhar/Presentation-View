//  PresentationViewService.swift
//  IgorTestApp
//  Created by Efe on 16.07.2023.

import Foundation
import UIKit

class PresentationViewService {
    private let model : PresentationViewRepository?
    
    init() {
        model = PresentationViewRepository()
    }
    
    public func getNext() -> Optional<[String: [String :  [Optional<String>]]]> {
        return model?.getNext()
    }
}
