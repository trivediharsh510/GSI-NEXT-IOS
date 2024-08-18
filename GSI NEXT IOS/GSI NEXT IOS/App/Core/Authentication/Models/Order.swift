//
//  Order.swift
//  GSI NEXT IOS
//
//  Created by HARSH TRIVEDI on 05/08/24.
//

import Foundation
struct Order: Identifiable {
    let id = UUID()
    let orderNumber: String
    let date: String
    let status: String
    let items: [String]
}
