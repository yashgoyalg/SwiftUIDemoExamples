//
//  Padding.swift
//  SwiftUIPractice
//
//  Created by Rahul-dev on 10/03/24.
//

import SwiftUI

struct Padding: View {
    var body: some View {
        VStack(alignment: .center, content: {
            Text("Namaste, World!")
                .font(.largeTitle)
                .fontWeight(.medium)
                .foregroundColor(Color.gray)
            
            Text("Welcome to Shark Tank season 3, Waiting for your fire pitch to fire on the shark tank stage.")
        })
        .padding()
        .background(.white)
        .shadow(color: .blue, radius: 20)
        
    }
}

#Preview {
    Padding()
}
