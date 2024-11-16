//
//  ActivityScreenView.swift
//  Light
//
//  Created by Lucy and Luna Yin on 1/27/22.
//

import SwiftUI
import AVFoundation

// Audio-playing screen for mindfulness activities
struct ActivityScreenView : View {
    
    @State var activity: ActivityModel
    @State var animate = false
    @State var width: CGFloat = 0
    @State var audioPlayer: AVAudioPlayer!
    @State var playing = false
    
    var body: some View {
        
        ScrollView(.vertical, showsIndicators: false ) {
            
            ZStack {
                Circle().fill(Color("Blue").opacity(0.25)).frame(width: 350, height: 350).scaleEffect(self.animate ? 1 : 0)
                Circle().fill(Color("Blue").opacity(0.5)).frame(width: 250, height: 250).scaleEffect(self.animate ? 1 : 0)
                Circle().fill(Color("Blue").opacity(0.75)).frame(width: 150, height: 150).scaleEffect(self.animate ? 1 : 0)
                Circle().fill(Color("Blue")).frame(width: 30, height: 30)
            }.onAppear {
                
                self.animate.toggle()
            }
            .animation(.linear(duration: 3.0).repeatForever(autoreverses: true), value: self.animate)
                
            VStack {
                        
            Text(activity.name)
                .font(.title)
                .fontWeight(.bold)
                .padding()
                
                ZStack(alignment: .leading) {
                    
                    Capsule().fill(Color.black.opacity(0.1)).frame(height: 10)
                        .padding(.horizontal)
                    
                    Capsule().fill(Color("Blue")).frame(width: self.width, height: 10)
                        .padding(.horizontal)
                    .gesture(DragGesture()
                        .onChanged({ (value) in
                            
                            let x = value.location.x
                            self.width = x
                            
                        }).onEnded({ (value) in
                            
                            var x = value.location.x
                            
                            if x < 0 {
                                
                                x = 0
                            }
                            
                            let screen = UIScreen.main.bounds.width - 45
                            
                            let percent = x / screen
                            
                            self.audioPlayer.currentTime = Double(percent) * self.audioPlayer.duration
                        }))
                }
                .padding()
                
                HStack(spacing: UIScreen.main.bounds.width / 5 - 45) {
                    
                    Button(action: {
                        self.audioPlayer.currentTime -= 10
                    }){
                        Image(systemName: "gobackward.10")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(height: 30)
                    }
                    
                    if self.playing {
                        Button(action: {
                            self.audioPlayer.pause()
                            self.playing = false
                        }){
                            Image(systemName: "pause.circle")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(height: 30)
                        }
                    } else {
                        Button(action: {
                            self.audioPlayer.play()
                            self.playing = true
                        }){
                            Image(systemName: "play.circle")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(height: 30)
                        }
                    }
                    
                 Button(action: {
                        let increaseTime = self.audioPlayer.currentTime + 10
                        if increaseTime < self.audioPlayer.duration {
                           self.audioPlayer.currentTime = increaseTime
                       }
                   }){
                        Image(systemName: "goforward.10")
                           .resizable()
                           .aspectRatio(contentMode: .fit)
                           .frame(height: 30)
                   }
                    
                }
                .padding()
                .foregroundColor(Color.black)
                
                Spacer()
                
            } .onAppear {
                let url = Bundle.main.path(forResource: activity.audio, ofType: "mp3")
                self.audioPlayer = try! AVAudioPlayer(contentsOf: URL(fileURLWithPath: url!))
                
                Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { (_) in
                    
                    if self.audioPlayer.isPlaying{
                        
                        let screen = UIScreen.main.bounds.width - 30
                        
                        let value = self.audioPlayer.currentTime / self.audioPlayer.duration
                        
                        self.width = screen * CGFloat(value)
                    }
                }
            }
        }
    }
}
