//
//  ColorItemView.swift
//  DragAndDropExample
//
//  Created by iOS-dev on 24/05/24.
//

import SwiftUI
import UniformTypeIdentifiers

/*
struct ColorItemView: View {
    @State var sets: [ItemSet] = [
        ItemSet(name: "Set 1", items: ["Item 1", "Item 2", "Item 3"]),
        ItemSet(name: "Set 2", items: ["Item 1", "Item 2", "Item 3"]),
        ItemSet(name: "Set 3", items: ["Item 1", "Item 2", "Item 3"]),
        ItemSet(name: "Set 4", items: ["Item 1", "Item 2", "Item 3"])
    ]
    @State var draggedSet: ItemSet? = nil
    
    var body: some View {
        List {
            ForEach(sets) { set in
                Section(header: Text(set.name).font(Font.headline).fontWeight(.bold).foregroundStyle(Color(UIColor.label))) {
                    DisclosureGroup {
                        ForEach(set.items, id: \.self) { item in
                            Text(item)
                        }
                    } label: {
                        Text(set.name)
                    }
                }
                .textCase(nil)
                .tint(.primary)
                .onDrag {
                    draggedSet = set
                    return NSItemProvider(object: set.name as NSString)
                }
                .onDrop(of: [UTType.text], delegate: DropViewDelegate(destinationItem: set, sets: $sets, draggedItem: $draggedSet))
            }
        }
        .listStyle(.insetGrouped)
        .listSectionSpacing(.compact)
        .background(Color(.systemGroupedBackground))
        .scrollContentBackground(.hidden)
    }
}

#Preview {
    ColorItemView()
}

*/
