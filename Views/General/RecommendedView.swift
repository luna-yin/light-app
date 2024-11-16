//
//  RecommendedView.swift
//  Light
//
//  Created by Lucy and Luna Yin on 1/6/22.
//

import SwiftUI

// Recommended Resources Page
struct RecommendedView : View {
    
    @State var txt = ""
    @StateObject var quizManager = QuizManager()
    @State var recommendedCategories: [CategoryModel]
    
    var body: some View {
        
        
        VStack {
            HStack {
                
                VStack(alignment: .leading, spacing: 10) {
                    Text("Resources")
                        .font(.title)
                        .fontWeight(.bold)
                    
                    Text("Recommended for You")
                }
                .foregroundColor(.black)
                
                Spacer(minLength: 0)
                
                Button {
                } label: {
                    
                    Image("Logo")
                        .resizable()
                        .renderingMode(.original)
                        .frame(width: 50, height: 50)
                }
            }
            .padding()
            
            ScrollView(.vertical, showsIndicators: false) {
                
                VStack {
                    
                    if recommendedCategories.isEmpty {
                            
                        Text("No categories or resources found")
                            .padding()
                    }
                    
                    LazyVGrid(columns: Array(repeating: GridItem(.flexible(), spacing: 20), count: 2), spacing: 20) {
                        ForEach(recommendedCategories){ category in
                            NavigationLink(destination: ResourceView(data: category.resourceData, sources: category)) {
                                CategoryView(categories: category)
                            }
                        }
                    }
                    .padding(.top)
                }
                .padding()
                .padding(.bottom, 70)
            }
        }

    }
}

