//  PresentationViewController.swift
//  IgorTestApp
//  Created by Efe on 11.07.2023.

import Foundation
import UIKit

final class PresentationViewController : UIViewController {
    @IBOutlet weak var titleText: UILabel!
    @IBOutlet weak var mainText: UILabel!
    @IBOutlet weak var continueButton: UIButton!
    @IBOutlet weak var sighUpButton: UIButton!
    @IBOutlet weak var image: UIImageView!
    
    @IBOutlet weak var collectionView : PresentationCollectionView?
    private var service = PresentationViewService()
    private var dto = PresentationDto()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setUpFont()
    }
    
    @IBAction func continuePressed(_ sender: UIButton) {
        collectionView?.reloadData()
        self.dto = service.getNextValues()
        self.collectionView?.dto = dto
        self.titleText.text = dto.titleText ?? "That's it!"
        self.mainText.text = dto.mainText ?? "Thank you for your attention!"
    }
}
