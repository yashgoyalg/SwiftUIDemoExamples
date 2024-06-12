//
//  ContentView.swift
//  SwiftUIPractice
//
//  Created by Rahul-dev on 10/03/24.
//

import SwiftUI

struct ContentView: View {
    @State private var showingSmallView = false
    var body: some View {
        NavigationView {
            VStack {
                List {
                    Text("hi")
                    Text("hi")
                    Text("hi")
                }
                Button(action: { showingSmallView = true }){
                    Rectangle()
                        .frame(width: 50, height: 50)
                }
            }
        }
        .sheet(isPresented: $showingSmallView){
            VStack {
               // smallView()
                   // .presentationDetents([.height(100)]) // here!
            }
            .frame(width: 200, height: 200)
        }
    }
}

#Preview {
    ContentView()
}
