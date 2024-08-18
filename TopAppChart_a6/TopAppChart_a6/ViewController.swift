////
////  ViewController.swift
////  TopAppChart_a6
////
////  Created by Hannah on 12/7/2567 BE.
////
//
//import UIKit
//
//class ViewController: UIViewController {
//    
//    @IBOutlet weak var iconImage: UIImageView!
//    @IBOutlet weak var nameLabel: UILabel!
//    @IBOutlet weak var shortDescriptionLabel: UILabel!
//    @IBOutlet weak var fullDescriptionLabel: UILabel!
//    @IBOutlet weak var ratingLabel: UILabel!
//    @IBOutlet weak var ageLabel: UILabel!
//    @IBOutlet weak var positionLabel: UILabel!
//    @IBOutlet weak var ss1: UIImageView!
//    @IBOutlet weak var ss2: UIImageView!
//    @IBOutlet weak var ss3: UIImageView!
//    @IBOutlet weak var ss4: UIImageView!
//    @IBOutlet weak var ss5: UIImageView!
//    @IBOutlet weak var getbtn: UIButton!
//    
//    var contact: AppInfo?
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        
//        let titleLabel = UILabel()
//        titleLabel.textAlignment = .center
//        titleLabel.text = contact?.appName
//        titleLabel.font = UIFont.systemFont(ofSize: 20,weight: .bold)
//        self.navigationItem.titleView = titleLabel
//        self.navigationItem.largeTitleDisplayMode = .never
//        self.navigationController?.navigationBar.tintColor = UIColor.black
//        
//        iconImage.clipsToBounds = true
//        iconImage.layer.cornerRadius = 20
////        title = contact?.appName
//        
//        getbtn.clipsToBounds = true
//        getbtn.layer.cornerRadius = 12
//        
//        if let contact{
//            nameLabel.text = contact.appName
//            shortDescriptionLabel.text = contact.shortDescription
//            fullDescriptionLabel.text = contact.detailedDescription
//            ratingLabel.text = String(contact.rating)
//            ageLabel.text = contact.age
//            positionLabel.text = "# \(String(contact.topChartPosition))"
//            iconImage.image = UIImage(named: contact.appIcon)
//            for i in 0..<min(contact.screenshotGallery.count,5) {
//                print("Assigning image at index \(i)")
//                switch i {
//                case 0:
//                    ss1.image = UIImage(named: contact.screenshotGallery[0])
//                case 1:
//                    ss2.image = UIImage(named: contact.screenshotGallery[1])
//                case 2:
//                    ss3.image = UIImage(named: contact.screenshotGallery[2])
//                case 3:
//                    ss4.image = UIImage(named: contact.screenshotGallery[3])
//                case 4:
//                    ss5.image = UIImage(named: contact.screenshotGallery[4])
//                default:
//                    break
//                }
//            }
//        }
//        
//    }
//
//
//}
//
