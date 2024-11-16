//
//  ActivityRowView.swift
//  Light
//
//  Created by Lucy and Luna Yin on 1/27/22.
//

import SwiftUI

// Design for individual activity rows
struct ActivityRowView : View {
    
    var activities : ActivityModel
    
    var body: some View {
        
        ZStack {
            
            Image(activities.image)
                .resizable()
                .renderingMode(.original)
                .aspectRatio(contentMode: .fill)
                .padding(.bottom, 0)
                .cornerRadius(10)
            
            HStack {
                VStack(alignment: .leading, spacing: 12) {
                    Text(activities.name)
                        .font(.title2)
                        .multilineTextAlignment(.leading)
                    
                    Text("\(activities.time) Minutes")
                }
                .foregroundColor(.black)
                
                Spacer(minLength: 0)
            }
            .padding()
        }
    }
}
