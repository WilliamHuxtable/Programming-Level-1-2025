                                //
//  ContentView.swift
//  CustomUIButtonExample
//
//  Created by William Huxtable - 811 on 2025-04-09.
//

import SwiftUI

let gradientColors: [Color] = [
    .purple,
    .cyan
]

struct ContentView: View {
    var body: some View {
        VStack(spacing: 20) {
            CustomCard(
                title: "Cool Card",
                subtitle: "Very Cool",
                icon: "icon"
            )
            GradientButton(
                title: "Tap Me",
                gradientColors: [Color.blue, Color.cyan]
            ) {
                print("Button tapped!")
            }
            GradientButton(
                title: "Learn More",
                gradientColors: [Color.blue, Color.cyan]
            ) {
                print("Learn More button tapped!")
            }
        }
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Gradient(colors:gradientColors))
    }
}

#Preview {
    ContentView()
}
