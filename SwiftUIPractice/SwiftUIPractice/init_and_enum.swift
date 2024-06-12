//
//  init_and_enum.swift
//  SwiftUIPractice
//
//  Created by Rahul-dev on 11/03/24.
//

import SwiftUI

struct init_and_enum: View {
    var backgrounColor : Color = .red
    var number: Int = 5
    var name: String = "Apple"
    
    var body: some View {
        VStack(){
            Text("5")
                .font(.title)
                .fontWeight(.medium)
                .underline()
            Text("Apple")
                .font(.title)
                .fontWeight(.medium)
            
            Image(systemName: "person.circle.fill")
                .font(.headline)
                .imageScale(.large)
                //.foregroundColor(.red)
        }
        .padding()
        .foregroundColor(.white)
        .background(.blue)
        .shadow(radius: 10)
        .cornerRadius(10)
    }
}

#Preview {
    init_and_enum()
}
