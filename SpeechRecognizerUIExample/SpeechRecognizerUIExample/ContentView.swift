//
//  ContentView.swift
//  SpeechRecognizerUIExample
//
//  Created by iOS-dev on 26/05/24.
//

import SwiftUI
import AVFoundation
import Foundation
import Combine



struct ContentView: View {
    @State var isHold: Bool = false
    @State var freqs:[Double] = []
    @StateObject var audioRecorder = AudioRecorder()
    
    var body: some View {
        RoundedRectangle(cornerRadius: 32.5)
            .fill(.white)
            .frame(height: dynamicHeight)
            .animation(.linear, value: isHold)
            .animation(.linear, value: audioRecorder.isRecording)
            .overlay(alignment: .bottomTrailing) {
                micView(isHold: $isHold)
                    .padding(.horizontal, 20.0/2)
                    .padding(.vertical, 20.0/2)
                    .onChange(of: isHold) { newValue in
                        if newValue{
                            audioRecorder.startRecording()
                        }
                        else{
                            audioRecorder.shouldContinue()
                        }
                    }
                
            }
            .overlay(alignment: .topTrailing){
                if !isHold && audioRecorder.isRecording{
                    FreqVisualizer(freq: $freqs)
                        .frame(height: 65)
                    
                        .clipShape(RoundedRectangle(cornerRadius: 32.5))
                    
                    
                }
            }
            .onReceive(audioRecorder.$frequency) { freq in
                freqs.append(freq)
            }
            .padding(.horizontal)
        
        
    }
    
    var dynamicHeight: Double{
        if isHold{
            return 80.0
        }
        else{
            if audioRecorder.isRecording{
                return 150.0
            }
            else{
                return 65.0
            }
        }
        
    }
}

struct micView: View {
    @GestureState var isPressed: Bool = false
    @Binding var isHold: Bool
    @State var scale: Double = 1
    var body: some View {
        ZStack{
            Image(systemName: "mic.fill")
                .resizable()
                .scaledToFit()
                .foregroundStyle(.white)
                .frame(width: 25,height: 25)
                .background{
                    Circle()
                        .fill(.orange)
                        .frame(width: 65-20,height: 65-20)
                        .scaleEffect(scale)
                }
                .frame(width: 65-20,height: 65-20)
                .offset(y: isHold ? -100 : 0)
                
                .onChange(of: isPressed){  pressed in
                    if pressed {
                        // Start the animation when pressed
                        withAnimation(Animation.spring(response: 0.7, dampingFraction: 0.6, blendDuration: 0.5)){
                            isHold = true
                        }
                        withAnimation(Animation.easeInOut(duration: 0.6).repeatForever()) {
                            scale = 1.2
                        }
                    } else {
                        withAnimation(Animation.spring(response: 0.5, dampingFraction: 0.7, blendDuration: 0.6)){
                            isHold = false
                        }
                        // Stop the animation when released
                        withAnimation {
                            scale = 1.0
                        }
                    }
                }
                .allowsHitTesting(false)
            
            Circle()
                .fill(.white)
                .opacity(0.01)
                .frame(width: 65-20,height: 65-20)
                .gesture(
                    DragGesture(minimumDistance: 0)
                        .updating($isPressed){ value, state, _ in
                            state = true
                        }
                )
        }
    }
}


#Preview {
    ZStack{
        Color.black.opacity(0.7)
            .ignoresSafeArea()
        VStack{
            Spacer()
            ContentView()
        }
        
    }
    
}
