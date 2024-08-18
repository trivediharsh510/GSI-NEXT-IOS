//
//  OrderCard.swift
//  GSI NEXT IOS
//
//  Created by HARSH TRIVEDI on 05/08/24.
//

import SwiftUI
struct OrderCard: View {
    var order: Order
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Text("Order Number: \(order.orderNumber)")
                    .font(.headline)
                Spacer()
                Text(order.status)
                    .foregroundColor(order.status == "Delivered" ? .green : .orange)
                    .font(.subheadline)
            }
            .padding(.bottom, 2)
            
            Text("Date: \(order.date)")
                .font(.subheadline)
                .padding(.bottom, 2)
            
            Text("Items:")
                .font(.subheadline)
            
            ForEach(order.items, id: \.self) { item in
                Text("- \(item)")
                    .font(.subheadline)
                    .padding(.leading, 10)
            }
        }
        .padding()
        .background(Color.white)
        .cornerRadius(10)
        .shadow(radius: 2)
        .padding(.bottom, 10)
    }
}

struct OrderCard_Previews: PreviewProvider {
    static var previews: some View {
        OrderCard(order: sampleOrders[0])
    }
}

