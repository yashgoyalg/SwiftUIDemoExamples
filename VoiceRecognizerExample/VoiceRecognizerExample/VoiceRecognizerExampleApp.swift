//
//  VoiceRecognizerExampleApp.swift
//  VoiceRecognizerExample
//
//  Created by iOS-dev on 17/05/24.
//

import SwiftUI

@main
struct VoiceRecognizerExampleApp: App {
    
    let audio = "your url here"

    var body: some Scene {
        WindowGroup {
            ContentView(audio: audio)
        }
    }
}
