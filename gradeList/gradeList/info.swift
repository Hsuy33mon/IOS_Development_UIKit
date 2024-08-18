//
//  info.swift
//  gradeList
//
//  Created by Hannah on 16/8/2567 BE.
//

import Foundation
struct info: Codable{
    var name: String
    var grades: [gradeInfo]
}

struct gradeInfo:Codable{
    var code: String
    var credit: Double
    var name: String
    var grade: String
}
