//
//  ResourceView.swift
//  Light
//
//  Created by Lucy Yin on 1/6/22.
//

import SwiftUI

// Resource list page
struct ResourceView : View {
    
    @State private var showSafari: Bool = false
    @State var animateCard = false
    @State var data: [ResourceModel]
    var sources : CategoryModel
    
    var body: some View {
        
        VStack {
            
            ScrollView(.vertical, showsIndicators: false) {
                
                VStack(spacing: 15) {
                    ForEach(0..<self.data.count) { i in
                        
                        GeometryReader { g in
                            
                            ExpandedResourceView(data: self.$data[i], animateCard: self.$animateCard)
                            .padding(.horizontal, self.data[i].expand ? 0 : 15)
                            .padding(.vertical, self.data[i].expand ? 35 : 0)
                            .offset(y: self.data[i].expand ? -g.frame(in: .global).minY : 0)
                            .opacity(self.animateCard ? (self.data[i].expand ? 1 : 0) : 1)
                            .onTapGesture {
                                withAnimation(.interactiveSpring(response: 0.5, dampingFraction: 0.8, blendDuration: 0)) {
                                    
                                    self.animateCard.toggle()
                                    self.data[i].expand.toggle()
                                }
                            }
                            
                        }
                        .frame(height: self.data[i].expand ? UIScreen.main.bounds.height : 200)
                        
                        .simultaneousGesture(DragGesture(minimumDistance: self.data[i].expand ? 0 : 500))
                    }
                }
                
            }
        }
        .navigationTitle(sources.name)
        .navigationBarTitleDisplayMode(.inline)
        
    }
}
