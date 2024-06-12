//
//  ContentView.swift
//  TypingIndicatorWithGIF
//
//  Created by iOS-dev on 03/05/24.
//

import SwiftUI
import SDWebImage
import SDWebImageSwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            AnimatedImage(name: "jumpingDots.gif")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 40, height: 40)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
