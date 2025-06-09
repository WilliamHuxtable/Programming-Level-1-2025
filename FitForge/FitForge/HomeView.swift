//
//  HomeView.swift
//  FitForge
//
//  Created by William Huxtable - 811 on 2025-05-05.
//

import SwiftUI

struct HomeView: View {
    @State private var graphs = false
    @State private var leaderboard = false
    @State private var users = false
    
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color("MainBackgroundColor")
                    .ignoresSafeArea()
                VStack {
                    NavigationLink(destination: GraphView()) {
                        VStack {
                            HStack {
                                Text("Graphs")
                                    .font(.title)
                                    .fontWeight(.bold)
                                    .foregroundStyle(Color("MainTextColor"))
                                Image("GraphIcon")
                                    .resizable()
                                    .frame(width: 40, height: 40)
                                
                            }
                            .padding(.top, 40)
                            .padding(.bottom, 10)
                            Text("Track your life progress via graphs")
                                .foregroundStyle(Color("SubTextColor"))
                                .padding(.bottom, 40)
                        }
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
                    NavigationLink(destination: LeaderboardView()) {
                        VStack {
                            HStack {
                                Text("Leaderboards")
                                    .font(.title)
                                    .fontWeight(.bold)
                                    .foregroundStyle(Color("MainTextColor"))
                                Image("LeaderboardIcon")
                                    .resizable()
                                    .frame(width: 40, height: 40)
                            }
                            .padding(.top, 40)
                            .padding(.bottom, 10)
                            Text("Compete against other lifters for prizes")
                                .foregroundStyle(Color("SubTextColor"))
                                .padding(.bottom, 40)
                        }
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
                    NavigationLink(destination: UsersView()) {
                        VStack {
                            HStack {
                                Text("Users")
                                    .font(.title)
                                    .fontWeight(.bold)
                                    .foregroundStyle(Color("MainTextColor"))
                                Image(systemName: "person.2.fill")
                                    .foregroundStyle(Color("MainTextColor"))
                                    .font(.system(size: 30))
                            }
                            .padding(.top, 40)
                            .padding(.bottom, 10)
                            Text("See other user's stats or find friends")
                                .foregroundStyle(Color("SubTextColor"))
                                .padding(.bottom, 40)
                        }
                        .frame(maxWidth: 350)
                        .background(
                            RoundedRectangle(cornerRadius: 25)
                                .fill(Color("SubBackgroundColor"))
                        )
                        .overlay(
                            RoundedRectangle(cornerRadius: 25)
                                .stroke(Color("BorderColor"), lineWidth: 4)
                        )
                        .padding()
                    }
                }
            }
        }
    }
}
    

#Preview {
    HomeView()
}
