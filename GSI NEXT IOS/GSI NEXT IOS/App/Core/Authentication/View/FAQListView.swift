//
//  FAQListView.swift
//  GSI NEXT IOS
//
//  Created by HARSH TRIVEDI on 06/08/24.
//

import SwiftUI
struct FAQListView: View {
    var faqs: [FAQ]

    var body: some View {
        NavigationView {
            List(faqs) { faq in
                FAQView(faq: faq)
            }
            .navigationTitle("FAQs")
        }
    }
}
struct FAQListView_Previews: PreviewProvider {
    static var previews: some View {
        FAQListView(faqs: sampleFAQs)
    }
}
