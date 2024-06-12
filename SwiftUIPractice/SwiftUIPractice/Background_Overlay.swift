//
//  Background_Overlay.swift
//  SwiftUIPractice
//
//  Created by Rahul-dev on 10/03/24.
//

import SwiftUI

struct Background_Overlay: View {
    var body: some View {
        Rectangle()
            .fill(LinearGradient(gradient: Gradient(colors: [.black, .green, .red]), startPoint: .top, endPoint: .leading))
            .frame(width: 200, height: 200)
        
            .overlay(
                Rectangle()
                    .fill(RadialGradient(gradient: Gradient(colors: [.green, .yellow]), center: .bottomLeading, startRadius: -10, endRadius: 180))
                    .frame(width: 100,height: 100)
            )
        
        
            .background(
                Rectangle()
                
                    .fill(LinearGradient(gradient: Gradient(colors: [.white, .blue, .yellow]), startPoint: .top, endPoint: .trailing))
                    .frame(width: 300,height: 300)
                    .shadow(radius: 10, x: 0, y: 10)
                    .overlay(
                        Circle()
                            .fill(.blue)
                            .frame(width: 60, height: 60)
                        
                        ,alignment: .bottomTrailing)
            )
        
            
        
    }
}

#Preview {
    Background_Overlay()
}
