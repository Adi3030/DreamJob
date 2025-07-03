//
//  ContentView.swift
//  MovieFan
//
//  Created by Aditya Sharma on 01/07/25.
//

import SwiftUI

struct LaunchScreenView: View {
    @State private var isActive = false

    var body: some View {
        NavigationStack {
            ZStack {
                Color.bg
                    .ignoresSafeArea()

                VStack {
                    Image("Group")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 100, height: 100)

                    Text("JobSpot")
                        .font(.largeTitle)
                        .foregroundStyle(.white)
                }
            }
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                    isActive = true
                }
            }
            .navigationDestination(isPresented: $isActive) {
                FindDreamJobView()
            }
        }
    }
}

struct CircleArrowButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .frame(width: 60, height: 60)
            .background(
                Circle()
                    .fill(.bg)
                    .opacity(configuration.isPressed ? 0.7 : 1)
            )
            .foregroundColor(.white)
            .scaleEffect(configuration.isPressed ? 0.95 : 1)
            .animation(.easeInOut(duration: 0.2), value: configuration.isPressed)
    }
}
#Preview {
    LaunchScreenView()
}
