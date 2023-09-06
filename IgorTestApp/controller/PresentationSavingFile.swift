//
//  PresentationSavingFile.swift
//  IgorTestApp
//
//  Created by Efe on 28.07.2023.
//

//import Foundation
//  PresentationViewController.swift
//  IgorTestApp
//  Created by Efe on 11.07.2023.
//
//import Foundation
//import UIKit
//
//class PresentationViewController : UIViewController, UIScrollViewDelegate {
//    @IBOutlet private weak var titleText: UILabel!
//    @IBOutlet private weak var mainText: UILabel!
//    @IBOutlet private weak var continueButton: UIButton!
//    @IBOutlet private weak var scrollView: UIScrollView!
//    @IBOutlet private weak var subView: UIView!
//    @IBOutlet private weak var sighUpButton: UIButton!
//    @IBOutlet private weak var image: UIImageView!
//    private var stackView: UIStackView = UIStackView()
//    private var service : PresentationViewService?
//    private var tableVIew : UITableView = UITableView()
//    private var collectionView : UICollectionView?
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        setUpElements()
//        setUpPresentationViewControllerElementsFont()
//    }
//
//    @IBAction func continueButtonPressed(_ sender: UIButton) {
//        service?.getNext()?
//            .map({ (title: String, main: [String : [Optional<String>]]) in
//                titleText.text = title
//                main.map({ (mainK: String, imageV: [Optional<String>]) in
//                    mainText.text = mainK
//                    if(imageV[0] != nil) {
//
//                        addImageToScrollView(imageV)
//                    } else {
//                        //Sub view of a sub view
//                        let scrollSubView = subView.subviews.first
//                        //Get table view subview out of scroll sub view
//                        let tableSubVIew = scrollSubView?.subviews.filter{$0 == tableVIew}
//                        if ((tableSubVIew?.first?.isEqual(tableVIew)) != nil) {
//                            scrollView.removeFromSuperview()
//                            scrollView.showsVerticalScrollIndicator = false
//                            subView.addSubview(creatingCollectionView())
//                            subView.backgroundColor = .darkGray
//                        } else {
//                           scrollView.subviews.forEach { stackView in
//                               stackView.removeFromSuperview()
//                            }
//                          scrollView.contentSize = CGSize(width:Int(subView.bounds.width), height: 200)
//                            createTableView()
//                        }
//                    }
//                })
//            })
//    }
//
//    private func setUpElements() {
//        createStackView()
//       // scrollView.translatesAutoresizingMaskIntoConstraints = false
//        continueButton.layer.cornerRadius = 30
//        continueButton.layer.mask?.masksToBounds = true
//        service = PresentationViewService()
//        subView.layer.borderColor = UIColor.blue.cgColor
//        let layer = UICollectionViewFlowLayout()
//        layer.scrollDirection = .vertical
//        collectionView = UICollectionView(frame: subView.bounds, collectionViewLayout: layer)
//    }
//
//    private func setUpPresentationViewControllerElementsFont() {
//        self.image.layer.masksToBounds = true
//        self.image.layer.borderColor = UIColor.black.cgColor
//        self.image.layer.cornerRadius = image.frame.height / 2
//        self.continueButton.titleLabel?.font = UIFont(name: "TWKLausanne-100", size: 22)
//        self.titleText.font = UIFont(name: "TWKLausanne-200", size: 35)
//        self.mainText.font = UIFont(name: "TWKLausanne-200", size: 23)
//        self.sighUpButton.titleLabel?.font = UIFont(name: "TWKLausanne-100", size: 19)
//    }
//}
//
////MARK: Image and ScrollView logics
//extension PresentationViewController  {
//    //working with scrollView but without spacing
//
////    private func addImageToScrollView(_ imageString : [Optional<String>]) {
//   // scrollView.contentSize = CGSize(width: Int(subView.bounds.width) * imageV.count, height: 200)
////        var imageViewBounds = self.subView.bounds
////        for image in imageString {
////            let itemImage = UIImage(named: image!)!
////            let itemImageView = self.newImageViewWithImage(itemImage, imageViewBounds)
////            itemImageView.backgroundColor = .gray
////            itemImageView.layer.borderWidth = 10
////            imageViewBounds.origin.x += imageViewBounds.size.width
////            scrollView.addSubview(itemImageView)
////        }
////        scrollView.backgroundColor = .darkGray
////        scrollView.showsHorizontalScrollIndicator = false
////    }
//
//    // new version
//    private func addImageToScrollView(_ imageString : [Optional<String>]) {
//        scrollView.contentSize = CGSize(width: Int(subView.bounds.width) * imageString.count, height: 200)
//        var imageViewBounds = self.subView.bounds
//        for image in imageString {
//            let itemImage = UIImage(named: image!)!
//            let itemImageView = self.newImageViewWithImage(itemImage, imageViewBounds)
//            itemImageView.backgroundColor = .gray
//            imageViewBounds.origin.x += imageViewBounds.size.width
//            scrollView.addSubview(itemImageView)
//        }
//        scrollView.backgroundColor = .darkGray
//        scrollView.showsHorizontalScrollIndicator = false
//    }
//
//    private func createStackView() {
//        self.stackView.frame = scrollView.frame
//        self.stackView.axis = .horizontal
//        self.stackView.spacing = 20
//        self.stackView.layer.cornerRadius = 20
////        self.scrollableStackView.scrollView.frame = CGRect(x: self.subView.bounds.origin.x, y: self.subView.bounds.origin.y, width: self.subView.bounds.width, height: self.subView.bounds.height)
////        self.scrollableStackView.stackView.frame = CGRect(x: self.subView.bounds.origin.x, y: self.subView.bounds.origin.y, width: self.subView.bounds.width, height: self.subView.bounds.height)
//        self.stackView.clipsToBounds = true
//        self.stackView.backgroundColor = .darkGray
//        //scrollView.addSubview(stackView)
//    }
//
////    private func setUpScrollView(_ scrollView : UIScrollView, _ imageV : [Optional<String>], _ subView: UIView) {
////        scrollView.contentSize = CGSize(width: Int(subView.bounds.width) * imageV.count, height: 200)
////        scrollView.layer.mask?.cornerRadius = 10
////
////        let verticalPadding: CGFloat = 8
////        let maskLayer = CALayer()
////        maskLayer.cornerRadius = 10
////        maskLayer.backgroundColor = UIColor.black.cgColor
////        maskLayer.frame = CGRect(x: scrollView.bounds.origin.x, y: scrollView.bounds.origin.y, width: CGFloat(Int(scrollView.bounds.width) * imageV.count), height: scrollView.bounds.height).insetBy(dx: 0, dy: verticalPadding/2)
////        scrollView.layer.mask = maskLayer
////    }
//
//    private func newImageViewWithImage(_ paramImage : UIImage, _ paramFrame: CGRect) -> UIImageView {
//        let result = UIImageView(frame: paramFrame)
//        result.contentMode = .scaleAspectFit
//        result.image = paramImage
//        return result
//    }
//}
//
////MARK: TableView creation and settings
//extension PresentationViewController : UITableViewDelegate, UITableViewDataSource {
//
//    private func createTableView() {
//        self.tableVIew = UITableView(frame: subView.bounds, style: .plain)
//        self.tableVIew.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
//        self.tableVIew.delegate = self
//        self.tableVIew.dataSource = self
//        self.tableVIew.autoresizingMask = [.flexibleWidth, .flexibleHeight]
//        self.tableVIew.backgroundColor = .darkGray
//        self.tableVIew.rowHeight = 80
//        self.tableVIew.isScrollEnabled = false
//        subView.addSubview(tableVIew)
//        scrollView.backgroundColor = .darkGray
//        scrollView.showsVerticalScrollIndicator = false
//        scrollView.isScrollEnabled = false
//        scrollView.addSubview(tableVIew)
//    }
//
//    func numberOfSections(in tableView: UITableView) -> Int {
//        return 4
//    }
//
//    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
//        let verticalPadding: CGFloat = 8
//        let maskLayer = CALayer()
//        maskLayer.cornerRadius = 10
//        maskLayer.backgroundColor = UIColor.black.cgColor
//        maskLayer.frame = CGRect(x: cell.bounds.origin.x, y: cell.bounds.origin.y, width: cell.bounds.width, height: cell.bounds.height).insetBy(dx: 0, dy: verticalPadding/2)
//        cell.layer.mask = maskLayer
//    }
//
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return 1
//    }
//
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
//        cell.imageView?.image = UIImage(named: "item.png")
//        cell.backgroundColor = .gray
//
//        return cell
//    }
//}
//
////MARK: CollectionView creation and settings
//extension PresentationViewController : UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
//    func creatingCollectionView() -> UICollectionView {
//        self.collectionView?.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "collectionCell")
//        self.collectionView?.delegate = self
//        self.collectionView?.dataSource = self
//        self.collectionView?.backgroundColor = .darkGray
//        self.collectionView?.autoresizingMask = [.flexibleWidth, .flexibleHeight]
//        self.collectionView?.showsVerticalScrollIndicator = false
//        return collectionView!
//    }
//
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
//        return CGSize(width: collectionView.frame.size.width/2.2, height: collectionView.frame.size.height/2.2)
//
//    }
//
//    func numberOfSections(in collectionView: UICollectionView) -> Int {
//        return 1
//    }
//
//    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
//        return 4
//    }
//
//    func collectionView(_ collectionView: UICollectionView, willDisplay cell: UICollectionViewCell, forItemAt indexPath: IndexPath) {
//        let verticalPadding: CGFloat = 8
//        let maskLayer = CALayer()
//        maskLayer.cornerRadius = 10
//        maskLayer.backgroundColor = UIColor.black.cgColor
//        maskLayer.frame = CGRect(x: cell.bounds.origin.x, y: cell.bounds.origin.y, width: cell.bounds.width, height: cell.bounds.height).insetBy(dx: 0, dy: verticalPadding/2)
//        cell.layer.mask = maskLayer
//    }
//
//    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
//        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "collectionCell", for: indexPath)
//        cell.addSubview(createImageForCollectionViewCell(cell.contentView))
//        cell.backgroundView?.backgroundColor = .darkGray
//        cell.backgroundColor = .gray
//        return cell
//    }
//
//    private func createImageForCollectionViewCell(_ contentFrame : UIView) -> UIImageView {
//        let image = UIImage(named: "item.png")!
//        let imageView = UIImageView(image: image)
//        imageView.frame = CGRect(x: 5, y: 0, width: contentFrame.frame.size.width, height: contentFrame.frame.size.height)
//        return imageView
//    }
//}
