//
//  ProfileView.swift
//  FitForge
//
//  Created by William Huxtable - 811 on 2025-05-05.
//

import SwiftUI

struct ProfileView: View {

    @AppStorage("username") private var username: String = ""
    @AppStorage("about") private var about: String = ""
    @AppStorage("publicStats") private var publicStats: Bool = false
    
    
    var body: some View {
        ZStack {
            Color("MainBackgroundColor")
                .ignoresSafeArea()
            VStack(alignment: .leading) {
                HStack {
                    Spacer()
                    Image(systemName: "person.crop.circle.fill")
                        .resizable()
                        .foregroundStyle(Color("MainTextColor"))
                        .scaledToFit()
                        .frame(width:100,height:130)
                        .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                        .overlay{
                            Circle().stroke(Color("BorderColor"), lineWidth: 4)
                        }
                        .padding()
                    VStack {
                        HStack {
                            TextField("", text: $username)
                                .font(.title2)
                                .foregroundStyle(Color("MainTextColor"))
                                .background(Color("SubBackgroundColor"))
                                .padding([.top, .bottom, .leading, .trailing], 4)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 10)
                                        .stroke(Color("BorderColor"), lineWidth: 2)
                                )
                                .multilineTextAlignment(.center)
                            Image(systemName: "pencil")
                                .foregroundStyle(Color("MainTextColor"))
                                .padding(.trailing)
                        }
                        HStack {
                            Text("10")
                                .foregroundStyle(Color("MainTextColor"))
                                .fontWeight(.bold)
                            Text("Friends")
                                .foregroundStyle(Color("MainTextColor"))
                        }
                        .padding(.trailing)
                    }
                    Spacer()
                    
                }
                .frame(height: 130)
                .padding([.top, .bottom, .leading, .trailing])
                .background(Color("SubBackgroundColor"))
                .overlay(
                    Rectangle()
                        .frame(height: 3)
                        .foregroundColor(Color("BorderColor")),
                    alignment: .bottom
                )
                .padding(.bottom)
                Text("ABOUT")
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .font(.system(size: 17))
                    .foregroundStyle(Color("MainTextColor"))
                    .padding([.leading, .trailing])
                    .padding([.leading, .trailing])
                    .padding(.bottom, 4)
                TextField("Tell People About Yourself", text: $about, axis: .vertical)
                    .lineLimit(2...8)
                    .foregroundStyle(Color("MainTextColor"))
                    .padding(4)
                    .background(
                        RoundedRectangle(cornerRadius: 10)
                            .fill(Color("SubBackgroundColor"))
                    )
                    .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color("BorderColor"), lineWidth: 2)
                    )
                    .padding([.leading, .trailing])
                    .padding([.leading, .trailing])
                
                HStack {
                    Text("STATS")
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .font(.system(size: 17))
                        .foregroundStyle(Color("MainTextColor"))
                        .padding([.leading, .trailing])
                    Toggle(isOn: $publicStats) {
                        HStack {
                            Spacer()
                            Text("Public")
                        }
                    }
                    .padding(.bottom, 4)
                    .padding(.trailing)
                    .fontWeight(.semibold)
                    .foregroundStyle(Color("MainTextColor"))
                    .toggleStyle(SwitchToggleStyle(tint: Color("SubTextColor")))
                }
                .padding([.leading, .trailing, .top])
                
                HStack {
                    Spacer()
                    HStack {
                        VStack(alignment: .center) {
                            Text("Lift\nDeadlift\nSquat\nBench Press\nMilitary Press\nBarbell Row\nPullup\nDip\nStrict Curl")
                                .foregroundStyle(Color("MainTextColor"))
                                .padding(8)
                                .padding([.leading, .trailing], 8)
                                .overlay{
                                    Rectangle().stroke(Color("BorderColor"), lineWidth: 2)
                                }
                                .background(
                                    Rectangle()
                                        .fill(Color("SubBackgroundColor"))
                                )
                        }
                        VStack(alignment: .center) {
                            Text("Weight\n495lbs\n445lbs\n330lbs\n180lbs\n280lbs\n100lbs\n135lbs\n100lbs")
                                .foregroundStyle(Color("MainTextColor"))
                                .padding(8)
                        }
                        VStack(alignment: .center) {
                            Text("BW Ratio\n3x\n2.7x\n2x\n1.1\n1.7x\n0.6x\n0.8x\n0.6x")
                                .foregroundStyle(Color("MainTextColor"))
                                .padding(8)
                                .padding([.leading, .trailing], 8)
                                .overlay{
                                    Rectangle().stroke(Color("BorderColor"), lineWidth: 2)
                                }
                                .background(
                                    Rectangle()
                                        .fill(Color("SubBackgroundColor"))
                                )
                        }
                        
                    }
                    .overlay{
                        Rectangle().stroke(Color("BorderColor"), lineWidth: 2)
                    }
                    .background(
                        Rectangle()
                            .fill(Color("SubBackgroundColor"))
                    )
                    .padding([.leading, .trailing])
                    .padding([.leading, .trailing], 7)
                Spacer()
                }
                Spacer()
            }
        }
    }
}

#Preview {
    ProfileView()
}
