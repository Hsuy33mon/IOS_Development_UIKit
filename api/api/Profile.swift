//
//  Profile.swift
//  api
//
//  Created by Hannah on 10/8/2567 BE.
//

import Foundation

struct Profile: Codable{
    var firstname: String
    var lastname: String
    var age: Int
    var gender: String
    var devices: [Device]
}

struct Device: Codable{
    var type: String
    var model: String
}
