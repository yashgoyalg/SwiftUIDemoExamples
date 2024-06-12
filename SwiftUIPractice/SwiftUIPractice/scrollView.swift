//
//  scrollView.swift
//  SwiftUIPractice
//
//  Created by Rahul-dev on 11/03/24.
//

import SwiftUI

struct scrollView: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            VStack {
                ScrollView(.vertical, showsIndicators: false) {
                    VStack {
                        HStack(alignment: .center, content: {
                            ForEach(0..<10) {
                                i in
                                
                                ZStack {
                                    Circle()
                                        .stroke()
                                        .foregroundColor(.black)
                                        .shadow(radius: 2)
                                
                                        .frame(width: 100, height: 100)
                                    Circle()
                                        .stroke()
                                        .foregroundColor(.orange)
                                        .frame(width: 90,height: 90)
                                }
                            }
                        })
                       // Text{
                    }
                }
            }
        }
    }
}

#Preview {
    scrollView()
}
