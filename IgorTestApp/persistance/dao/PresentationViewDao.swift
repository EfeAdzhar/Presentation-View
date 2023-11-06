//
//  PresentationViewDao.swift
//  IgorTestApp
//
//  Created by Efe on 20.07.2023.
//

import Foundation
import OrderedCollections

final class PresentationViewDao {
    
    private var titleAndMainText : OrderedDictionary = [
        "Kickoff" :  "Share your bathroom renovation goals",
        "Room Scan" : "Easily gather accurate room measurments",
        "Design" : "I'll create a custom design just for you",
        "Configure" : "Select your exact material and finishes",
        "Order" : "Order and track materials to your door"
    ]
    
    private var viewImages : [[String]] = [
        ["item.png"],
        ["item.png", "item.png", "item.png"],
        ["item.png","item.png", "item.png", "item.png", "item.png"],
        ["item.png","item.png", "item.png", "item.png"],
        ["item.png","item.png", "item.png", "item.png"]
    ]
    
    private var messageType : [MessageType] = [
        .KICKOFF,
        .ROOM_SCAN,
        .DESIGN,
        .CONFIGURE,
        .ORDER
    ]
    
    public func getMessage() -> [MessageType] {
        return messageType
    }
    
    public func removeAndGetTitleAndMainText() -> [String : String] {
        guard let firstPait = titleAndMainText.elements.first else {
            return [String : String]()
        }
        titleAndMainText.removeFirst()
        return [firstPait.key : firstPait.value]
    }
    
    public func removeAndGetViewImageAndMessageType() -> [[String] : MessageType] {
        return [viewImages.remove(at: 0) : messageType.remove(at: 0)]
    }
}
