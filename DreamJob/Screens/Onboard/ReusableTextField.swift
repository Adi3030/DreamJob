//
//  ReusableTextField.swift
//  MovieFan
//
//  Created by Aditya Sharma on 04/07/25.
//

import SwiftUI

struct ReusableTextField: View {
    var title: String
    var placeholder: String
    @Binding var text: String
    var isSecure: Bool = false

    @State private var isPasswordVisible: Bool = false

    var body: some View {
        VStack(alignment: .leading, spacing: 6) {
            Text(title)
                .font(.headline)
                .foregroundColor(.gray)

            ZStack(alignment: .trailing) {
                if isSecure && !isPasswordVisible {
                    SecureField(placeholder, text: $text)
                        .padding()
                        .background(Color(.systemGray6))
                        .cornerRadius(10)
                } else {
                    TextField(placeholder, text: $text)
                        .padding()
                        .background(Color(.systemGray6))
                        .cornerRadius(10)
                }

                if isSecure {
                    Button(action: {
                        isPasswordVisible.toggle()
                    }) {
                        Image(systemName: isPasswordVisible ? "eye.slash.fill" : "eye.fill")
                            .foregroundColor(.gray)
                            .padding(.trailing, 12)
                    }
                }
            }
        }
    }
}
struct CustomButton: View {
    var title: String
    var iconName: String? = nil
    var backgroundColor: Color = .blue
    var textColor: Color = .white
    var cornerRadius: CGFloat = 10
    var action: () -> Void

    var body: some View {
        Button(action: action) {
            HStack(spacing: 8) {
                if let iconName = iconName {
                    Image(iconName)
                        .foregroundColor(textColor)
                }

                Text(title)
                    .fontWeight(.semibold)
                    .foregroundColor(textColor)
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
        }
        .frame(height: 50)
        .background(backgroundColor)
        .cornerRadius(cornerRadius)
    }
}


