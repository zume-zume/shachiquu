//
//  TestView.swift
//  shachiquu
//
//  Created by zume on 2024/07/07.
//

import SwiftUI
import SwiftData

struct TestView: View {
    /*
    @Environment(\.modelContext) private var modelContext
    @Query private var items: [Item]
    */
    @State private var isShowingTweetSheet = false
    @State private var tweetText: String = ""
    @State private var tweets: [String] = []
     
    var body: some View {
        VStack {
            List(tweets, id: \.self) { tweet in
                Text(tweet)
            }
            .padding()

            Spacer()
        }
        .navigationTitle("Drips")
        
        /*
        List {
            ForEach(items) { item in
                NavigationLink {
                    Text("Item at \(item.timestamp, format: Date.FormatStyle(date: .numeric, time: .standard))")
                } label: {
                    Text(item.timestamp, format: Date.FormatStyle(date: .numeric, time: .standard))
                }
            }
            .onDelete(perform: deleteItems)
        }
        .toolbar {
            ToolbarItem(placement: .navigationBarTrailing) {
                EditButton()
            }
            ToolbarItem {
                Button(action: addItem) {
                    Label("Add Item", systemImage: "plus")
                }
            }
        }
        */
    }
    
    /*
    private func addItem() {
        withAnimation {
            let newItem = Item(timestamp: Date())
            modelContext.insert(newItem)
        }
    }

    private func deleteItems(offsets: IndexSet) {
        withAnimation {
            for index in offsets {
                modelContext.delete(items[index])
            }
        }
    }
    */
}

#Preview {
    TestView()
}
