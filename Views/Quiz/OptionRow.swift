//
//  OptionRow.swift
//  Light
//
//  Created by Lucy and Luna Yin on 1/27/22.
//

import SwiftUI

// Design for individual option rows
struct OptionRow: View {
    
    @EnvironmentObject var quizManager: QuizManager
    var option: Option
    @State var isSelected = false
    
    var body: some View {
        
        HStack(spacing: 10) {
            
            if isSelected {
                Image(systemName: "checkmark.circle.fill")
                    .foregroundColor(Color.white)
                    .font(.system(size: 30))
                
                    
            } else {
                
                Image(systemName: "circle")
                    .foregroundColor(Color.black.opacity(0.4))
                    .font(.system(size: 30, weight: .ultraLight))
            }
            
            Text(option.text)
                .foregroundColor(isSelected ? Color.white : Color.black)
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding()
        .background(isSelected ? Color("Blue") : Color.black.opacity(0.05))
        .onTapGesture {
            
            self.isSelected.toggle()
            quizManager.clickedOption(option: option, isSelected: self.isSelected)
            
            
        }

    }
    
}
