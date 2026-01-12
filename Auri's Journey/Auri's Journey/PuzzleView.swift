import SwiftUI

struct PuzzleView: View {
    var levelName: String
    
    var body: some View {
        VStack(spacing: 30) {
            Text(levelName)
                .font(.largeTitle)
                .bold()
                .foregroundColor(.blue)
                .padding(.top, 50)
            
            Text("This is where the puzzle or coding challenge will appear!")
                .font(.headline)
                .multilineTextAlignment(.center)
                .padding()
            
            Spacer()
            
            // Next / Complete button (for testing navigation)
            Button(action: {
                // For now, just print a message
                print("\(levelName) puzzle started!")
            }) {
                Text("Start Puzzle")
                    .foregroundColor(.white)
                    .bold()
                    .frame(width: 250, height: 50)
                    .background(Color.green)
                    .cornerRadius(12)
                    .shadow(radius: 5)
            }
            
            Spacer()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(
            LinearGradient(
                colors: [Color.white, Color(.systemGray6)],
                startPoint: .top,
                endPoint: .bottom
            )
            .ignoresSafeArea()
        )
        .navigationTitle(levelName)
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    PuzzleView(levelName: "Level 1")
}
