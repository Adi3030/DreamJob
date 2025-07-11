//
//  AuthStack.swift
//  GetDreamJob
//
//  Created by Aditya Sharma on 07/07/25.
//

import SwiftUI

struct AuthStack: View {
    
    @State var routerPath = RouterPath()
    
    var body: some View {
        NavigationStack(path: $routerPath.path) {
            Onboard()
                .withAppRouter()
        }
        .environment(routerPath)
    }
}
