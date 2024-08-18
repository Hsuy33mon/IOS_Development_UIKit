//
//  RestaurantCell.swift
//  midterm
//
//  Created by Hannah on 10/8/2567 BE.
//

import UIKit

class RestaurantCell: UITableViewCell {
    
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
    
    var restaurantName : String = ""
    var isFavorite: Bool = true

    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
    @IBAction func favoriteClicked(_ sender: UIButton){
        var favorites = UserDefaults.standard.stringArray(forKey: "favorite") ?? []
        isFavorite.toggle()
        if isFavorite {
            if !favorites.contains(restaurantName){
                favorites.append(restaurantName)
                UserDefaults.standard.setValue(favorites, forKey: "favorite")
            }
            else{
                if favorites.contains(restaurantName){
                    favorites.removeAll(where: { $0 == restaurantName })
                    UserDefaults.standard.setValue(favorites, forKey: "favorite")
                }
            }
        }
        if isFavorite{
            favoriteButton.setImage(UIImage(systemName: "heart.fill"), for: .normal)
        } else {
            favoriteButton.setImage(UIImage(systemName: "heart"), for: .normal)
        }
    }
    
    func set(restaurant: Restaurant){
        restaurantName = restaurant.name
        
        nameLabel.text = restaurant.name
        locationLabel.text = restaurant.location
        ratingLabel.text = "\(restaurant.rating)"
        openingHourLabel.text = restaurant.openingTime
        priceLabel.text = restaurant.price
        coverimg.image = UIImage(named: restaurant.images[0])
        let stars = Int(restaurant.rating)
        switch stars {
        case 1:
            star1.isHidden = false
            star2.isHidden = true
            star3.isHidden = true
            star4.isHidden = true
            star5.isHidden = true
        case 2:
            star1.isHidden = false
            star2.isHidden = false
            star3.isHidden = true
            star4.isHidden = true
            star5.isHidden = true
        case 3:
            star1.isHidden = false
            star2.isHidden = false
            star3.isHidden = false
            star4.isHidden = true
            star5.isHidden = true
        case 4:
            star1.isHidden = false
            star2.isHidden = false
            star3.isHidden = false
            star4.isHidden = false
            star5.isHidden = true
        case 5:
            star1.isHidden = false
            star2.isHidden = false
            star3.isHidden = false
            star4.isHidden = false
            star5.isHidden = false
        default:
            star1.isHidden = false
            star2.isHidden = false
            star3.isHidden = false
            star4.isHidden = false
            star5.isHidden = false
        }
        let favorites = UserDefaults
            .standard.stringArray(forKey: "favorite") ?? []
        if favorites.contains(restaurantName){
            favoriteButton.setImage(UIImage(systemName: "heart.fill"), for: .normal)
        } else {
            favoriteButton.setImage(UIImage(systemName: "heart"), for: .normal)
        }
    }

}
