//
//  PresentationViewTableExtension.swift
//  IgorTestApp
//
//  Created by Efe on 26.07.2023.
//

import Foundation
import UIKit
//MARK: TableView creation and settings
extension PresentationViewController : UITableViewDelegate, UITableViewDataSource {
    
    public func createTableView() {
        self.tableVIew = UITableView(frame: subView.bounds, style: .plain)
        self.tableVIew.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        self.tableVIew.delegate = self
        self.tableVIew.dataSource = self
        self.tableVIew.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        self.tableVIew.backgroundColor = .darkGray
        self.tableVIew.rowHeight = 80
        self.tableVIew.isScrollEnabled = false
        subView.addSubview(tableVIew)
        scrollView.backgroundColor = .darkGray
        scrollView.showsVerticalScrollIndicator = false
        scrollView.isScrollEnabled = false
        scrollView.addSubview(tableVIew)
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        let verticalPadding: CGFloat = 8
        let maskLayer = CALayer()
        maskLayer.cornerRadius = 10
        maskLayer.backgroundColor = UIColor.black.cgColor
        maskLayer.frame = CGRect(x: cell.bounds.origin.x, y: cell.bounds.origin.y, width: cell.bounds.width, height: cell.bounds.height).insetBy(dx: 0, dy: verticalPadding/2)
        cell.layer.mask = maskLayer
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.imageView?.image = UIImage(named: "item.png")
        cell.backgroundColor = .gray
    
        return cell
    }
}
