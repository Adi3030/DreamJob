//
//  AppButton.swift
//  GetDreamJob
//
//  Created by Aditya Sharma on03/07/25.
//

import SwiftUI

struct AppButton: View {
    var title: String
    var backgroundColor: Color = .darkBlue
    var action: () -> Void
    
    var body: some View {
        Button(action: action) {
            Text(title)
                .foregroundColor(.white)
                .customFont(.medium)
                .frame(maxWidth: .infinity)
                .frame(height: 48)
                .background(backgroundColor)
                .cornerRadius(8)
        }
    }
}
