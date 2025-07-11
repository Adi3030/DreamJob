//
//  User.swift
//  GetDreamJob
//
//  Created by Aditya Sharma on 07/07/25.
//

import SwiftUI

struct User: Codable, Hashable, Identifiable {
    let id: Int
    let name: String
    let email: String
}
