//
//  AllJobsView.swift
//  MovieFan
//
//  Created by Aditya Sharma on 07/07/25.
//
import SwiftUI
 
struct AllJobsView: View {
    var body: some View {
        NavigationStack {
            ScrollView {

                let jobs = [
                    Job(title: "iOS Developer", company: "Apple Inc.", location: "California, USA", salary: "$12K", tags: ["Mobile", "Full Time"], icon: "googleimgejobList"),
                    Job(title: "Backend Engineer", company: "Google", location: "New York, USA", salary: "$15K", tags: ["Backend", "Remote"], icon: "facebookIcon"),
                    Job(title: "UI/UX Designer", company: "Figma", location: "San Francisco, USA", salary: "$10K", tags: ["Design", "Onsite"], icon: "dribbbleIcon"),
                    Job(title: "Product Manager", company: "Amazon", location: "Seattle, USA", salary: "$18K", tags: ["Management", "Full Time"], icon: "microsoftIcon"),
                    Job(title: "QA Tester", company: "Meta", location: "Austin, USA", salary: "$9K", tags: ["QA", "Contract"], icon: "twitterIcon")
                ]
                
                ForEach(jobs) { job in
                    JobRow(job: job)
                        .padding(.horizontal)
                }
            }.background(Color.black.opacity(0.1))
        }
        
    }
}
#Preview {
    AllJobsView()
}
