//
//  HomeView.swift
//  MovieFan
//
//  Created by Aditya Sharma on 04/07/25.
//
import SwiftUI

struct HomeView: View {
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
                           Text("Recent Job List")
                               .font(.title)
                               .fontWeight(.regular)
                               .foregroundColor(.black)

                           Spacer()

                           Text("See More")
                               .font(.title3)
                               .foregroundColor(.black)
                       }
                       .padding(.horizontal)
                       .padding(.top)

                       // Job Cards
                       LazyVStack(spacing: 16) {
                           ForEach(jobs) { job in
                               JobRow(job: job)
                                   .padding(.horizontal)
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
    HomeView()
}


























// below code will place in seperate file
struct SearchView: View {
    var body: some View {
        Text("Search Screen")
    }
}

struct NotificationsView: View {
    var body: some View {
        Text("Add")
    }
}

struct FavoritesView: View {
    var body: some View {
        Text("Messgae")
    }
}

struct ProfileView: View {
    var body: some View {
        Text("Bookmarks")
    }
}
