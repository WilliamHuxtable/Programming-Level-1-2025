//
//  HomeView.swift
//  TabsAndNavigation
//
//  Created by William Huxtable - 811 on 2025-04-07.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationStack {
            List {
                NavigationLink(destination: DetailView2(title: "Menu 1")) {
                    Text("Menu 1")
                }
 
                NavigationLink(destination: DetailView2(title: "Menu 2")) {
                    Text("Menu 2")
                }
            }
            .navigationTitle("Home")
        }
    }
}

struct DetailView2: View {
    let title: String
 
    var body: some View {
        Text("Details for \(title)")
            .font(.largeTitle)
            .padding()
 }
}

#Preview {
    HomeView()
}
