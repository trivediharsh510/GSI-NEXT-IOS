//
//  SettingsView.swift
//  GSI NEXT IOS
//
//  Created by HARSH TRIVEDI on 05/08/24.
//
import SwiftUI
struct SettingsView: View {
    @State private var notificationsEnabled: Bool = true
    @State private var deliveryRadius: Double = 10.0
    @State private var selectedTheme: String = "Light"
    @State private var username: String = "User123"
    
    var themes = ["Light", "Dark", "System"]
    
    var body: some View {
        Form {
            Section(header: Text("Account")) {
                TextField("Username", text: $username)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
            }
            
            Section(header: Text("Notifications")) {
                Toggle(isOn: $notificationsEnabled) {
                    Text("Enable Notifications")
                }
            }
            
            Section(header: Text("Delivery Preferences")) {
                VStack {
                    Text("Delivery Radius: \(Int(deliveryRadius)) km")
                    Slider(value: $deliveryRadius, in: 1...50, step: 1)
                }
            }
            
            Section(header: Text("Appearance")) {
                Picker("Theme", selection: $selectedTheme) {
                    ForEach(themes, id: \.self) { theme in
                        Text(theme).tag(theme)
                    }
                }
                .pickerStyle(SegmentedPickerStyle())
            }
            
            Section {
                Button(action: {
                }) {
                    Text("Save Settings")
                        .frame(maxWidth: .infinity, alignment: .center)
                }
            }
        }
        .navigationTitle("Settings")
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
