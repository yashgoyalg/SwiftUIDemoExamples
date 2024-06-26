//
//  ContentView.swift
//  TypingIndicator
//
//  Created by iOS-dev on 03/05/24.
//

import SwiftUI


struct ContentView: View {
    @State private var numberOfTheAnimationgBall = 3
    
    var body: some View {
        HStack(alignment: .firstTextBaseline) {
            ForEach(0..<3) { i in
                Capsule()
                    .foregroundColor((self.numberOfTheAnimationgBall == i) ? .blue : Color(UIColor.darkGray))
                    .frame(width: self.ballSize, height: (self.numberOfTheAnimationgBall == i) ? self.ballSize/3 : self.ballSize)
            }
        }
        .animation(Animation.spring(response: 0.5, dampingFraction: 0.7, blendDuration: 0.1).speed(2))
        .onAppear {
            Timer.scheduledTimer(withTimeInterval: self.speed, repeats: true) { _ in
                var randomNumb: Int
                repeat {
                    randomNumb = Int.random(in: 0...2)
                } while randomNumb == self.numberOfTheAnimationgBall
                self.numberOfTheAnimationgBall = randomNumb
            }
        }
    }
    
    // MAKR: - Drawing Constants
    let ballSize: CGFloat = 20
    let speed: Double = 0.3
}

#Preview {
    ContentView()
}
