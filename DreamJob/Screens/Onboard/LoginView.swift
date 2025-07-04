//
//  Untitled.swift
//  MovieFan
//
//  Created by Aditya Sharma on 04/07/25.
//
import SwiftUI

struct LoginView: View {
    @State private var email = ""
    @State private var password = ""
    @State private var navigateToHome = false

    var body: some View {
        NavigationStack {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 20) {
                    Text("Welcome Back")
                        .font(.system(size: 40, weight: .medium))
                        .foregroundStyle(.bg)
                        .padding(.top, 10)
                    
                    Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit.")
                        .font(.callout)
                        .multilineTextAlignment(.center)
                        .foregroundColor(.secondary)
                    
                    ReusableTextField(title: "Email", placeholder: "Enter your email", text: $email)
                    
                    ReusableTextField(title: "Password", placeholder: "Enter your password", text: $password, isSecure: true)
                    
                    HStack() {
                        Text("Remember me")
                            .foregroundColor(.gray)
                            .font(.system(size: 17))
                            .padding(.trailing, 60)
                        Text("Forgot Password?")
                            .foregroundColor(.bg)
                            .font(.system(size: 17))
                            .padding(.trailing, -20)
                    }.padding(.vertical)
                    
                    CustomButton(
                        title: "LOGIN",
                        backgroundColor: .bg
                    ) {
                        navigateToHome = true
                    }
                    CustomButton(title: "SIGN IN WITH GOOGLE",
                                 iconName: "googleimgejobList",
                                 backgroundColor: .lightPurple,
                                 textColor: .black
                    ) {
                        // handle Sign in action here
                    }
                    Text("You don't have an account?  ")
                    +
                    Text("Sign up")
                        .font(.system(size: 17, weight: .bold, design: .default))
                        .underline()
                        .foregroundColor(.yellow)
                }
                .padding()
            }
            .navigationDestination(isPresented: $navigateToHome) {
                MainTabView()
            }
        }
    }
}
#Preview {
    LoginView()
}
