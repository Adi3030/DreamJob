//
//  UserProfile.swift
//  GetDreamJob
//
//  Created by Aditya Sharma on05/07/25.
//

import SwiftUI

struct UserProfile: Identifiable, Codable {
    var id = UUID()
    let name: String
    let location: String
    let followers: String
    let following: String
    let aboutMe: String
    let workExperience: [WorkExperience]
    let education: [Education]
    let languages: [String]
    let resume: String
    let appreciations: [Appreciation]
    let skills: [String]
    let profileImage: String // Name of image asset
    
    enum CodingKeys: String, CodingKey {
        case name, location, followers, following, aboutMe, workExperience, education, languages, resume, appreciations, skills, profileImage
    }
}

struct WorkExperience: Identifiable, Hashable, Codable {
    var id = UUID()
    let title: String
    let company: String
    let period: String
    let duration: String
    
    enum CodingKeys: String, CodingKey {
        case title, company, period, duration
    }
}

struct Education: Identifiable, Codable {
    var id = UUID()
    let degree: String
    let institution: String
    let year: String
    
    enum CodingKeys: String, CodingKey {
        case degree, institution, year
    }
}

struct Appreciation: Identifiable, Codable {
    var id = UUID()
    let provider: String
    let title: String
    let year: String
    
    enum CodingKeys: String, CodingKey {
        case provider, title, year
    }
}

// MARK: - Mock Data

let mockUser = UserProfile(
    name: "Aditya Sharma",
    location: "Noida, India",
    followers: "12K",
    following: "10K",
    aboutMe: "iOS Developer at RSSC Tech PVT LTD.",
    workExperience: [
        WorkExperience(
            title: "iOS Developer",
            company: "RSSC Tech PVT LTD.",
            period: "March 2022 - Present",
            duration: "3 Yr 4 Mths"
        )
    ],
    education: [
        Education(
            degree: "MCA (Master of Computer Application)",
            institution: "Swift University",
            year: "2011 - 2015"
        )
    ],
    languages: ["English", "Hindi"],
    resume: "Aditya_resume.pdf",
    appreciations: [
        Appreciation(provider: "", title: " ", year: "")
    ],
    skills: ["UIKit", "SwiftUI", "Firebase" ,"Core Data", "Map-Kit" , "Google Maps SDK", "APNs"],
    profileImage: "userProfile"
)
