//
//  MainTabView.swift
//  MovieFan
//
//  Created by Aditya Sharma on 04/07/25.
//

import SwiftUI

struct MainTabView: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Image("homeUnSelect")
                    Text("Home")
                }
                .tag(0)

            FollowCompanyView()
                .tabItem {
                    Image("reconnectUnSelect")
                    Text("Search")
                }
                .tag(1)

            NotificationsView()
                .tabItem {
                    Image(systemName: "plus.circle")
                    Text("Alerts")
                }
                .tag(2)

            MessageView()
                .tabItem {
                    Image("chatUnSelect")
                    Text("Favorites")
                }
                .tag(3)

            BookmarkView()
                .tabItem {
                    Image("bookmarkUnSelect")
                    Text("Profile")
                }
                .tag(4)
        }
        .accentColor(.blue) // Optional: changes the selected tab color
    }
    
}
#Preview {
    MainTabView()
}
