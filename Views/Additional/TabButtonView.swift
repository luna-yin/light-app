//
//  TabButtonView.swift
//  Light
//
//  Created by Lucy and Luna Yin on 1/6/22.
//

import SwiftUI

// Tab bar at bottom of pages
var tabs = ["house.fill", "questionmark.circle.fill", "smiley", "exclamationmark.bubble.fill"]

struct TabButtonView : View {
    var image : String
    @Binding var selectedTab : String
    var body: some View {
        Button(action: {selectedTab = image}) {
            Image(systemName: image)
                .renderingMode(.template)
                .foregroundColor(selectedTab == image ? Color.blue : Color.black.opacity(0.4))
                .padding()
                .font(.system(size: 20))
        }
    }
}
