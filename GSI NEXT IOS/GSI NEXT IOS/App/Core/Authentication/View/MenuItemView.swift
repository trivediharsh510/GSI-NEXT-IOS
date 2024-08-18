//
//  MenuItemView.swift
//  GSI NEXT IOS
//
//  Created by HARSH TRIVEDI on 06/08/24.
//

import SwiftUI
struct MenuItemView: View {
    var title: String
    
    var body: some View {
        Text(title)
            .font(.headline)
            .padding()
            .foregroundColor(.black)
            .background(Color.gray.opacity(0.2))
            .cornerRadius(5)
    }
}
struct MenuItemView_Previews: PreviewProvider {
    static var previews: some View {
        MenuItemView(title: "Menu Item")
            .previewLayout(.sizeThatFits)
    }
}



