//
//  NavigationBarView.swift
//  Light
//
//  Created by Lucy and Luna Yin on 1/6/22.
//

import SwiftUI

// Navigation Bar

struct NavigationBarView : View {
    
    @State var selectedTab = "home"
    
    var body: some View {
        ZStack(alignment: Alignment(horizontal: .center, vertical: .bottom)) {
            
            TabView(selection: $selectedTab) {
                HomeView()
                    .tag("house.fill")
                QuizView()
                    .tag("questionmark.circle.fill")
                ActivitiesView()
                    .tag("smiley")
                CrisisView()
                    .tag("exclamationmark.bubble.fill")
            }
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
            .ignoresSafeArea(.all, edges: .bottom)
            
            HStack(spacing: 0){
                ForEach(tabs, id: \.self) {image in
                    TabButtonView(image: image, selectedTab: $selectedTab)
                    if image != tabs.last {
                        Spacer(minLength: 0)
                    }
                }
            }
            .padding(.horizontal, 25)
            .padding(.vertical, 5)
            .background(Color.white)
            .clipShape(Capsule())
            .shadow(color: Color.black.opacity(0.15), radius: 5, x: 5, y: 5)
            .shadow(color: Color.black.opacity(0.15), radius: 5, x: -5, y: -5)
            .padding(.horizontal)

        }
        .ignoresSafeArea(.keyboard, edges: .bottom)
        .background(Color.white.ignoresSafeArea(.all, edges: .all))
    }
}
