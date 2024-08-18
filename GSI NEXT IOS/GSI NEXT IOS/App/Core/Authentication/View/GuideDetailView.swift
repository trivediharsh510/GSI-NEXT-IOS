//
//  GuideDetailView.swift
//  GSI NEXT IOS
//
//  Created by HARSH TRIVEDI on 05/08/24.
//

import SwiftUI
struct GuideDetailView: View {
    var guideTitle: String
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(guideTitle)
                .font(.largeTitle)
                .padding(.bottom)
            
            // Add detailed guide content here
            Text("This is where the detailed content for \(guideTitle) will go.")
                .padding()
            
            Spacer()
        }
        .navigationTitle(guideTitle)
        .padding()
    }
}
