//
//  DropViewDelegate.swift
//  DragAndDropExample
//
//  Created by iOS-dev on 24/05/24.
//

import SwiftUI
import UniformTypeIdentifiers

struct DropViewDelegate: DropDelegate {
    let destinationItem: ItemSet
    @Binding var sets: [ItemSet]
    @Binding var draggedItem: ItemSet?
    
    func dropUpdated(info: DropInfo) -> DropProposal? {
        return DropProposal(operation: .move)
    }
    
    func performDrop(info: DropInfo) -> Bool {
        draggedItem = nil
        return true
    }
    
    func dropEntered(info: DropInfo) {
        if let draggedItem {
            let fromIndex = sets.firstIndex(of: draggedItem)
            if let fromIndex {
                let toIndex = sets.firstIndex(of: destinationItem)
                if let toIndex, fromIndex != toIndex {
                    withAnimation {
                        self.sets.move(fromOffsets: IndexSet(integer: fromIndex), toOffset: (toIndex > fromIndex ? (toIndex + 1) : toIndex))
                    }
                }
            }
        }
    }
}

class ItemSet: ObservableObject, Equatable, Identifiable {
    static func == (lhs: ItemSet, rhs: ItemSet) -> Bool {
        lhs.id == rhs.id
    }
    
    let id = UUID()
    @Published var name: String
    @Published var items: [String]
    
    init(name: String, items: [String]) {
        self.name = name
        self.items = items
    }
}

