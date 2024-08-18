//
//  DetailsViewController.swift
//  TopAppChart_a6
//
//  Created by Hannah on 19/7/2567 BE.
//

import UIKit

class DetailsViewController: UIViewController {

    @IBOutlet weak var iconImage: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var shortDescriptionLabel: UILabel!
    @IBOutlet weak var fullDescriptionLabel: UILabel!
    @IBOutlet weak var ratingLabel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!
    @IBOutlet weak var positionLabel: UILabel!
    @IBOutlet weak var getbtn: UIButton!
    @IBOutlet weak var scrollView:UIScrollView!
    
    var contact: AppInfo?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let titleLabel = UILabel()
        titleLabel.textAlignment = .center
        titleLabel.text = contact?.appName
        titleLabel.font = UIFont.systemFont(ofSize: 20,weight: .bold)
        self.navigationItem.titleView = titleLabel
        self.navigationItem.largeTitleDisplayMode = .never
        self.navigationController?.navigationBar.tintColor = UIColor.black
        
        iconImage.clipsToBounds = true
        iconImage.layer.cornerRadius = 20
//        title = contact?.appName
        
        getbtn.clipsToBounds = true
        getbtn.layer.cornerRadius = 12
        
        if let contact{
            nameLabel.text = contact.appName
            shortDescriptionLabel.text = contact.shortDescription
            fullDescriptionLabel.text = contact.detailedDescription
            ratingLabel.text = String(contact.rating)
            ageLabel.text = contact.age
            positionLabel.text = "# \(String(contact.topChartPosition))"
            iconImage.image = UIImage(named: contact.appIcon)
            setupScrollView()
        }
    }
    func setupScrollView() {
        guard let screenshotGallery = contact?.screenshotGallery else {return}
            scrollView.isPagingEnabled = true
            scrollView.showsHorizontalScrollIndicator = false
            
            let scrollViewWidth = scrollView.frame.width
            let scrollViewHeight = scrollView.frame.height
            
        for (index, image) in screenshotGallery.enumerated() {
            if let images = UIImage(named: image) {
                       let imageView = UIImageView(image: images)
                       imageView.contentMode = .scaleAspectFit
                       let xPosition = scrollViewWidth * CGFloat(index)
                       imageView.frame = CGRect(x: xPosition, y: 0, width: scrollViewWidth, height: scrollViewHeight)
                       scrollView.addSubview(imageView)
                   } else {
                       print("Error: Image named \(image) not found")
                   }
            }
            
        scrollView.contentSize = CGSize(width: scrollViewWidth * CGFloat(screenshotGallery.count), height: scrollViewHeight)
        }
}
