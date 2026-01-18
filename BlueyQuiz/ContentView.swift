//
//  ContentView.swift
//  BlueyQuiz
//
//  Created by Rich on 17/01/2026.
//

import SwiftUI

struct ContentView: View {
    @State private var episodeList = []
    @State private var correctAnswer = Int.random(in: 0..<3)
    @State private var playerScore: Int = 0
    
    var body: some View {
        ZStack {
            LinearGradient(stops: [Gradient.Stop(color: .blue, location: 0.35), Gradient.Stop(color: .orange, location: 0.55)], startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
            
            VStack{
                
                Text("Bluey Episode Quiz")
                    .font(.largeTitle.bold())
                
                Spacer()
                
                VStack(spacing: 30){
                    VStack {
                        Text("Tap the scene\n from episode")
                        Text("\(correctAnswer)")
                    }
                    
                    VStack(spacing: 15) {
                        ForEach(0..<3) { number in
                            Button {
                                print("Button \(number) tapped")
                            } label: {
                                Text("BUTTON")
                            }
                        }
                    }
                }
                .frame(maxWidth: .infinity)
                .padding(20)
                .background(.regularMaterial)
                .clipShape(RoundedRectangle(cornerRadius: 20))
                .padding(20)
                
                Spacer()
                
                Text("Score: \(playerScore)")
                    .font(.largeTitle.bold())
            }
        }
    }
}

#Preview {
    ContentView()
}
