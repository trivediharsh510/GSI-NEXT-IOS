//
//  CustomNavigationBar.swift
//  GSI NEXT IOS
//
//  Created by HARSH TRIVEDI on 05/08/24.
//

import SwiftUI
struct CustomNavigationBar: View {
    @State private var showMenu = false
    @State private var showProfile = false
    
    var body: some View {
        HStack {
            Button(action: {
                self.showMenu.toggle() // Toggle the side menu view
            }) {
                Image(systemName: "line.horizontal.3")
                    .font(.title)
                    .padding()
            }
            Spacer()
            Text("Drone Delivery")
                .font(.headline)
            Spacer()
            Button(action: {
                self.showProfile.toggle() // Navigate to profile view
            }) {
                Image(systemName: "person.circle")
                    .font(.title)
                    .padding()
            }
        }
        .background(Color.gray.opacity(0.2))
        .sheet(isPresented: $showMenu) {
        }
        .sheet(isPresented: $showProfile) {
            ProfileView()
        }
    }
}


struct CustomNavigationBar_Previews: PreviewProvider {
    static var previews: some View {
        CustomNavigationBar()
    }
}

