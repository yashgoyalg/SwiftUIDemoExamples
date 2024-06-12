//
//  ContentView.swift
//  TextResponseIterationExample
//
//  Created by iOS-dev on 08/05/24.
//

import SwiftUI

struct ContentView: View {
    let message: String
    @State private var displayedMessage: String = ""
    @State private var currentIndex: Int = 0
    let timer = Timer.publish(every: 0.05, on: .main, in: .common).autoconnect()
    
    var body: some View {
        Text(displayedMessage)
            .padding()
            .onReceive(timer) { _ in
                guard currentIndex < message.count else { timer.upstream.connect().cancel(); return }
                displayedMessage.append(message[message.index(message.startIndex, offsetBy: currentIndex)])
                currentIndex += 1
            }
    }
}

#Preview {
    ContentView(message: "Hello I'm iOS-dev")
}
