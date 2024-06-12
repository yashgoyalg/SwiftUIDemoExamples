//
//  FreqVisualizer.swift
//  SpeechRecognizerUIExample
//
//  Created by iOS-dev on 26/05/24.
//

import SwiftUI
import AVFoundation

struct FreqVisualizer: View {
    let barWidth = 4.0
    @State var shift:Double = UIScreen.main.bounds.width/2 + 5*2.0
    @Binding var freq:[Double]
    var body: some View{
        ZStack(alignment: .trailing){
            ForEach(freq.indices, id: \.self){idx in
                RoundedRectangle(cornerRadius: 4)
                    .fill(.pink)
                    .frame(width: barWidth, height: freq[idx])
                    .offset(x:shift + Double(idx)*barWidth*1.3 )
                
            }
            
            
        }
        .frame(maxWidth: .infinity, maxHeight: 100)
        .animation(.default, value: shift)
        .onChange(of: freq.count){ _ in
            shift -= barWidth*1.3
        }
    }
}

class AudioRecorder: NSObject, ObservableObject {
    @Published var frequency: Double = 0.0
    @Published var isRecording: Bool = false
    
    private var audioRecorder: AVAudioRecorder!
    private var timer: Timer?
    
    func startRecording() {
        let audioSession = AVAudioSession.sharedInstance()
        do {
            try audioSession.setCategory(.playAndRecord, mode: .default)
            try audioSession.setActive(true)
            
            let settings = [
                AVFormatIDKey: Int(kAudioFormatMPEG4AAC),
                AVSampleRateKey: 44100,
                AVNumberOfChannelsKey: 2,
                AVEncoderAudioQualityKey: AVAudioQuality.high.rawValue
            ]
            
            let documentsPath = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)[0]
            let audioFilename = documentsPath.appendingPathComponent("audioRecording.m4a")
            
            audioRecorder = try AVAudioRecorder(url: audioFilename, settings: settings)
            audioRecorder.record()
            self.timer =  Timer.scheduledTimer(withTimeInterval: 0.1, repeats: true) { _ in
                self.calculateFrequency()
                
            }
            isRecording = true
        }
        catch {
            print("Error setting up audio recording: \(error.localizedDescription)")
        }
        
        
    }
    func shouldContinue(){
        print(audioRecorder.currentTime)
        if audioRecorder.currentTime < 2{
            stopRecording()
        }
    }
    func stopRecording() {
        audioRecorder.stop()
        isRecording = false
        timer?.invalidate()
    }
    
    private func calculateFrequency() {
        frequency = .random(in: 4...20)
    }
}
