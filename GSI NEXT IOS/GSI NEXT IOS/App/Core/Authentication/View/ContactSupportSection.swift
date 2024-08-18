//
//  ContactSupportSection.swift
//  GSI NEXT IOS
//
//  Created by HARSH TRIVEDI on 05/08/24.
//

import SwiftUI
struct ContactSupportSection: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Contact Support")
                .font(.title2)
                .padding(.bottom, 5)
            
            Text("If you need assistance, you can contact our support team using the following methods:")
                .padding(.bottom, 5)
            
            Text("Email: support@dronedelivery.com")
                .font(.subheadline)
                .padding(.bottom, 2)
            
            Text("Phone: +1-800-123-4567")
                .font(.subheadline)
                .padding(.bottom, 2)
            
            Text("Live Chat: Available 24/7 in the app")
                .font(.subheadline)
                .padding(.bottom, 5)
            
            Button(action: {
                // Action to start live chat
            }) {
                Text("Start Live Chat")
                    .font(.headline)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
        }
    }
}

struct ContactSupportSection_Previews: PreviewProvider {
    static var previews: some View {
        ContactSupportSection()
    }
}

