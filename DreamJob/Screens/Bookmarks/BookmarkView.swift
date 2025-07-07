//
//  BookmarkView.swift
//  MovieFan
//
//  Created by Aditya Sharma on 07/07/25.
//
import SwiftUI

struct BookmarkView: View {
    // Sample job data
    let jobs = [
        Job(title: "iOS Developer", company: "Apple Inc.", location: "California, USA", salary: "$12K", tags: ["Mobile", "Full Time"], icon: "googleimgejobList"),
        Job(title: "Backend Engineer", company: "Google", location: "New York, USA", salary: "$15K", tags: ["Backend", "Remote"], icon: "facebookIcon"),
        Job(title: "UI/UX Designer", company: "Figma", location: "San Francisco, USA", salary: "$10K", tags: ["Design", "Onsite"], icon: "dribbbleIcon"),
        Job(title: "Product Manager", company: "Amazon", location: "Seattle, USA", salary: "$18K", tags: ["Management", "Full Time"], icon: "microsoftIcon"),
        Job(title: "QA Tester", company: "Meta", location: "Austin, USA", salary: "$9K", tags: ["QA", "Contract"], icon: "twitterIcon")
    ]
    
    var body: some View {
           NavigationStack {
               ScrollView {
                   VStack(alignment: .leading, spacing: 16) {
                       // Top Title Row
                       HStack {
                           Text("Saved Job")
                               .font(.title)
                               .fontWeight(.regular)
                               .foregroundColor(.black)
                               .frame(maxWidth: .infinity)
                               .overlay(
                                HStack {
                                    Spacer()
                                    Text("Delete all")
                                        .font(.title3)
                                        .foregroundColor(.textColorYellow)
                                }
                               )
                               .padding(.horizontal)
                               .padding(.top)
                       }
                       
                       // Job Cards
                       LazyVStack(spacing: 16) {
                           ForEach(jobs) { job in
                               JobRow(job: job, trailingIcon: "ellipsis")
                           }
                       }
                   }
                   .padding(.bottom)
               }
               .background(Color.gray.opacity(0.3))
           }
    }
}
#Preview {
    BookmarkView()
}
