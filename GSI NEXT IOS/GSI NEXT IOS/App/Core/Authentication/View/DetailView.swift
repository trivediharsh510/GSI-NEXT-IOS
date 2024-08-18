//
//  DetailView.swift
//  GSI NEXT IOS
//
//  Created by HARSH TRIVEDI on 05/08/24.
//
import SwiftUI
struct DetailView: View {
    @Binding var isNavigationBarHidden: Bool // Binding to the state from ContentView
    
    var body: some View {
        VStack {
            Text("Detail View")
                .font(.largeTitle)
                .padding()
            
            Toggle(isOn: $isNavigationBarHidden) { // Toggle to change the state
                Text("Hide Navigation Bar") // Label for the toggle
            }
            .padding()
            
            // Additional content can go here
            
            NavigationLink(destination: FinalView()) {
                Text("Go to Final View")
            }
            .padding()
            
            Spacer()
        }
        .navigationBarHidden(isNavigationBarHidden) // Apply the state to hide or show the navigation bar
        .navigationTitle("Detail")
    }
}
struct DetailView_Previews: PreviewProvider {
    @State static var isNavigationBarHidden = false
    
    static var previews: some View {
        DetailView(isNavigationBarHidden: $isNavigationBarHidden)
    }
}
