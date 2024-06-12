//
//  ContentView.swift
//  DatePickerViewExample
//
//  Created by iOS-dev on 03/06/24.
//

import SwiftUI

struct ContentView: View {
    @State var date = Date.now
    @State var isShowingDatePicker = false

    let dateRange: ClosedRange<Date> = Date(timeIntervalSinceNow: -864000) ... Date(timeIntervalSinceNow: 864000)

    private var datePickerId: String { "picker" }

    var body: some View {
      ScrollViewReader { reader in
        ScrollView(.vertical) {
          VStack {
            VStack {
              HStack {
                Text("Jump to")
                Spacer()
                Button(
                  action: { toggleDatePicker(reader: reader) },
                  label: { Text(date, format: Date.FormatStyle.init(date: .abbreviated)) }
                )
                .buttonStyle(.bordered)
                .foregroundColor(isShowingDatePicker ? .accentColor : .primary)
              }

              VStack {
                DatePicker("Jump to", selection: $date, in: dateRange, displayedComponents: .date)
                  .datePickerStyle(.graphical)
                  .frame(height: isShowingDatePicker ? nil : 0, alignment: .top)
                  .clipped()
                  .background {
                    RoundedRectangle(cornerRadius: 8, style: .continuous)
                      .foregroundColor(Color(UIColor.systemBackground))
                      .shadow(radius: 1)
                  }
              }
              .padding(.horizontal, 8)
            }.id(datePickerId)

            

            Button("Clicky") { toggleDatePicker(true, reader: reader) }
          }
        }
      }
      .padding()
    }

    private func toggleDatePicker(_ show: Bool? = nil, reader: ScrollViewProxy) {
      withAnimation(.easeOut) {
        isShowingDatePicker = show ?? !isShowingDatePicker
        if isShowingDatePicker {
          reader.scrollTo(datePickerId)
        }
      }
    }


  }

#Preview {
    ContentView()
}
