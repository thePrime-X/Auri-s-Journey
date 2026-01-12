import SwiftUI

struct RegisterView: View {
    @State private var username = ""
    @State private var email = ""
    @State private var password = ""
    
    var body: some View {
        VStack(spacing: 20) {
            Text("Register")
                .font(.largeTitle)
                .bold()
                .foregroundColor(.blue)
                .padding(.top, 50)
            
            TextField("Username", text: $username)
                .padding()
                .frame(width: 300, height: 50)
                .background(Color(.systemGray6))
                .cornerRadius(10)
            
            TextField("Email", text: $email)
                .padding()
                .frame(width: 300, height: 50)
                .background(Color(.systemGray6))
                .cornerRadius(10)
            
            SecureField("Password", text: $password)
                .padding()
                .frame(width: 300, height: 50)
                .background(Color(.systemGray6))
                .cornerRadius(10)
            
            Button("Register") {
                // Add registration logic here
            }
            .foregroundColor(.white)
            .bold()
            .frame(width: 300, height: 50)
            .background(Color.green)
            .cornerRadius(12)
            .shadow(radius: 5)
            
            Spacer()
        }
        .padding()
        .navigationTitle("Register")
        .navigationBarTitleDisplayMode(.inline)
        .background(Color.white.ignoresSafeArea())
    }
}

#Preview {
    RegisterView()
}
