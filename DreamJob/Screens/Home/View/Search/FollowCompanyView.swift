//
//  SeachView.swift
//  MovieFan
//
//  Created by Aditya Sharma on 07/07/25.
//

import SwiftUI

struct FollowCompanyView: View {
    let companies = [
        Company(name: "Google Inc", followers: "1M Followers", imageName: "googleimgejobList"),
        Company(name: "Dribbble Inc", followers: "1M Followers", imageName: "dribbbleIcon"),
        Company(name: "Twitter Inc", followers: "1M Followers", imageName: "twitterIcon"),
        Company(name: "Apple Inc", followers: "1M Followers", imageName: "googlelogo1"),
        Company(name: "Facebook Inc", followers: "1M Followers", imageName: "facebookIcon"),
        Company(name: "Microsoft Inc", followers: "1M Followers", imageName: "microsoftIcon"),
        Company(name: "Google Inc", followers: "1M Followers", imageName: "googleimgejobList"),
        Company(name: "Dribbble Inc", followers: "1M Followers", imageName: "dribbbleIcon"),
        Company(name: "Twitter Inc", followers: "1M Followers", imageName: "twitterIcon"),
        Company(name: "Apple Inc", followers: "1M Followers", imageName: "googlelogo1"),
        Company(name: "Facebook Inc", followers: "1M Followers", imageName: "facebookIcon"),
        Company(name: "Microsoft Inc", followers: "1M Followers", imageName: "microsoftIcon")
    ]
    
    let columns = [
        GridItem(.fixed(180), spacing: 10),
        GridItem(.fixed(180), spacing: 10)
    ]
    
    var body: some View {
        ScrollView {
            HStack {
                Spacer(minLength: 10)
                LazyVGrid(columns: columns, spacing: 16) {
                    ForEach(companies) { company in
                        VStack(spacing: 12) {
                            Image(company.imageName)
                                .resizable()
                                .scaledToFit()
                                .frame(width: 50, height: 50)
                            
                            Text(company.name)
                                .font(.headline)
                                .foregroundColor(.black)
                            
                            Text(company.followers)
                                .font(.subheadline)
                                .foregroundColor(.gray)
                            
                            Button(action: {
                                print("Follow \(company.name)")
                            }) {
                                Text("Follow")
                                    .fontWeight(.semibold)
                                    .foregroundColor(Color.purple)
                                    .padding(.horizontal, 30)
                                    .padding(.vertical, 8)
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 25)
                                            .stroke(Color.purple, lineWidth: 1.5)
                                    )
                            }
                        }
                        .padding(.horizontal, 30)
                        .padding(.vertical, 30)
                        .background(Color.white)
                        .cornerRadius(16)
                    }
                }
                Spacer(minLength: 10)
            }
            .padding(.vertical)
        }
        .background(Color.gray.opacity(0.1))
    }
}

#Preview {
    FollowCompanyView()
}
