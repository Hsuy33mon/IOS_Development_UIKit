//
//  detailsTableViewCell.swift
//  map
//
//  Created by Hannah on 17/8/2567 BE.
//

import UIKit
import CoreLocation

class detailsTableViewCell: UITableViewCell {
    
    @IBOutlet weak var logo: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var distance: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()

    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    func set(information: placeInfo){
        logo.image = UIImage(named: information.ImageLogoName)
        nameLabel.text = "Faculty Name: \(information.FacultyName)"
        let abacCenterLocation = CLLocation(latitude: 13.612320, longitude: 100.836808)
        let placeLocation = CLLocation(latitude: information.LocationLat, longitude: information.LocationLong)
        let dist = abacCenterLocation.distance(from: placeLocation)
        let distanceTwo = String(format: "%.2f", dist)
        distance.text = "Distance: \(distanceTwo) meter"
    }
}
