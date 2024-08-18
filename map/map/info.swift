//
//  info.swift
//  map
//
//  Created by Hannah on 17/8/2567 BE.
//

import Foundation

struct places: Codable{
    var Places: [placeInfo]
}

struct placeInfo: Codable{
    var FacultyName: String
    var Abbreviation: String
    var ImageLogoName: String
    var LocationLat: Double
    var LocationLong: Double
}
