//
//  Job.swift
//  MovieFan
//
//  Created by Aditya Sharma on 04/07/25.
//

import Foundation

struct Job: Identifiable {
    let id = UUID()
    let title: String
    let company: String
    let location: String
    let salary: String
    let tags: [String]
    let icon: String
}

