//
//  CategoryView.swift
//  Light
//
//  Created by Lucy and Luna Yin on 1/6/22.
//

import SwiftUI

// Design of individual category cards
struct CategoryView : View {
    var categories : CategoryModel
    var body: some View {
        
        ZStack {
            
            Image(categories.asset)
                .resizable()
                .renderingMode(.original)
                .aspectRatio(contentMode: .fill)
                .padding(.bottom, 0)
                .cornerRadius(10)
            
            HStack {
                VStack(alignment: .leading, spacing: 12) {
                    Text(categories.name)
                        .font(.title2)
                        .multilineTextAlignment(.leading)
                    
                    if categories.numsources != 1 {
                        
                        Text("\(categories.numsources) Resources")
                        
                    } else {
                        
                        Text("1 Resource")
                        
                    }
                }
                .foregroundColor(.black)
                
                Spacer(minLength: 0)
            }
            .padding()
        }
    }
}
