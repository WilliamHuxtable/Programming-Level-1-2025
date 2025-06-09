//
//  HomeView.swift
//  FitForge
//
//  Created by William Huxtable - 811 on 2025-05-05.
//

import SwiftUI

struct LeaderboardView: View {
    @State private var graphs = false
    @State private var leaderboard = false
    
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color("MainBackgroundColor")
                    .ignoresSafeArea()
                VStack {
                    NavigationLink(destination: GlobalView()) {
                            VStack {
                                Image(systemName: "globe")
                                    .resizable()
                                    .frame(width: 100, height: 100)
                                    .foregroundStyle(Color("MainTextColor"))
                                Text("Global")
                                    .font(.title)
                                    .fontWeight(.bold)
                                    .foregroundStyle(Color("MainTextColor"))
                            }
                            .padding([.top, .bottom], 40)
                        .frame(maxWidth: 350)
                        .background(
                            RoundedRectangle(cornerRadius: 25)
                                .fill(Color("SubBackgroundColor"))
                        )
                        .overlay(
                            RoundedRectangle(cornerRadius: 25)
                                .stroke(Color("BorderColor"), lineWidth: 4)
                        )
                    }
                    .padding()
                    NavigationLink(destination: FriendsView()) {
                            VStack {
                                Image(systemName: "person.2.fill")
                                    .resizable()
                                    .font(.system(size: 20))
                                    .foregroundStyle(Color("MainTextColor"))
                                Text("Friends")
                                    .font(.title)
                                    .fontWeight(.bold)
                                    .foregroundStyle(Color("MainTextColor"))
                            }
                            .padding([.top, .bottom], 40)
                        .frame(maxWidth: 350)
                        .background(
                            RoundedRectangle(cornerRadius: 25)
                                .fill(Color("SubBackgroundColor"))
                        )
                        .overlay(
                            RoundedRectangle(cornerRadius: 25)
                                .stroke(Color("BorderColor"), lineWidth: 4)
                        )
                    }
                    .padding()
                }
            }
        }
    }
}
    

#Preview {
    HomeView()
}
