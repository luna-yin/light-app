//
//  CrisisResourceRow.swift
//  Light
//
//  Created by Lucy and Luna Yin on 1/27/22.
//

import SwiftUI

//Design for individual crisis resource rows
struct CrisisResourceRow : View {
    
    @State var resource: CrisisResourceModel
    @State private var showSafari = false
    
    var body: some View {
        
        VStack {
            
            HStack {
                
                VStack(alignment: .leading, spacing: 10) {
                    
                    VStack(alignment: .leading) {
                        
                        Text(resource.name)
                            .font(.title3)
                            .bold()
                        Text(resource.details)
                            .multilineTextAlignment(.leading)
                    }
                    
                    HStack {
                        
                        if resource.textNumber != "none" {
                            
                            Link("Text", destination: URL(string: "imessage:" + resource.textNumber)!)
                            
                        }
                        
                        if resource.telNumber != "none" {
                            
                            Link("Call", destination: URL(string: "tel:" + resource.telNumber)!)
                            
                        }
                        
                        if resource.website != "none" {
                            
                            Button("Website") {
                                showSafari = true
                            }
                        }
                        
                    }
                }
                
                Spacer(minLength: 0)
            }
            .padding()
            .background(Color.black.opacity(0.05))
            .cornerRadius(10)
            .fullScreenCover(isPresented: $showSafari, content: {
                SFSafariViewWrapper(url: URL(string: self.resource.website)!)
                })
        }
        
    }
    
}
