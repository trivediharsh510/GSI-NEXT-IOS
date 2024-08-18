//
//  FinalView.swift
//  GSI NEXT IOS
//
//  Created by HARSH TRIVEDI on 18/08/24.
//

import SwiftUI
struct FinalView: View {
    var body: some View {
        VStack {
            Text("Final View")
                .font(.largeTitle)
                .padding()
            
            Text("Thank you for using our app!")
                .padding()
            
            Spacer()
        }
        .navigationTitle("Final")
    }
}

#Preview {
    FinalView()
}
