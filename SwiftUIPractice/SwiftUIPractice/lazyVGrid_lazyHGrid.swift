//
//  lazyVGrid_lazyHGrid.swift
//  SwiftUIPractice
//
//  Created by Rahul-dev on 11/03/24.
//

import SwiftUI

struct lazyVGrid_lazyHGrid: View {
    let colums : [GridItem] = [GridItem(.flexible()),GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible()) ]
    var body: some View {
        ScrollView(.horizontal) {
            //        LazyVGrid(columns: colums, content: {
            //            ForEach(0..<150) {
            //                i in
            //                Rectangle()
            //                    .stroke()
            //                    .frame(width: 90 ,height: 50)
            //                    .foregroundColor(.blue)
            //
            //            }
            //        })

            LazyHGrid(rows: colums, content: {
                ForEach(0..<100) { i in
                    Rectangle()
                        .stroke()
                        .frame(width: 30,height: 30)
                    Rectangle()
                        .stroke()
                        .frame(width: 30, height: 30)
                }
                
            
            })
        }

    }
}

#Preview {
    lazyVGrid_lazyHGrid()
}
