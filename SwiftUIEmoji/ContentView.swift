//
//  ContentView.swift
//  SwiftUIEmoji
//
//  Created by Raheem Chisman on 7/7/24.
//

import SwiftUI

struct ContentView: View {
    enum Emoji: String, CaseIterable{
        case 😄, 😎,🤩,👻,🥦,🐝
    }
    @State var myEmoji: Emoji = .🐝
    var body: some View {
        VStack {
            //Image(systemName: "globe")
              //  .imageScale(.large)
               // .foregroundStyle(.tint)
            //Text("Hello, world!")
            Text(myEmoji.rawValue).font(.system(size: 150)).padding()
            
            Button("Click Me") {
                myEmoji = Emoji.allCases.randomElement()!
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
