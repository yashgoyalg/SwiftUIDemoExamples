//
//  Vstack_Hstack_Zstack.swift
//  SwiftUIPractice
//
//  Created by Rahul-dev on 10/03/24.
//

import SwiftUI

struct Vstack_Hstack_Zstack: View {
    var body: some View {
//        VStack(){
//            Rectangle()
//                .fill(.red)
//                .frame(width: 100, height: 100)
//            Rectangle()
//                .fill(.red)
//                .frame(width: 100, height: 100)
//            HStack {
//                Rectangle()
//                    .fill(.red)
//                .frame(width: 100, height: 100)
//                Rectangle()
//                    .fill(.red)
//                .frame(width: 100, height: 100)
//                VStack {
//                    Rectangle()
//                        .fill(.red)
//                    .frame(width: 100, height: 100)
//                    
//                }
//            }
//            Rectangle()
//                .fill(.red)
//                .frame(width: 100, height: 100)
//            Rectangle()
//                .fill(.red)
//                .frame(width: 100, height: 100)
//        }
//        ZStack(alignment: .top, content: {
//            Rectangle()
//                .fill(.red)
//            .frame(width: 400, height: 400)
//            Rectangle()
//                .fill(.yellow)
//            .frame(width: 300, height: 300)
//            Rectangle()
//                .fill(.blue)
//            .frame(width: 200, height: 200)
//            Rectangle()
//                .fill(.orange)
//            .frame(width: 100, height: 100)
//        })
        ZStack(alignment: .top, content: {
            
                Rectangle()
                    .fill(.yellow)
                    .frame(width: 350, height: 600)
                VStack(alignment: .leading,spacing: 30, content: {
                    
                        Rectangle()
                            .fill(.red)
                            .frame(width: 200, height: 200)
                        Rectangle()
                            .fill(.green)
                            .frame(width: 150, height: 150)
                    HStack(alignment: .bottom, content: {
                        
                                Rectangle()
                                    .fill(.purple)
                                .frame(width: 90, height: 90)
                                Rectangle()
                                    .fill(.red)
                                .frame(width: 100, height: 100)
                                
                                Rectangle()
                                    .fill(.blue)
                                .frame(width: 50, height: 50)
                            
                    })
                        .background()
                    
                })
                .background(Color.black)
            
        })
    }
}

#Preview {
    Vstack_Hstack_Zstack()
}
