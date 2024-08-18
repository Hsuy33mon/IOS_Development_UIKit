//
//  ContactCell.swift
//  TopAppChart_a6
//
//  Created by Hannah on 13/7/2567 BE.
//

import UIKit

class ContactCell: UITableViewCell {
    
    @IBOutlet weak var iconImage: UIImageView!
    @IBOutlet weak var appnameLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var getBtn:UIButton!

    override func awakeFromNib() {
        super.awakeFromNib()
        
//        iconImage.contentMode = .scaleAspectFill
        iconImage.clipsToBounds = true
        iconImage.layer.cornerRadius = 20
        getBtn.clipsToBounds = true
        getBtn.layer.cornerRadius = 13
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    func set(contact: AppInfo){
        appnameLabel.text = contact.appName
        descriptionLabel.text = contact.shortDescription
        iconImage.image = UIImage(named: contact.appIcon)
    }

}
