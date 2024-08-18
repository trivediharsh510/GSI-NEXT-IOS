//
//  InfoCardView.swift
//  GSI NEXT IOS
//
//  Created by HARSH TRIVEDI on 05/08/24.
//
import SwiftUI
struct InfoCardView: View {
    var title: String
    var description: String

    var body: some View {
        VStack(alignment: .leading) {
            Text(title)
                .font(.title2)
                .padding([.top, .leading, .trailing])
            
            Text(description)
                .font(.body)
                .padding([.leading, .bottom, .trailing])
            
            Spacer()
        }
        .background(Color.gray.opacity(0.1))
        .cornerRadius(10)
        .padding()
    }
}

struct InfoCardView_Previews: PreviewProvider {
    static var previews: some View {
        InfoCardView(title: "Title", description: "Description goes here.")
    }
}
