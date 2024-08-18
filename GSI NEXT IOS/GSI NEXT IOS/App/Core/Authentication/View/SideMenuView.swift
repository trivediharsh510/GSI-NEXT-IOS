import SwiftUI
struct SlideMenuView: View {
    @Binding var isMenuOpen: Bool
    @EnvironmentObject var authManager: AuthManager
    
    var body: some View {
        ZStack(alignment: .leading) {
            if isMenuOpen {
                Color.black.opacity(0.4)
                    .edgesIgnoringSafeArea(.all)
                    .onTapGesture {
                        withAnimation {
                            self.isMenuOpen.toggle()
                        }
                    }
            }
            
            GeometryReader { _ in
                HStack {
                    VStack(alignment: .leading, spacing: 20) {
                        Text("Menu")
                            .font(.largeTitle)
                            .padding()
                        
                        NavigationLink(destination: ProfileView()) {
                            MenuItemView(title: "Profile")
                        }
                        
                        NavigationLink(destination: SettingsView()) {
                            MenuItemView(title: "Settings")
                        }
                        
                        NavigationLink(destination: HelpView()) {
                            MenuItemView(title: "Help")
                        }
                        
                        Spacer()
                        
                        Button(action: {
                            handleLogout()
                        }) {
                            MenuItemView(title: "Logout")
                        }
                        .padding(.bottom, 20)
                    }
                    .frame(maxWidth: 300)
                    .background(Color.white)
                    .offset(x: isMenuOpen ? 0 : -300)
                    .animation(.easeInOut, value: isMenuOpen)
                }
            }
        }
    }

    private func handleLogout() {
        authManager.logout()
        
        // Close the menu
        withAnimation {
            isMenuOpen = false
        }
    }
}

struct SlideMenuView_Previews: PreviewProvider {
    static var previews: some View {
        SlideMenuView(isMenuOpen: .constant(true))
            .environmentObject(AuthManager())
    }
}

