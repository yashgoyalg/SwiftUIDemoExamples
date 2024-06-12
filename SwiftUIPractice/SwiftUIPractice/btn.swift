//
//  btn.swift
//  SwiftUIPractice
//
//  Created by Rahul-dev on 11/03/24.
//

import SwiftUI

struct btn: View {
    @State var tittle : String = ""
    var body: some View{
        Text(tittle)
            .padding()
            .font(.title)
            .fontWidth(.standard)
        Button("Press me!"){
            self.tittle = "Namaste India"
            
        }
        
        Button(action: {self.tittle = "Namaste World"}, label:{Text("Press me 2")} )
            .padding()
            .background(Color.blue)
            .foregroundColor(.white)
            .cornerRadius(10)
            .shadow(color: Color.gray, radius: 20)
        
        Button(action: {
            self.tittle = "Namaste Trump"
        }, label: {
            Circle()
                .frame(width: 60,height: 60)
                .overlay(
                    Image(systemName: "heart.fill")
                        .font(.largeTitle)
                        .foregroundColor(.red)
                )
        })
        Button(action: {
            self.tittle = "Namaste Obama"
        }, label: {
            Text("Click me")
                .font(.title3)
                .fontWeight(.bold)
                .padding()
                .padding(.horizontal)
                .background(Capsule()
                    .stroke())
            
        })
    }
}

#Preview {
    btn()
}
