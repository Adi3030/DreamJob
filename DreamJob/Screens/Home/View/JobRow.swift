//
//  JobRow.swift
//  MovieFan
//
//  Created by Aditya Sharma on 04/07/25.
//

import SwiftUI

struct JobRow: View {
    let job: Job

    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            HStack(alignment: .top) {
                Image(job.icon) // Placeholder for all
                    .resizable()
                    .scaledToFit()
                    .frame(width: 40, height: 40)
                    .padding(8)
                    .background(Color.yellow.opacity(0.3))
                    .clipShape(Circle())

                VStack(alignment: .leading, spacing: 4) {
                    Text(job.title)
                        .font(.headline)
                        .foregroundColor(.primary)

                    Text(job.location)
                        .font(.subheadline)
                        .foregroundColor(.gray)
                }

                Spacer()

                Image(systemName: "bookmark")
                    .foregroundColor(.gray)
            }

            // Salary
            HStack {
                Text(job.salary)
                    .font(.title3)
                    .fontWeight(.bold)
                    .foregroundColor(.primary)

                Text("/ Mo")
                    .font(.subheadline)
                    .foregroundColor(.gray)
            }

            // Tags + Apply Button
            HStack {
                ForEach(job.tags.prefix(2), id: \.self) { tag in
                    Text(tag)
                        .font(.caption)
                        .padding(.vertical, 6)
                        .padding(.horizontal, 12)
                        .background(Color.gray.opacity(0.1))
                        .cornerRadius(8)
                }

                Spacer()

                Button(action: {
                    // Apply action
                }) {
                    Text("Apply")
                        .font(.caption)
                        .fontWeight(.medium)
                        .foregroundColor(.white)
                        .padding(.vertical, 6)
                        .padding(.horizontal, 16)
                        .background(Color.orange.opacity(0.6))
                        .cornerRadius(8)
                }
            }
        }
        .padding()
        .background(Color.white)
        .cornerRadius(16)
        .shadow(color: Color.black.opacity(0.05), radius: 8, x: 0, y: 4)
    }
}


 
