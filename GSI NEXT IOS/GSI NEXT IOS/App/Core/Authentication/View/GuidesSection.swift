//
//  GuidesSection.swift
//  GSI NEXT IOS
//
//  Created by HARSH TRIVEDI on 05/08/24.
//

import SwiftUI
struct GuidesSection: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Guides")
                .font(.title2)
                .padding(.bottom, 5)
            
            NavigationLink(destination: GuideDetailView(guideTitle: "How to Place an Order")) {
                Text("How to Place an Order")
                    .font(.headline)
                    .padding()
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .background(Color.gray.opacity(0.1))
                    .cornerRadius(10)
            }
            .padding(.bottom, 5)
            
            NavigationLink(destination: GuideDetailView(guideTitle: "Tracking Your Delivery")) {
                Text("Tracking Your Delivery")
                    .font(.headline)
                    .padding()
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .background(Color.gray.opacity(0.1))
                    .cornerRadius(10)
            }
            .padding(.bottom, 5)
            
            NavigationLink(destination: GuideDetailView(guideTitle: "Managing Your Account")) {
                Text("Managing Your Account")
                    .font(.headline)
                    .padding()
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .background(Color.gray.opacity(0.1))
                    .cornerRadius(10)
            }
            .padding(.bottom, 5)
        }
    }
}

struct GuidesSection_Previews: PreviewProvider {
    static var previews: some View {
        GuidesSection()
    }
}
