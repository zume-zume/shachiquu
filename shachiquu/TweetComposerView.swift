//
//  TweetComposerView.swift
//  shachiquu
//
//  Created by zume on 2024/07/07.
//

import SwiftUI

struct TweetComposerView: View {
    @Binding var tweetText: String

    var body: some View {
        VStack {
            TextEditor(text: $tweetText)
                .frame(height: 200)
                .padding()

            Button("Drip") {
                print("Drip: \(tweetText)")
            }
            .padding()
            .foregroundColor(.white)
            .background(Color.blue)
            .cornerRadius(10)
            .padding()

            Spacer()
        }
        .padding()
        .navigationTitle("New Tweet")
    }
}

struct TweetComposerView_Previews: PreviewProvider {
    static var previews: some View {
        TweetComposerView(tweetText: .constant(""))
    }
}
