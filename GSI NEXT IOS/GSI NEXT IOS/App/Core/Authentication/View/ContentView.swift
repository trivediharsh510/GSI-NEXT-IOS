import SwiftUI
struct ContentView: View {
    @State private var isNavigationBarHidden = false
    
    var body: some View {
        NavigationView {
            VStack {
                Toggle(isOn: $isNavigationBarHidden) {
                    Text("Hide Navigation Bar")
                }
                .padding()

                NavigationLink(destination: DetailView(isNavigationBarHidden: $isNavigationBarHidden)) {
                    Text("Go to Detail View")
                }
                .padding()
                
                Text("Welcome to My App")
                    .font(.largeTitle)
                    .padding()

                Spacer()
            }
            .navigationBarHidden(isNavigationBarHidden) // Conditionally hide the navigation bar
            .navigationTitle("Home")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

