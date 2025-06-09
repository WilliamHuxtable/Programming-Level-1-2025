//
//  PhotosView.swift
//  TabsAndNavigation
//
//  Created by William Huxtable - 811 on 2025-04-07.
//

import SwiftUI

struct PhotosView: View {
    var body: some View {
        NavigationStack {
            List {
                    NavigationLink(destination: DetailView(title: "Chicken Jockey")) {
                        Image("jockey")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 100, height: 100)
                        Text("Chicken Jockey")
                            .padding(.leading)
                    }
                    
                    NavigationLink(destination: DetailView3(title: "Cat")) {
                        Image("cat")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 100, height: 100)
                        Text("Cat")
                            .padding(.leading)
                    }
                    
            }
            .navigationTitle("Photos")
        }
    }
}

struct DetailView: View {
    let title: String
 
    var body: some View {
        Image("jockey")
            .resizable()
            .scaledToFit()
            .padding()
 }
}

struct DetailView3: View {
    let title: String
 
    var body: some View {
        Image("cat")
            .resizable()
            .scaledToFit()
            .padding()
 }
}
        
#Preview {
    PhotosView()
}
