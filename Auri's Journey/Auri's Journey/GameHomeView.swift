import SwiftUI

struct GameHomeView: View {
    // Example levels
    let levels = [
        ("Level 1", "Introduction to Logic", Color.blue),
        ("Level 2", "Conditional Statements", Color.green),
        ("Level 3", "Loops & Iterations", Color.orange),
        ("Level 4", "Functions & Procedures", Color.purple)
    ]
    
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(spacing: 30) {
                    // Mascot + welcome
                    VStack(spacing: 10) {
                        Image(systemName: "brain.head.profile.fill")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 120, height: 120)
                            .foregroundColor(.blue)
                        
                        Text("Welcome, Player!")
                            .font(.title)
                            .bold()
                            .foregroundColor(.blue)
                        
                        Text("Select a level to begin your journey")
                            .font(.subheadline)
                            .foregroundColor(.gray)
                    }
                    .padding(.top, 30)
                    
                    // Level Cards
                    VStack(spacing: 20) {
                        ForEach(levels, id: \.0) { level in
                            NavigationLink(destination: PuzzleView(levelName: level.0)) {
                                HStack {
                                    VStack(alignment: .leading, spacing: 5) {
                                        Text(level.0)
                                            .font(.headline)
                                            .bold()
                                            .foregroundColor(.white)
                                        Text(level.1)
                                            .font(.subheadline)
                                            .foregroundColor(.white.opacity(0.8))
                                    }
                                    Spacer()
                                    Image(systemName: "chevron.right")
                                        .foregroundColor(.white)
                                }
                                .padding()
                                .frame(width: 330, height: 80)
                                .background(level.2)
                                .cornerRadius(15)
                                .shadow(color: level.2.opacity(0.5), radius: 5, x: 0, y: 5)
                            }
                        }
                    }
                    .padding(.bottom, 30)
                    
                    Spacer()
                }
            }
            .background(
                LinearGradient(
                    colors: [Color.white, Color(.systemGray6)],
                    startPoint: .top,
                    endPoint: .bottom
                )
                .ignoresSafeArea()
            )
            .navigationTitle("Auri's Journey")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    GameHomeView()
}
