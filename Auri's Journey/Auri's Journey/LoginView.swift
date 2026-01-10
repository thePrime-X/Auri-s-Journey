import SwiftUI

struct ContentView: View {
    @State private var username = ""
    @State private var password = ""
    
    @State private var wrongUsername = false
    @State private var wrongPassword = false
    @State private var showingLoginScreen = false
    
    var body: some View {
        NavigationView {
            ZStack {
                Color.white
                    .ignoresSafeArea() // fill the whole screen
                
                VStack(spacing: 20) {
                    // Title
                    Text("Login")
                        .font(.largeTitle)
                        .bold()
                        .foregroundColor(.blue) // friendly techy color
                        .padding(.bottom, 40)
                    
                    // Username Field
                    TextField("Username", text: $username)
                        .padding()
                        .frame(width: 300, height: 50)
                        .background(Color(.systemGray6)) // soft gray background
                        .cornerRadius(10)
                        .border(wrongUsername ? Color.red : Color.clear, width: 2)
                    
                    // Password Field
                    SecureField("Password", text: $password)
                        .padding()
                        .frame(width: 300, height: 50)
                        .background(Color(.systemGray6))
                        .cornerRadius(10)
                        .border(wrongPassword ? Color.red : Color.clear, width: 2)
                    
                    // Login Button
                    Button(action: {
                        // Simple validation
                        wrongUsername = username.isEmpty
                        wrongPassword = password.isEmpty
                        showingLoginScreen = !wrongUsername && !wrongPassword
                    }) {
                        Text("Login")
                            .foregroundColor(.white)
                            .bold()
                            .frame(width: 300, height: 50)
                            .background(Color.blue) // primary action color
                            .cornerRadius(10)
                    }
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
