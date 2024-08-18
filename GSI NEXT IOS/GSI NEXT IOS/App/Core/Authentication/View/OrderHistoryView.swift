import SwiftUI
struct OrderHistoryView: View {
    var orders: [Order] = sampleOrders
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Order History")
                .font(.largeTitle)
                .padding()
            
            List(orders) { order in
                OrderCard(order: order)
            }
        }
        .navigationTitle("Order History")
    }
}

struct OrderHistoryView_Previews: PreviewProvider {
    static var previews: some View {
        OrderHistoryView()
    }
}

