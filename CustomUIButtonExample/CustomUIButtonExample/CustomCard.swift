//
//  CustomCard.swift
//  CustomUIButtonExample
//
//  Created by William Huxtable - 811 on 2025-04-11.
//

import SwiftUI

struct CustomCard: View {
    var title: String
    var subtitle: String
    var icon: String
    var color: [Color]
    var body: some View {
        VStack(spacing: 10) {
            Image(systemName: icon)
                .font(.largeTitle)
                .foregroundColor(.blue)
            Text(title)
                .font(.headline)
                .fontWeight(.bold)
            Text(subtitle)
                .font(.subheadline)
                .foregroundColor(.gray)
            Color(color)
                .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                
        }
        .padding()
        .background(Color.white)
        .cornerRadius(10)
        .shadow(color: .gray, radius: 5, x: 0, y: 3)
    }

}

#Preview {
    CustomCard(title: "test", subtitle: "test sub", icon: "icon", color: [.blue])
}
