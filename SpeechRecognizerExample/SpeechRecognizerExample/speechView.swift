//
//  speechView.swift
//  SpeechRecognizerExample
//
//  Created by iOS-dev on 23/05/24.
//

import SwiftUI

struct SpeechView: View {
    
    private enum Constants {
        static let recognizeButtonSide: CGFloat = 100
    }
    
    @ObservedObject private var speechAnalyzer = SpeechAnalyzer()
    
    var body: some View {
        VStack {
            Spacer()
            Text(speechAnalyzer.recognizedText ?? "Tap and hold to begin")
                .padding()
            
            Button {
                // Empty action to use with gestures
            } label: {
                Image(systemName: speechAnalyzer.isProcessing ? "waveform.circle.fill" : "waveform.circle")
                    .resizable()
                    .frame(width: Constants.recognizeButtonSide,
                           height: Constants.recognizeButtonSide,
                           alignment: .center)
                    .foregroundColor(speechAnalyzer.isProcessing ? .red : .gray)
                    .aspectRatio(contentMode: .fit)
            }
            .padding()
            .simultaneousGesture(LongPressGesture(minimumDuration: 0.5)
                .onChanged { _ in
                    toggleSpeechRecognition(start: true)
                }
                .onEnded { _ in
                    toggleSpeechRecognition(start: false)
                }
            )
        }
    }
    
    private func toggleSpeechRecognition(start: Bool) {
        if start {
            speechAnalyzer.start()
        } else {
            speechAnalyzer.stop()
        }
    }
}

#Preview {
    SpeechView()
}
