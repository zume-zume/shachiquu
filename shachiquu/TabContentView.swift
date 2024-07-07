//
//  TabContentView.swift
//  shachiquu
//
//  Created by zume on 2024/04/21.
//

import SwiftUI

struct TabContentView: View {
    @State private var selection = 0
    
    var body: some View {
        TabView(selection: $selection) {
            NavigationView {
                Text("First View")
                    .navigationTitle("First")
            }
            .tabItem {
                Image(systemName: "1.circle")
                Text("First")
            }
            .tag(0)
            
            NavigationView {
                Text("Second View")
                    .navigationTitle("Second")
            }
            .tabItem {
                Image(systemName: "2.circle")
                Text("Second")
            }
            .tag(1)
            
            // 追加のタブをここに追加する。
            
        }
    }
}

struct TabContentView_Previews: PreviewProvider {
    static var previews: some View {
        TabContentView()
    }
}
