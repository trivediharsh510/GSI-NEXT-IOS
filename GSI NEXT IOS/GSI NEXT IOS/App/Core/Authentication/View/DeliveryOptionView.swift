//
//  DeliveryOptionView.swift
//  GSI NEXT IOS
//
//  Created by HARSH TRIVEDI on 06/08/24.
//
import SwiftUI
struct DeliveryOptionView: View {
    let option: String
    let price: String
    let icon: String

    var body: some View {
        VStack {
            Image(systemName: icon)
                .resizable()
                .frame(width: 50, height: 50)
                .padding()
            Text(option)
                .font(.headline)
            Text(price)
                .font(.subheadline)
        }
        .frame(maxWidth: .infinity)
        .padding()
        .background(Color.gray.opacity(0.1))
        .cornerRadius(8)
    }
}

struct DeliveryOptionView_Previews: PreviewProvider {
    static var previews: some View {
        DeliveryOptionView(option: "Express Delivery", price: "$9.99", icon: "shippingbox.fill")
    }
}
