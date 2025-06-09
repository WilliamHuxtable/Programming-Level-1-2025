//
//  ContentView.swift
//  ProfileCard
//
//  Created by William Huxtable - 811 on 2025-01-31.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image("cat")
                .resizable()
                .scaledToFit()
                .frame(width:200,height:200)
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                .overlay{
                    Circle().stroke(.teal, lineWidth: 6)
                }
                .shadow(radius:10)
                .padding()
            
            Text("The Cat of All Time")
                .font(.title)
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                .foregroundStyle(Color.white)
                .padding()
                .background(Color.teal, in: RoundedRectangle(cornerRadius: 25))
                .shadow(radius:4)
            
            
            Text("Certified Eater & Professional Sleeper")
                .fontWeight(.medium)
                .foregroundStyle(Color.teal)
                .font(.subheadline)
            
            
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
