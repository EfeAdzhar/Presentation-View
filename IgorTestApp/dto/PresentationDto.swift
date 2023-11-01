//
//  PresentationDto.swift
//  IgorTestApp
//
//  Created by Efe on 01.11.23.
//

import Foundation

class PresentationDto {
    var titleText : String?
    var mainText : String?
    var imageString : [String]?
    
    public func fetchValues( _ model : Optional<[ [String : String] : [String] ]>) {
        guard let dictionary = model?.first else {return}
        fetchKey(dictionary.key)
        self.imageString = dictionary.value
    }
    
    private func fetchKey(_ key : [String : String]) {
        let labelTextKeyValue = key.first
        self.titleText = labelTextKeyValue?.key
        self.mainText = labelTextKeyValue?.value
    }
}
