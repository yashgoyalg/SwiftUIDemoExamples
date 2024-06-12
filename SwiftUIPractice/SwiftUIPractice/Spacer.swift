//
//  Spacer.swift
//  SwiftUIPractice
//
//  Created by Rahul-dev on 11/03/24.
//

import SwiftUI

struct Spacer: View {
    var body: some View {
        HStack(spacing: 10) {
            
            Rectangle()
                .fill(Color.red)
                .frame(width: 50, height: 50)
            
            Rectangle()
                .fill(Color.red)
                .frame(width: 50, height: 50)
        }
        .background(Color.yellow)
    }
}

#Preview {
    Spacer()
}
