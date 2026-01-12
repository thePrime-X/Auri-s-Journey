import SwiftUI

struct LoginView: View {
    @State private var username = ""
    @State private var password = ""
    @State private var wrongUsername = false
    @State private var wrongPassword = false
    @AppStorage("isLoggedIn") private var isLoggedIn = false
    
    var body: some View {
        VStack(spacing: 25) {
            Text("Login")
                .font(.largeTitle)
                .bold()
                .foregroundColor(.blue)
                .padding(.top, 50)
            
            // Username
            TextField("Username", text: $username)
                .padding()
                .frame(width: 300, height: 50)
                .background(Color(.systemGray6))
                .cornerRadius(10)
                .border(wrongUsername ? Color.red : Color.clear, width: 2)
            
            // Password
            SecureField("Password", text: $password)
                .padding()
                .frame(width: 300, height: 50)
                .background(Color(.systemGray6))
                .cornerRadius(10)
                .border(wrongPassword ? Color.red : Color.clear, width: 2)
            
            Button(action: {
                wrongUsername = username.isEmpty
                wrongPassword = password.isEmpty
                if !wrongUsername && !wrongPassword {
                    isLoggedIn = true
                }
            }) {
                Text("Login")
                    .foregroundColor(.white)
                    .bold()
                    .frame(width: 300, height: 50)
                    .background(Color.blue)
                    .cornerRadius(12)
                    .shadow(radius: 5)
            }
            
            Spacer()
        }
        .padding()
        .navigationTitle("Login")
        .navigationBarTitleDisplayMode(.inline)
        .background(Color.white.ignoresSafeArea())
    }
}

#Preview {
    LoginView()
}
