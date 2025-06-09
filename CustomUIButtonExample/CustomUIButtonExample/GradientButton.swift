//
//  GradientButton.swift
//  CustomUIButtonExample
//
//  Created by William Huxtable - 811 on 2025-04-09.
//

import SwiftUI

struct GradientButton: View {
    var title: String
    var gradientColors: [Color]
    var action: () -> Void
    
    var body: some View {
        Button(action:action) {
            Text(title)
                .font(.headline)
                .fontWeight(.bold)
                .foregroundColor(.white)
                .padding()
                .frame(maxWidth: .infinity)
                .background(
                    LinearGradient (
                        gradient: Gradient(colors: gradientColors),
                        startPoint: .leading,
                        endPoint: .trailing
                    )
                )
            .cornerRadius(10)
            .shadow(color: .gray, radius: 5, x: 0, y: 3)
        }
        .padding(.horizontal)
    }
}

#Preview {
    GradientButton(title: "Test", gradientColors: [.orange, .red]) {
        print("Test succeeded.")
    }
}
