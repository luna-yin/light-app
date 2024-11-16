//
//  ContentView.swift
//  Light
//
//  Created by Luna and Lucy Yin on 1/1/22.
//

import SwiftUI

// Displaying navigation bar
struct ContentView: View {
    
    init() {
        UITabBar.appearance().barTintColor = UIColor.blue
    }
    
    var body: some View {
        NavigationView {
            NavigationBarView()
                .navigationTitle("")
                .navigationBarTitleDisplayMode(.inline)
                .navigationBarHidden(true)
        }
    }
}
