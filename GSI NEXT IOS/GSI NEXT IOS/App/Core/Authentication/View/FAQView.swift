//
//  FAQView.swift
//  GSI NEXT IOS
//
//  Created by HARSH TRIVEDI on 05/08/24.
//
import SwiftUI
struct FAQView: View {
    var faq: FAQ
    @State private var isExpanded = false
    var body: some View {
        VStack(alignment: .leading) {
            Text(faq.question)
                .font(.headline)
                .onTapGesture {
                    withAnimation {
                        self.isExpanded.toggle()
                    }
                }
            
            if isExpanded {
                Text(faq.answer)
                    .font(.subheadline)
                    .padding(.top, 5)
            }
        }
    }
}

struct FAQView_Previews: PreviewProvider {
    static var previews: some View {
        FAQView(faq: FAQ(question: "What is Drop Delivery", answer: "Drop Delivery is a service that allows you to get your favorite items delivered to your doorstep."))
    }
}
