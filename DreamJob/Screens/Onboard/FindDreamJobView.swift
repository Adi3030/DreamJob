//
//  SwiftUIView.swift
//  MovieFan
//
//  Created by Aditya Sharma on 03/07/25.
//

import SwiftUI

struct FindDreamJobView: View {
    @State private var navigateToLogin = false

    var body: some View {
        NavigationStack {
            ZStack {
                Color.white.ignoresSafeArea()
                
                VStack(spacing: 20) {
                    Image("bgJobSpot1")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 200, height: 400)

                    VStack(alignment: .leading) {
                        (
                            Text("Find Your Dream ")
                                .font(.system(size: 40, weight: .bold))
                            +
                            Text("Job Here")
                                .font(.system(size: 40, weight: .bold))
                                .underline()
                                .foregroundColor(.yellow)
                        )
                        .foregroundStyle(.black)
                        .lineLimit(3)
                        .multilineTextAlignment(.leading)
                        .padding(.top, 20)
                        .padding(.horizontal, 10)

                        Text("Explore all the most exciting job roles based on your skills and interests.")
                            .foregroundStyle(.black)
                            .lineLimit(3)
                            .multilineTextAlignment(.leading)
                            .padding(.top, 10)
                            .padding(.horizontal, 10)
                    }

                    HStack {
                        Spacer()
                        Button(action: {
                            navigateToLogin = true
                        }) {
                            Image(systemName: "arrow.right")
                                .font(.system(size: 24, weight: .bold))
                        }
                        .buttonStyle(CircleArrowButtonStyle())
                        .padding(.trailing, 20)
                        .padding(.top, 10)
                    }

                    Spacer()
                }
            }
            // ✅ Modern way to navigate using a Bool
            .navigationDestination(isPresented: $navigateToLogin) {
                LoginView()
            }
        }
    }
}


 
#Preview {
    FindDreamJobView()
}
