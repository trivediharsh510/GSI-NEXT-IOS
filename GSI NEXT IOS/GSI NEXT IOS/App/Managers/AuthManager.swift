//
//  AuthManager.swift
//  GSI NEXT IOS
//
//  Created by HARSH TRIVEDI on 06/08/24.
//

import SwiftUI
class AuthManager: ObservableObject {
    @Published var isLoggedIn: Bool = false

    func login(username: String, password: String) {
        if !username.isEmpty && !password.isEmpty {
            // Save user credentials or tokens (not shown here)
            UserDefaults.standard.set(true, forKey: "isLoggedIn")
            isLoggedIn = true
        } else {
            // Handle login failure (e.g., show an alert)
        }
    }
    
    func logout() {
        // Perform logout actions here
        clearUserData()
        // Navigate to login screen (handled in ContentView)
        isLoggedIn = false
    }
    
    private func clearUserData() {
        // Remove user credentials or tokens
        UserDefaults.standard.removeObject(forKey: "userToken")
        UserDefaults.standard.removeObject(forKey: "userEmail")
        UserDefaults.standard.removeObject(forKey: "isLoggedIn")
        
    }
}



