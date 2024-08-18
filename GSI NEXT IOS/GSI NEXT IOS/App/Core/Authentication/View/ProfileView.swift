//
//  ProfileView.swift
//  GSI NEXT IOS
//
//  Created by HARSH TRIVEDI on 06/08/24.
//

import SwiftUI
struct ProfileView: View {
    @State private var isEditing = false
    @State private var name: String = "John Doe"
    @State private var email: String = "johndoe@example.com"
    @State private var phone: String = "+1234567890"

    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Personal Information")) {
                    TextField("Name", text: $name)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .disabled(!isEditing)
                    TextField("Email", text: $email)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .disabled(!isEditing)
                }
                
                Section(header: Text("Contact Details")) {
                    TextField("Phone Number", text: $phone)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .disabled(!isEditing)
                }
                
                Section {
                    Button(action: {
                        if isEditing {
                            // Save changes
                            print("Saved changes: \(name), \(email), \(phone)")
                        }
                        isEditing.toggle()
                    }) {
                        Text(isEditing ? "Save" : "Edit Profile")
                            .font(.headline)
                            .padding()
                            .frame(maxWidth: .infinity)
                            .background(isEditing ? Color.green : Color.blue)
                            .foregroundColor(.white)
                            .cornerRadius(10)
                    }
                }
            }
            .navigationTitle("Profile")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}

 

