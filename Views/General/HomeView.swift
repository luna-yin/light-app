//
//  HomeView.swift
//  Light
//
//  Created by Lucy and Luna Yin on 1/6/22.
//

import SwiftUI

// Home/resources page design
struct HomeView : View {
    
    @State var txt = ""
    @State var displayedCategories = categories
    
    var body: some View {
        
        VStack {
            HStack {
                
                VStack(alignment: .leading, spacing: 10) {
                    
                    
                    Text("Hello!")
                        .font(.title)
                        .fontWeight(.bold)
                    
                    Text("Welcome to Light")
                }
                .foregroundColor(.black)
                
                Spacer(minLength: 0)
                
                Image("Logo")
                    .resizable()
                    .renderingMode(.original)
                    .frame(width: 60, height: 60)
                
            }
            .padding()
            
            ScrollView(.vertical, showsIndicators: false) {
                
                VStack {
                    
                    // Search bar
                    HStack(spacing: 15) {
                        
                        TextField("Search Resources", text: $txt)
                            .autocapitalization(.none)
                            .disableAutocorrection(true)
                        
                        Button {
                            
                            displayedCategories = []
                            
                            for i in categories {
                                
                                if (i.name.lowercased()).contains(txt.lowercased()) {
                                    
                                    displayedCategories.append(i)
                                }
                            }
                            
                        } label: {
                            Image(systemName: "magnifyingglass")
                                .foregroundColor(.gray)
                        }
                    }
                    .padding(.vertical, 12)
                    .padding(.horizontal)
                    .background(Color.black.opacity(0.05))
                    .clipShape(Capsule())
                    
                    HStack {
                        Text("Resources")
                            .font(.title2)
                            .fontWeight(.bold)
                        
                        Spacer(minLength: 0)
                        
                        Button(action: {
                            
                            displayedCategories = categories
                            self.txt = ""
                            
                        }) {
                            Text("View All")
                        }
                    }
                    .foregroundColor(.black)
                    .padding(.top, 25)
                    
                    if displayedCategories.isEmpty {
                            
                        Text("No categories found")
                            .padding()
                    }
                    
                    LazyVGrid(columns: Array(repeating: GridItem(.flexible(), spacing: 20), count: 2), spacing: 20) {
                        ForEach(displayedCategories){ category in
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
