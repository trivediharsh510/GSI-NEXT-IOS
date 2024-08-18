//
//  FAQSection.swift
//  GSI NEXT IOS
//
//  Created by HARSH TRIVEDI on 05/08/24.
//

import SwiftUI
struct FAQSection: View {
    var faqs: [FAQ] = sampleFAQs
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Frequently Asked Questions")
                .font(.title2)
                .padding(.bottom, 5)
            
            ForEach(faqs) { faq in
                FAQView(faq: faq)
                Divider()
                    .padding(.vertical, 5)
            }
        }
    }
}
