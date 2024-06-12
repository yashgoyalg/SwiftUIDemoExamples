//
//  TextEditor.swift
//  SwiftUIPractice
//
//  Created by Rahul-dev on 04/04/24.
//

import SwiftUI

struct TextEditor: View {
    @State private var consentText: String = "Detailed text about how data privacy pertains to this app and why its important for the user to enable this functionality.\nApp development has a low threshold of entry, meaning almost anyone with some coding skills can string together an app.\nApps are also developed by larger teams employed by multinational companies with support from management and legal teams. In addition to the in-house IT department, larger companies may outsource development of new apps to third parties, for some of which the development of apps are part of the lift and shift of an enterprise legacy system to the cloud. Apps are also developed by start-ups, which may be producing novel end-user facing functionality from scratch, and by individuals just tinkering at home. App development has a low threshold of entry, meaning almost anyone with some coding skills \ncan string together an app. Apps are also developed by larger teams employed \nDetailed text about how data privacy pertains to this app and why its important for the user to enable this functionality.\nApp development has a low threshold of entry, meaning almost anyone with some coding skills can string together an app.\nApps are also developed by larger teams employed by multinational companies with support from management and legal teams. In addition to the in-house IT department, larger companies may outsource development of new apps to third parties, for some of which the development of apps are part of the lift and shift of an enterprise legacy system to the cloud. Apps are also developed by start-ups, which may be producing novel end-user facing functionality from scratch, and by individuals just tinkering at home. App development has a low threshold of entry, meaning almost anyone with some coding skills\ncan string together an app. Apps are also developed by larger teams employed\nDetailed text about how data privacy pertains to this app and why its important for the user to enable this functionality.\nApp development has a low threshold of entry, meaning almost anyone with some coding skills can string together an app.\nApps are also developed by larger teams employed by multinational companies with support from management and legal teams. In addition to the in-house IT department, larger companies may outsource development of new apps to third parties, for some of which the development of apps are part of the lift and shift of an enterprise legacy system to the cloud. Apps are also developed by start-ups, which may be producing novel end-user facing functionality from scratch, and by individuals just tinkering at home. App development has a low threshold of entry, meaning almost anyone with some coding skills \ncan string together an app. Apps are also developed by larger teams employed"

    var body: some View {
        NavigationView {
            VStack {
                ScrollView(.vertical,showsIndicators: false) {
                    Text(consentText)
                        .padding()
                        .background(
                            RoundedRectangle(cornerRadius: 30)
                                .stroke())
                }
                
                
                
            }
           // .navigationBarTitle("Text Editor", displayMode: .inline)
        }
    }
}

#Preview {
    TextEditor()
}

