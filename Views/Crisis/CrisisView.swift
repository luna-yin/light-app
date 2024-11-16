//
//  CrisisView.swift
//  Light
//
//  Created by Lucy and Luna Yin on 1/6/22.
//

import SwiftUI

// Main page of crisis resources
struct CrisisView : View {
    
    @State var txt = ""
    @State var displayedResources = crisisResourceList
    
    var body: some View {
            
        VStack {
                
            HStack {
                
                VStack(alignment: .leading, spacing: 10) {
                    
                    Text("Are you in crisis?")
                        .font(.title)
                        .fontWeight(.bold)
                    
                    Text("Reach out to the sources here if you are contemplating self-harm/suicide, in an abusive situation, or are otherwise in need of immediate aid.")
                    Text("We are here to help")
                        .bold()
                }
                .foregroundColor(.black)
                .padding(.bottom)
                
                Spacer(minLength: 0)
            }
            .padding(.top, 30)
            .padding(.horizontal)
            
            ScrollView(.vertical, showsIndicators: false) {
                
                // Search bar
                HStack {
                    
                    TextField("Search", text: $txt)
                        .autocapitalization(.none)
                        .disableAutocorrection(true)
                    
                    Button {
                        
                        displayedResources = []
                        
                        for i in crisisResourceList {
                            
                            if (i.name.lowercased()).contains(txt.lowercased()) ||  (i.details.lowercased()).contains(txt.lowercased()) {
                                
                                displayedResources.append(i)
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
                    
                    Text("Crisis Aid Resources")
                        .font(.title2)
                        .fontWeight(.bold)
                    
                    Spacer(minLength: 0)
                    
                    Button(action: {
                        
                        displayedResources = crisisResourceList
                        txt = ""
                        
                    }) {
                        Text("View All")
                    }
                }
                .foregroundColor(.black)
                .padding(.vertical)
                    
                if displayedResources.isEmpty {
                        
                    Text("No resources found")
                        .padding()
                }
                    
                VStack(alignment: .leading, spacing: 20) {
                    ForEach(displayedResources) { resource in
                        CrisisResourceRow(resource: resource)
                    }
                }
                .frame(maxWidth: .infinity, alignment: .leading)
            }
            .padding()
            .padding(.bottom, 70)
        }
    }
}
