//
//  ContentView.swift
//  ShareSheet
//
//  Created by iOS-dev on 03/05/24.
//

import SwiftUI

struct ContentView: View {
    @State private var showShareSheet = false
    
    var body: some View {
        VStack(spacing: 20) {
            Text("Hello World")
            Button(action: {
                self.showShareSheet = true
            }) {
                Text("Share Me").bold()
            }
        }
        .sheet(isPresented: $showShareSheet) {
            ShareSheet(activityItems: ["Hello World"])
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
