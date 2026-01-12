import SwiftUI

struct ContentView: View {
    @AppStorage("isLoggedIn") private var isLoggedIn = false
    
    var body: some View {
        NavigationStack {
            if isLoggedIn {
                GameHomeView() // the main educational game screen
            } else {
                HomeView()     // welcome / login / signup screen
            }
        }
    }
}

#Preview {
    ContentView()
}
