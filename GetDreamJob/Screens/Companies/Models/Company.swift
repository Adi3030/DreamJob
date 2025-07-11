//
//  Company.swift
//  GetDreamJob
//
//  Created by Aditya Sharma on03/07/25.
//

import SwiftUI

struct Company: Identifiable, Codable {
    let id = UUID()
    let logoName: String
    let companyName: String
    let followers: String
    var isFollowed: Bool
    
    enum CodingKeys: String, CodingKey {
        case logoName
        case companyName
        case followers
        case isFollowed
    }
}
