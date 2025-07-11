//
//  AuthProvider.swift
//  GetDreamJob
//
//  Created by Aditya Sharma on 07/07/25.
//

import SwiftUI
import Combine

@MainActor
class AuthProvider: ObservableObject {
    @Published var authState: AuthState = AuthState.loggedOut
    
    init() {
        autoLogin()
    }
    
    func autoLogin() {
        if UserDefaults.sharedDefaults.bool(forKey: "isLoggedIn") == true {
            self.authState = .loggedIn
        }
    }
    
}

enum AuthState {
    case pending
    case loggedIn
    case loggedOut
}
