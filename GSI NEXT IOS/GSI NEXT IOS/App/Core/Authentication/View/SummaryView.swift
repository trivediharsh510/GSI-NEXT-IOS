//
//  SummaryView.swift
//  GSI NEXT IOS
//
//  Created by HARSH TRIVEDI on 06/08/24.
//

import SwiftUI


struct SummaryView: View {
    @State private var isProcessing: Bool = false
    @State private var orderConfirmed: Bool = false
    @State private var errorMessage: String?

    var body: some View {
        VStack {
            HStack {
                Text("Summary")
                    .font(.title2)
                    .fontWeight(.bold)
                Spacer()
            }
            .padding()

            HStack {
                Text("Change Location")
                    .foregroundColor(.purple)
                    .underline()
                Spacer()
            }
            .padding(.horizontal)

            HStack {
                VStack(alignment: .leading) {
                    Text("Pickup Location")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                    Text("Carrol Avenue 64")
                        .font(.headline)
                }
                Spacer()
                VStack(alignment: .leading) {
                    Text("Delivering To")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                    Text("Keith Street 23")
                        .font(.headline)
                }
                Spacer()
            }
            .padding()

            HStack {
                Text("Change Service")
                    .foregroundColor(.purple)
                    .underline()
                Spacer()
            }
            .padding(.horizontal)

            HStack {
                Image(systemName: "cube.box")
                    .resizable()
                    .frame(width: 40, height: 40)
                VStack(alignment: .leading) {
                    Text("Medical supplies")
                        .font(.subheadline)
                    Text("Insulin injection x 10")
                        .font(.headline)
                }
                Spacer()
                Text("Best Deal 🔥")
                    .foregroundColor(.red)
                Spacer()
                Text("Rs 240")
                    .font(.headline)
            }
            .padding()

            Spacer()

            if isProcessing {
                ProgressView("Processing...")
                    .padding()
            } else {
                Button(action: {
                    confirmOrder()
                }) {
                    Text("ORDER NOW")
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.purple)
                        .foregroundColor(.white)
                        .cornerRadius(8)
                }
                .padding()
            }

            if let errorMessage = errorMessage {
                Text(errorMessage)
                    .foregroundColor(.red)
                    .padding()
            }
        }
        .padding()
        .alert(isPresented: $orderConfirmed) {
            Alert(
                title: Text("Order Confirmed"),
                message: Text("Your order has been placed successfully."),
                dismissButton: .default(Text("OK"))
            )
        }
    }

    // Function to handle order confirmation
    private func confirmOrder() {
        isProcessing = true
        errorMessage = nil

        // Simulate a network request or order processing
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
            // Mock success or failure
            let success = Bool.random()

            if success {
                orderConfirmed = true
            } else {
                errorMessage = "Failed to place order. Please try again."
            }

            isProcessing = false
        }
    }
}

struct SummaryView_Previews: PreviewProvider {
    static var previews: some View {
        SummaryView()
    }
}
