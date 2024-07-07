//
//  ContentView.swift
//  shachiquu
//
//  Created by zume on 2024/04/21.
//

import SwiftUI
import SwiftData

struct ContentView: View {

    var body: some View {
        TabContentView()
    }
}

#Preview {
    ContentView()
        .modelContainer(for: Item.self, inMemory: true)
}
