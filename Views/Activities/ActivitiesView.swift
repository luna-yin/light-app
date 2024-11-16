//
//  ActivitiesView.swift
//  Light
//
//  Created by Lucy and Luna Yin on 1/20/22.
//

import SwiftUI

// Mindfulness activities main page design
struct ActivitiesView: View {
    
    @State var txt = ""
    @State var displayedActivities = mindfulnessActivities
    
    var body: some View {
        
        VStack {
            HStack {
                
                VStack(alignment: .leading, spacing: 10) {
                    
                    Text("Activities")
                        .font(.title)
                        .fontWeight(.bold)
                    
                    Text("A collection of guided meditations and audio recordings to help with mindfulness")
                }
                .foregroundColor(.black)
                
                Spacer(minLength: 0)
            }
            .padding()
            
            ScrollView(.vertical, showsIndicators: false) {
                
                VStack {
                    
                    // Search bar
                    HStack(spacing: 15) {
                        
                        TextField("Search Activities", text: $txt)
                            .autocapitalization(.none)
                            .disableAutocorrection(true)
                        
                        Button {
                            
                            displayedActivities = []
                            
                            for i in mindfulnessActivities {
                                
                                if (i.name.lowercased()).contains(txt.lowercased()) {
                                    
                                    displayedActivities.append(i)
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
                        
                        Text("Mindfulness Exercises")
                            .font(.title2)
                            .fontWeight(.bold)
                        
                        Spacer(minLength: 0)
                        
                        Button(action: {
                            
                            displayedActivities = mindfulnessActivities
                            self.txt = ""
                            
                        }) {
                            Text("View All")
                        }
                    }
                    .foregroundColor(.black)
                    .padding(.top, 25)
                    
                    if displayedActivities.isEmpty {
                            
                        Text("No activities found")
                            .padding()
                    }
                    
                    LazyVGrid(columns: Array(repeating: GridItem(.flexible(), spacing: 20), count: 2), spacing: 20) {
                        ForEach(displayedActivities){ activity in
                            NavigationLink(destination: ActivityScreenView(activity: activity)) {
                                ActivityRowView(activities: activity)
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
