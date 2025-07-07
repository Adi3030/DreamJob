//
//  MessageView.swift
//  MovieFan
//
//  Created by Aditya Sharma on 07/07/25.
//

import SwiftUI

struct MessageView: View {
    var body: some View {
        VStack(spacing: 24) {
            Spacer()
            
            //  Envelope Image
            Image("noChatImage")
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 200)

            // "No Message" title
            Text("No Message")
                .font(.title2)
                .fontWeight(.semibold)
                .foregroundColor(.bg)

            // Description
            Text("You currently have no incoming messages thank you")
                .font(.subheadline)
                .foregroundColor(.secondary)
                .multilineTextAlignment(.center)
                .padding(.horizontal)

            Spacer()

            // CTA Button
            Button(action: {
                // Create message action
            }) {
                Text("CREATE A MESSAGE")
                    .fontWeight(.semibold)
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(.bg)
                    .foregroundColor(.white)
                    .cornerRadius(12)
            }
            .padding(.horizontal, 32)
            .padding(.bottom, 200)
        }
        .background(Color(UIColor.systemGray6).ignoresSafeArea())
    }
}

#Preview {
    MessageView()
}
