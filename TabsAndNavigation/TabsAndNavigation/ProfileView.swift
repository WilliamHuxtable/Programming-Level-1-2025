//
//  ProfileView.swift
//  TabsAndNavigation
//
//  Created by William Huxtable - 811 on 2025-04-07.
//

import SwiftUI

struct ProfileView: View {
    @AppStorage("username") private var username: String = ""
    @AppStorage("birthDate") private var birthDate: String = ""
    @AppStorage("favoriteColor") private var favoriteColor: String = "Blue"
    
    var body: some View {
        VStack {
            Text("Profile")
                .font(.system(size: 34))
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                .padding()
                .padding(.top, 26)
                .frame(maxWidth: .infinity, alignment: .leading)
            Spacer()
                .frame(height: 120)
            Image("cat")
                .resizable()
                .scaledToFill()
                .frame(width:200,height:200)
                .clipShape(Circle())
                .overlay{
                    Circle().stroke(.black, lineWidth: 3)
                }
                .shadow(radius:10)
                .padding()
            Text(username.isEmpty ? "" : "\(username)'s Profile")
                .font(.title)
                .foregroundStyle(Color.black)
                .padding()
            Text(birthDate.isEmpty ? "" : "Birthdate: \(birthDate)")
            Text(favoriteColor.isEmpty ? "" : "Favorite Color: \(favoriteColor)")
            Spacer()
        }
        .background(Color(UIColor.systemGray6))
    }
}



#Preview {
    ProfileView()
}
