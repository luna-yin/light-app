//
//  ExpandedResourceView.swift
//  Light
//
//  Created by Lucy Yin on 1/6/22.
//

import SwiftUI

// Individual resource info page
struct ExpandedResourceView : View {
    
    @Binding var data : ResourceModel
    @Binding var animateCard : Bool
    @State private var showSafari: Bool = false
    
    var body: some View {
        
        VStack {
            
            Image(self.data.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(height: 250)
                .padding(.top, self.data.expand ? 50 : 0)
            
            if self.data.expand {
                
                VStack(alignment: .leading, spacing: 10) {
                        
                    Text(self.data.name)
                        .font(.title)
                        .fontWeight(.bold)
                    
                    Text(self.data.details)
                }
                .padding()
                
                Button(action: {
                    
                    self.showSafari.toggle()
                    
                }) {
                    
                    Text("Go to Website")
                        .foregroundColor(.white)
                        .padding(.vertical)
                        .frame(width: UIScreen.main.bounds.width / 2)
                        .background(Color.blue)
                        .clipShape(Capsule())
                }
            }
        }
        .padding(.horizontal, self.data.expand ? 0 : 20)
        .contentShape(Rectangle())
        .padding(.bottom, 15)
        .fullScreenCover(isPresented: $showSafari, content: {
            SFSafariViewWrapper(url: URL(string: self.data.url)!)
            })
    }
}
