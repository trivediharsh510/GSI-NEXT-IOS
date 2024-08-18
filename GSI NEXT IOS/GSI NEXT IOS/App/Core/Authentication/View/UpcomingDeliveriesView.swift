//
//  UpcomingDeliveriesView.swift
//  GSI NEXT IOS
//
//  Created by HARSH TRIVEDI on 05/08/24.
//

import SwiftUI
struct UpcomingDeliveriesView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Upcoming Deliveries")
                .font(.title2)
                .padding()
            ForEach(0..<3) { index in
                InfoCardView(title: "Delivery \(index + 1)", description: "Details about delivery \(index + 1).")
            }
        }
    }
}

struct UpcomingDeliveriesView_Previews: PreviewProvider {
    static var previews: some View {
        UpcomingDeliveriesView()
    }
}
