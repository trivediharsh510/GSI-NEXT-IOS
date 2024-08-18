//
//  HelpView.swift
//  GSI NEXT IOS
//
//  Created by HARSH TRIVEDI on 05/08/24.
//
import SwiftUI
struct HelpView: View {
    var body: some View {
        NavigationView {
            VStack(alignment: .leading, spacing: 20) {
                Text("Help")
                    .font(.largeTitle)
                    .padding(.bottom, 20)
                
                Text("Welcome to the Help section. Here you can find information and resources to assist you.")
                    .font(.body)
                    .padding(.bottom, 20)
                
                Text("Topics:")
                    .font(.headline)
                    .padding(.bottom, 10)
                
                List {
                    Text("Getting Started")
                    Text("FAQs")
                    Text("Troubleshooting")
                    Text("Contact Support")
                }
                .frame(maxHeight: 200)
                
                Button(action: {
                }) {
                    Text("Contact Support")
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.blue)
                        .cornerRadius(8)
                }
                .padding(.top, 20)
                
                Spacer()
            }
            .padding()
            .navigationTitle("Help")
        }
    }
}

struct HelpView_Previews: PreviewProvider {
    static var previews: some View {
        HelpView()
    }
}

