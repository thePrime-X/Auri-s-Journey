import SwiftUI

struct EmailView: View {
    @State private var email = ""
    
    var body: some View {
        VStack(spacing: 20) {
            Text("Continue with Email")
                .font(.largeTitle)
                .bold()
                .foregroundColor(.blue)
                .padding(.top, 50)
            
            TextField("Email", text: $email)
                .padding()
                .frame(width: 300, height: 50)
                .background(Color(.systemGray6))
                .cornerRadius(10)
            
            Button("Continue") {
                // Handle email login
            }
            .foregroundColor(.white)
            .bold()
            .frame(width: 300, height: 50)
            .background(Color.blue)
            .cornerRadius(12)
            .shadow(radius: 5)
            
            Spacer()
        }
        .padding()
        .navigationTitle("Email Login")
        .navigationBarTitleDisplayMode(.inline)
        .background(Color.white.ignoresSafeArea())
    }
}

#Preview {
    EmailView()
}
