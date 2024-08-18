//
//  InputFormView.swift
//  GSI NEXT IOS
//
//  Created by HARSH TRIVEDI on 05/08/24.
//
import SwiftUI
struct InputFormView: View {
    @State private var name: String = ""
    @State private var address: String = ""
    @State private var isSubmitting = false
    @State private var submissionMessage: String?

    var body: some View {
        VStack(alignment: .leading) {
            Text("Place Your Order")
                .font(.headline)
                .padding(.bottom, 5)
            
            TextField("Name", text: $name)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding(.bottom, 10)
            
            TextField("Address", text: $address)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding(.bottom, 10)
            
            Button(action: {
                submitForm()
            }) {
                Text("Submit")
                    .font(.headline)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.green)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
            .disabled(isSubmitting)
            
            if let message = submissionMessage {
                Text(message)
                    .padding()
                    .foregroundColor(.red)
            }
        }
        .padding()
        .background(Color(.systemGray6))
        .cornerRadius(10)
        .shadow(radius: 5)
    }
    
    private func submitForm() {
        guard !name.isEmpty, !address.isEmpty else {
            submissionMessage = "Please fill out all fields."
            return
        }
        
        isSubmitting = true
        
        // Simulate a network request or data processing
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
            isSubmitting = false
            submissionMessage = "Order submitted successfully!"
            name = ""
            address = ""
        }
    }
}


struct InputFormView_Previews: PreviewProvider {
    static var previews: some View {
        InputFormView()
    }
}

