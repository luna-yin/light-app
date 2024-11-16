//
//  QuizManager.swift
//  Light
//
//  Created by Lucy and Luna Yin on 1/27/22.
//

import SwiftUI

// Manages selected and unselected options in quiz
class QuizManager: ObservableObject {
    
    @Published private(set) var selectedOptions: [Option]
    @Published var optionSelected: Bool
    
    @Published private(set) var quizOptions = [
        
        Option(text: "I feel guilty or worthless", category: categories.first { $0.name == "Depression" }!),
        Option(text: "I have a persistently sad or low mood", category: categories.first { $0.name == "Depression" }!),
        Option(text: "I feel hopeless or helpless", category: categories.first { $0.name == "Depression" }!),
        Option(text: "I'm losing interest in things that I loved before", category: categories.first { $0.name == "Depression" }!),
        Option(text: "I'm thinking of harming myself", category: categories.first { $0.name == "Depression" }!),
        Option(text: "I feel that everyone would be better off without me", category: categories.first { $0.name == "Depression" }!),
        Option(text: "I'm having trouble sleeping", category: categories.first { $0.name == "Anxiety" }!),
        Option(text: "I feel restless and tense", category: categories.first { $0.name == "Anxiety" }!),
        Option(text: "I can't control my worrying", category: categories.first { $0.name == "Anxiety" }!),
        Option(text: "I have difficulty concentrating", category: categories.first { $0.name == "Anxiety" }!),
        Option(text: "I experience stomachaches or headaches", category: categories.first { $0.name == "Anxiety" }!),
        Option(text: "I experience trembling, shortness of breath, or nausea", category: categories.first { $0.name == "Anxiety" }!),
        Option(text: "I have a sense of impending danger or panic", category: categories.first { $0.name == "Anxiety" }!),
        Option(text: "I feel tired or weak", category: categories.first { $0.name == "Anxiety" }!),
        Option(text: "I'm struggling with addiction", category: categories.first { $0.name == "Substance Use" }!),
        Option(text: "My drug or alcohol use is negatively affecting my life", category: categories.first { $0.name == "Substance Use" }!),
        Option(text: "I'm questioning my sexuality", category: categories.first { $0.name == "LGBTQIA+" }!),
        Option(text: "I'm questioning my gender identity", category: categories.first { $0.name == "LGBTQIA+" }!),
        Option(text: "I'm thinking about gender transition", category: categories.first { $0.name == "LGBTQIA+" }!),
        Option(text: "I'm thinking about coming out", category: categories.first { $0.name == "LGBTQIA+" }!),
        Option(text: "I'm experiencing homophobia", category: categories.first { $0.name == "LGBTQIA+" }!),
        Option(text: "I'm experiencing racism, sexism, or another type of discrimination", category: categories.first { $0.name == "Bullying" }!),
        Option(text: "I'm afraid to go to school", category: categories.first { $0.name == "Bullying" }!),
        Option(text: "I'm being bullied by someone", category: categories.first { $0.name == "Bullying" }!),
        Option(text: "I don't feel safe at home", category: categories.first { $0.name == "Violence/Abuse" }!),
        Option(text: "I'm afraid of someone in my life", category: categories.first { $0.name == "Violence/Abuse" }!),
        Option(text: "I'm experiencing violence or abuse", category: categories.first { $0.name == "Violence/Abuse" }!),
        Option(text: "I'm unsure about my relationship", category: categories.first { $0.name == "Relationships" }!),
        Option(text: "I'm scared to break up with my partner", category: categories.first { $0.name == "Relationships" }!),
        Option(text: "My partner is treating me badly", category: categories.first { $0.name == "Relationships" }!),
        Option(text: "I can't trust my partner", category: categories.first { $0.name == "Relationships" }!),
        Option(text: "I could be pregnant", category: categories.first { $0.name == "Sexual Health" }!),
        Option(text: "I could have an STD", category: categories.first { $0.name == "Sexual Health" }!),
        Option(text: "I need advice on sex", category: categories.first { $0.name == "Sexual Health" }!),
        Option(text: "I'm afraid of gaining weight", category: categories.first { $0.name == "Body Image" }!),
        Option(text: "I always count calories or limit what I eat", category: categories.first { $0.name == "Body Image" }!),
        Option(text: "I hate my body", category: categories.first { $0.name == "Body Image" }!),
        Option(text: "I hear voices", category: categories.first { $0.name == "Psychosis" }!),
        Option(text: "I feel constantly suspicious and uneasy", category: categories.first { $0.name == "Psychosis" }!),
        Option(text: "I'm spending more time alone than usual", category: categories.first { $0.name == "Psychosis" }!),
    ]
    
    init() {
        
        selectedOptions = []
        optionSelected = false
        
    }
    
    func clickedOption(option: Option, isSelected: Bool) {
        
        optionSelected = isSelected
        
        if !optionSelected && selectedOptions.first(where: { $0.text == option.text }) != nil {
            
            selectedOptions = selectedOptions.filter() { $0.text != option.text }
            
        } else if optionSelected && (selectedOptions.first { $0.text == option.text } == nil) {
            
            selectedOptions.append(option)
        }
    }
    
    func getRecommendedCategories() -> [CategoryModel] {
        
        var recommendedCategories = [CategoryModel]()
        
        for option in selectedOptions {
            
            if recommendedCategories.first(where: { $0.name == option.category.name }) == nil {
                
                recommendedCategories.append(option.category)
            }
        }
        
        return recommendedCategories
        
    }
}
