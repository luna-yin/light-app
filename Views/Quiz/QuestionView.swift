//
//  QuestionView.swift
//  Light
//
//  Created by Lucy and Luna Yin on 1/27/22.
//

import SwiftUI

// Question page of quiz
struct QuestionView : View {
    
    @StateObject var quizManager = QuizManager()
    
    var body: some View {
        
        VStack(alignment: .leading, spacing: 20) {
            Text("What do you need help with?")
                .font(.title)
                .fontWeight(.bold)
            VStack(alignment: .leading, spacing: 20) {

                Text("Select all that apply")
                
                ScrollView(.vertical, showsIndicators: false) {
                    
                    VStack(alignment: .leading, spacing: 10) {
                        ForEach(quizManager.quizOptions) { option in
                            OptionRow(option: option)
                                .environmentObject(quizManager)
                        }
                        
                    }
                }
            }
            
            NavigationLink {
                RecommendedView(recommendedCategories:quizManager.getRecommendedCategories())
            } label: {
                    
                Text("Find Resources")
                    .bold()
            }
            .foregroundColor(Color.blue)
            .padding(.bottom)
            
        }
        .foregroundColor(.black)
        .padding()
        

            
    }
    
}
