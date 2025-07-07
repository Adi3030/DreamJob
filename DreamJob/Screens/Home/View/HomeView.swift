//
//  HomeView.swift
//  MovieFan
//
//  Created by Aditya Sharma on 04/07/25.
//
import SwiftUI

struct GreetingHeaderView: View {
    var name: String = "Orlando Diggs"
    var imageName: String = "usrProfile"

    var body: some View {
        HStack(alignment: .top) {
            VStack(alignment: .leading, spacing: 4) {
                Text("Hello")
                Text(name)
                
            }
            .font(.title2)
            .fontWeight(.regular)
            
            Spacer()
            
            Image(imageName)
                .resizable()
                .scaledToFill()
                .frame(width: 50, height: 50)
                .clipShape(Circle())
        }
        .padding(.horizontal)
    }
}
struct PromoBannerView: View {
    var body: some View {
        ZStack(alignment: .topTrailing) {
            Color.bg
                .frame(height: 150)
                .cornerRadius(12)

            HStack {
                VStack(alignment: .leading, spacing: 8) {
                    Text("50% off")
                        .foregroundColor(.white)
                        .font(.title2)
                        .bold()

                    Text("take any courses")
                        .foregroundColor(.white)
                        .font(.subheadline)

                    Button("Join Now") {}
                        .padding(.horizontal)
                        .padding(.vertical, 6)
                        .background(Color.orange)
                        .foregroundColor(.white)
                        .cornerRadius(8)
                }
                .offset(y: -30)

                Spacer()

                Image("women")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(height: 180)
                    .offset(y: -47)
            }
            .padding()
        }
        .padding(.horizontal)
        .padding(.bottom, -52)    }
}

struct JobStatCardView: View {
    var icon: String? = nil
    var value: String
    var label: String
    var color: Color

    var body: some View {
        VStack(spacing: 2) {
            if let icon = icon {
                Image(icon)
                    .resizable()
                    .frame(width: 60, height: 60)
            }
            Text(value)
                .font(.title2)
                .fontWeight(.bold)
                .foregroundColor(.black)

            Text(label)
                .font(.title2)
                .foregroundColor(.black)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
//        .padding()
        .background(color.opacity(0.3))
        .cornerRadius(12)
    }
}



struct HomeView: View {
    let jobs = [
        Job(title: "iOS Developer", company: "Apple Inc.", location: "California, USA", salary: "$12K", tags: ["Mobile", "Full Time"], icon: "googleimgejobList"),
        Job(title: "Backend Engineer", company: "Google", location: "New York, USA", salary: "$15K", tags: ["Backend", "Remote"], icon: "facebookIcon"),
        Job(title: "UI/UX Designer", company: "Figma", location: "San Francisco, USA", salary: "$10K", tags: ["Design", "Onsite"], icon: "dribbbleIcon"),
        Job(title: "Product Manager", company: "Amazon", location: "Seattle, USA", salary: "$18K", tags: ["Management", "Full Time"], icon: "microsoftIcon"),
        Job(title: "QA Tester", company: "Meta", location: "Austin, USA", salary: "$9K", tags: ["QA", "Contract"], icon: "twitterIcon")
    ]
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 12) { // 👈 tighter spacing
                GreetingHeaderView()
                
                PromoBannerView()
                
                Text("Find Your Job")
                    .font(.title)
                    .padding(.horizontal)
                
                HStack(alignment: .top, spacing: 16) {
                    // Left card with icon
                    JobStatCardView(
                        icon: "remotejob", // your asset
                        value: "44.5k",
                        label: "Remote Job",
                        color: .blue
                    )
                    .frame(width: 160, height: 190)
                    .offset(y: -30)
                    
                    
                    // Right vertical stack of two cards
                    VStack(spacing: 16) {
                        JobStatCardView(
                            value: "66.8k",
                            label: "Full Time",
                            color: .purple
                        )
                        .frame(width: 200, height: 90)
                        
                        JobStatCardView(
                            value: "38.9k",
                            label: "Part Time",
                            color: .orange
                        )
                        .frame(width: 200, height: 90)
                    }
                    .offset(y: -30)
                }
                .padding(.horizontal)
                .padding(.top, 32)
                HStack {
                    Text("Recent Job List")
                        .font(.title2)
                        .foregroundColor(.bg)
                    Spacer()

                    NavigationLink(destination: AllJobsView()) { // 👈 Replace with your destination
                        Text("See More")
                            .font(.title2)
                            .foregroundColor(.bg)
                    }
                }
                .padding(.horizontal)
                .offset(y: -20)

                    ForEach(jobs) { job in
                        JobRow(job: job)
                            .padding(.horizontal)
                            .offset(y: -20)
                    }
                }
            .padding(.top)
        }
        .background(Color.red.opacity(0.1))
    }
}




//struct HomeView: View {
//    // Sample job data
//    let jobs = [
//        Job(title: "iOS Developer", company: "Apple Inc.", location: "California, USA", salary: "$12K", tags: ["Mobile", "Full Time"], icon: "googleimgejobList"),
//        Job(title: "Backend Engineer", company: "Google", location: "New York, USA", salary: "$15K", tags: ["Backend", "Remote"], icon: "facebookIcon"),
//        Job(title: "UI/UX Designer", company: "Figma", location: "San Francisco, USA", salary: "$10K", tags: ["Design", "Onsite"], icon: "dribbbleIcon"),
//        Job(title: "Product Manager", company: "Amazon", location: "Seattle, USA", salary: "$18K", tags: ["Management", "Full Time"], icon: "microsoftIcon"),
//        Job(title: "QA Tester", company: "Meta", location: "Austin, USA", salary: "$9K", tags: ["QA", "Contract"], icon: "twitterIcon")
//    ]
//    
//    var body: some View {
//           NavigationStack {
//               ScrollView {
//                   VStack(alignment: .leading, spacing: 16) {
//                       // Top Title Row
//                       HStack {
//                           VStack(alignment: .leading, spacing: 2) {
//                               Text("Hello")
//                               Text("Orlando Diggs")
//                           }
//                           .font(.title)
//                           .fontWeight(.medium)
//                           .foregroundColor(.black)
//
//                           Spacer()
//
//                           Image("usrProfile")
//                               .resizable()
//                               .scaledToFill()
//                               .frame(width: 50, height: 50)
//                               .clipShape(Circle()) // Optional: make it circular
//                       }
//                       .padding(.horizontal)
//
//                       // Job Cards
//                       LazyVStack(spacing: 16) {
//                           ForEach(jobs) { job in
//                               JobRow(job: job)
//                                   .padding(.horizontal)
//                           }
//                       }
//                   }
//                   .padding(.bottom)
//               }
//               .background(Color.gray.opacity(0.3))
//           }
//    }
//}

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
