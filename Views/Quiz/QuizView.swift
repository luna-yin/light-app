//
//  QuizView.swift
//  Light
//
//  Created by Lucy and Luna Yin on 1/6/22.
//

import SwiftUI

// Intro page of quiz
struct QuizView : View {
    
    @StateObject var quizManager = QuizManager()
    @State private var showQuestions = false
    
    var body: some View {
        
        VStack(alignment: .center) {
            
            Image("Quiz Question Mark")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(height: 150)
                .padding()

            
            VStack(spacing: 20) {
                Text("What do you need help with?")
                    .font(.title)
                    .multilineTextAlignment(.center)
                Text("Take a brief quiz to find which resources and tools are the best match for you.")
                    .padding(.horizontal)
                    .multilineTextAlignment(.center)
               
                NavigationLink {
                    QuestionView()
                        .environmentObject(quizManager)
                } label: {
                    Text("Start Quiz")
                        .font(.title2)
                }
            }
            .padding(.horizontal, 25)
        }
    }
}
