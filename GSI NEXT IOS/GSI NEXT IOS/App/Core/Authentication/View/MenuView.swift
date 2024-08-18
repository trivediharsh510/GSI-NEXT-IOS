//
//  MenuView.swift
//  GSI NEXT IOS
//
//  Created by HARSH TRIVEDI on 05/08/24.
//
import SwiftUI
struct MenuView: View {
    var body: some View {
        NavigationView {
            List {
                NavigationLink(destination: OrderHistoryView()) {
                    Text("Order History")
                }
                NavigationLink(destination: SettingsView()) {
                    Text("Settings")
                }
                NavigationLink(destination: HelpView()) {
                    Text("Help")
                }
            }
            .navigationTitle("Menu")
        }
    }
}

struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView()
    }
}
