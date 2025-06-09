//
//  ContentView.swift
//  ChatPrototype
//
//  Created by William Huxtable - 811 on 2025-01-29.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Knock, knock! 🤡")
                .padding()
                .background(Color.gray, in: RoundedRectangle(cornerRadius: 100))
            Text("Who's there?")
                .padding()
                .background(Color.blue, in: RoundedRectangle(cornerRadius: 100))
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
