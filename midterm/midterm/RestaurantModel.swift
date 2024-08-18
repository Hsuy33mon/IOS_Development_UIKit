//
//  RestaurantModel.swift
//  midterm
//
//  Created by Hannah on 10/8/2567 BE.
//

import Foundation

struct Restaurant: Codable{
    var name: String
    var location: String
    var description: String
    var rating: Double
    var openingTime: String
    var price: String
    var images: [String]
}
struct RestaurantModel: Codable{
    var items: [Restaurant]
}
