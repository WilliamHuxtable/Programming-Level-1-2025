//
//  ContentView.swift
//  FitForge
//
//  Created by William Huxtable - 811 on 2025-05-05.
//

import SwiftUI

struct ContentView: View {
    
    init() {
        UITabBar.appearance().barTintColor = UIColor(named: "MainTextColor")
        UITabBar.appearance().backgroundColor = UIColor(named: "SubBackgroundColor")
    }
    
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Label("Home", systemImage: "house")
                }
            
            ProfileView()
                .tabItem {
                    Label("Profile", systemImage: "person.crop.circle.fill")
                }
            
            SettingsView()
                .tabItem {
                    Label("Settings", systemImage: "gear")
                }
        }
        .tint(Color("SubTextColor"))

        
    }
}

#Preview {
    ContentView()
}
