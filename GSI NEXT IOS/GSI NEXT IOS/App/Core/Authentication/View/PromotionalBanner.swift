//
//  PromotionalBanner.swift
//  GSI NEXT IOS
//
//  Created by HARSH TRIVEDI on 05/08/24.
//

import SwiftUI
struct PromotionalBanner: View {
    var body: some View {
        Text("Special Promotion!")
            .font(.headline)
            .padding()
            .frame(maxWidth: .infinity)
            .background(Color.green)
            .foregroundColor(.white)
            .cornerRadius(10)
            .padding()
    }
}

struct PromotionalBanner_Previews: PreviewProvider {
    static var previews: some View {
        PromotionalBanner()
    }
}
