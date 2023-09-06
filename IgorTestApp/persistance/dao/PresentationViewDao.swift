//
//  PresentationViewDao.swift
//  IgorTestApp
//
//  Created by Efe on 20.07.2023.
//

import Foundation
import UIKit
//Singletone
class PresentationViewDao {
    
    private init() {}
    static var shared: PresentationViewDao = {
        let instance = PresentationViewDao()
        return instance
    }()
    
    private var titleText : [String] = [
                                        "Kickoff",
                                        "Room Scan",
                                        "Design",
                                        "Configure",
                                        "Order"
    ]
    private var mainText : [String] = [
        "Share your bathroom renovation goals",
        "Easily gather accurate room measurments",
        "I'll create a custom design just for you",
        "Select your exact material and finishes",
        "Order and track materials to your door"
    ]
    
    private var viewImages : [[String]] = [["item.png"],
                                     ["item.png", "item.png", "item.png"],
                                     ["item.png","item.png", "item.png", "item.png", "item.png"]]
    
    public func getTitleTextArray() -> [String] {
        return titleText
    }
    
    public func getMainTextArray() -> [String] {
        return mainText
    }
    
    public func getViewImageArray() -> [[String]] {
        return viewImages
    }
    
    public func removeAndGetTitleText() -> String {
        return titleText.remove(at: 0)
    }
    
    public func removeAndGetMainText() -> String {
        return mainText.remove(at: 0)
    }
    
    public func removeAndGetViewImage() -> [String] {
        return viewImages.remove(at: 0)
    }
    
}
extension PresentationViewDao : NSCopying {
    func copy(with zone: NSZone? = nil) -> Any {
        return self
    }
}
