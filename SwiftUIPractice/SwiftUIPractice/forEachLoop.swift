//
//  forEachLoop.swift
//  SwiftUIPractice
//
//  Created by Rahul-dev on 11/03/24.
//

import SwiftUI

struct forEachLoop: View {
    var body: some View {
        ForEach(0..<10) {
            index in
            HStack {
                Image(systemName: "person.circle.fill")
                    .resizable()
                    .foregroundColor(.blue)
                    .frame(width: 50, height: 50)
                Text("Index is: \(index)")
                    .font(.headline)
                    .fontWeight(.semibold)
                    .underline()
                
                
            }
        }

    }
}

#Preview {
    forEachLoop()
}
