//
//  swift_hireApp.swift
//  GetDreamJob
//
//  Created by Aditya Sharma on02/07/25.
//

import SwiftUI

@main
struct MainApp: App {
    
    @StateObject var authProvider = AuthProvider()
    @State private var showSplashScreen: Bool = true
    
    var body: some Scene {
        WindowGroup {
            ZStack {
                AppRoot()
                    .environmentObject(authProvider)
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(.bgMainView)
            .ignoresSafeArea()
        }
    }
}
