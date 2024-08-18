//
//  RestaurantDetailViewController.swift
//  midterm
//
//  Created by Hannah on 10/8/2567 BE.
//

import UIKit

class RestaurantDetailViewController: UIViewController {
    
    @IBOutlet weak var coverimg: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var locationLabel: UILabel!
    @IBOutlet weak var ratingLabel: UILabel!
    @IBOutlet weak var star1: UIImageView!
    @IBOutlet weak var star2: UIImageView!
    @IBOutlet weak var star3: UIImageView!
    @IBOutlet weak var star4: UIImageView!
    @IBOutlet weak var star5: UIImageView!
    @IBOutlet weak var openingHourLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var favoriteButton: UIButton!
    @IBOutlet weak var descrptionLabel: UILabel!
    
    var restaurant: Restaurant?


    override func viewDidLoad() {
        super.viewDidLoad()

        if let restaurant {
            nameLabel.text = restaurant.name
            locationLabel.text = restaurant.location
            ratingLabel.text = "\(restaurant.rating)"
            openingHourLabel.text = restaurant.openingTime
            priceLabel.text = restaurant.price
            coverimg.image = UIImage(named: restaurant.images[0])
            descrptionLabel.text = restaurant.description
        }
    }
    
    @IBAction func favoriteClick(_ sender: UIButton){
        
    }

}
