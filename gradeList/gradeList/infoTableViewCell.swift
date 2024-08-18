//
//  infoTableViewCell.swift
//  gradeList
//
//  Created by Hannah on 16/8/2567 BE.
//

import UIKit

class infoTableViewCell: UITableViewCell {
    
    @IBOutlet weak var courseLabel: UILabel!
    @IBOutlet weak var codeLabel: UILabel!
    @IBOutlet weak var gradeLabel: UILabel!
    @IBOutlet weak var crdLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    func set(contact: gradeInfo){
        courseLabel.text = contact.name
        codeLabel.text = contact.code
        gradeLabel.text = contact.grade
        crdLabel.text = "\(contact.credit) CR."
    }

}
