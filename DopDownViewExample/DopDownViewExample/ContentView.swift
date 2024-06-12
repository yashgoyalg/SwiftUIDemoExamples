//
//  ContentView.swift
//  DopDownViewExample
//
//  Created by iOS-dev on 03/06/24.
//

import SwiftUI

struct ContentView: View {
    @State var selection1: String? = nil
    var body: some View {
        DropDownPicker(
            selection: $selection1,
            options: [
                "Apple",
                "Google",
                "Amazon",
                "Facebook",
                "Instagram"
            ]
        )
    }
}

#Preview {
    ContentView()
}

enum DropDownPickerState {
    case top
    case bottom
}
