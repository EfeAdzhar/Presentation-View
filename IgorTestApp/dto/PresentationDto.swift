//
//  PresentationDto.swift
//  IgorTestApp
//
//  Created by Efe on 01.11.23.
//

import Foundation

final class PresentationDto {
    var titleText : String?
    var mainText : String?
    var imageString : [String]?
    var messageType : MessageType?
    
    public func fetchValues( _ model : Optional<[ [String : String] : [[String] : MessageType]]>) {
        guard let dictionary = model?.first else {return}
        fetchKey(dictionary.key)
        fetchValue(dictionary.value)
    }
}

extension PresentationDto {
    private func fetchKey(_ key : [String : String]) {
        let labelTextKeyValue = key.first
        self.titleText = labelTextKeyValue?.key
        self.mainText = labelTextKeyValue?.value
    }
    
    private func fetchValue(_ value : [[String] : MessageType]) {
        let imageAndMessageValue = value.first
        self.imageString = imageAndMessageValue?.key
        self.messageType = imageAndMessageValue!.value
    }
}
