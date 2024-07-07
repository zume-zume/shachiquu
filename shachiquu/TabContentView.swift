//
//  TabContentView.swift
//  shachiquu
//
//  Created by zume on 2024/04/21.
//

import SwiftUI

struct TabContentView: View {
    
    enum Selection {
        case one
        case plus
        case two
    }
    
    @State private var selection = Selection.one
    @State private var lastSelection = Selection.one
    
    @State private var isTweetViewPresented = false
    @State private var tweetText: String = ""
    @State private var tweets: [String] = []
    
    var body: some View {
        TabView(selection: $selection) {
            // 一つ目のView
            NavigationView {
                TestView()
            }
            .tabItem {
                Image(systemName: "1.circle")
                Text("First")
            }
            .tag(Selection.one)
            
            // プラスボタン
            Button(action: {
            }) {
            }
            .tabItem {
                Image(systemName: "plus.circle")
            }
            .sheet(isPresented: $isTweetViewPresented, onDismiss: {
                tweets.append(tweetText)
                tweetText = ""
            }) {
                TweetComposerView(tweetText: $tweetText)
            }
            .tag(Selection.plus)
            
            // 2つ目のView
            NavigationView {
                Text("Second View")
                    .navigationTitle("Second")
            }
            .tabItem {
                Image(systemName: "2.circle")
                Text("Second")
            }
            .tag(Selection.two)
        }
        .onChange(of: selection) {
            switch selection {
            case .one, .two:
                lastSelection = selection
                
            case .plus:
                isTweetViewPresented.toggle()
                selection = lastSelection
            }
        }
    }
}

struct TabContentView_Previews: PreviewProvider {
    static var previews: some View {
        TabContentView()
    }
}
