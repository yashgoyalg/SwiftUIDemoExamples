//
//  ContentView.swift
//  OnboardingViewExample
//
//  Created by iOS-dev on 02/06/24.
//

import SwiftUI

struct ContentView: View {
    
    @State private var currentTab = 0
    
    
    var body: some View {
        TabView(selection: $currentTab,
                content:  {
            ForEach(OnboardingData.list) { viewData in
                OnboardingView(data: viewData)
                    .tag(viewData.id)
                    
            }
        })
        .tabViewStyle(PageTabViewStyle())
        .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
    }
}

#Preview {
    ContentView()
}

