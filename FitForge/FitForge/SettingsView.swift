//
//  SettingsView.swift
//  FitForge
//
//  Created by William Huxtable - 811 on 2025-05-05.
//

import SwiftUI

struct SettingsView: View {
    @AppStorage("isLightMode") private var isLightMode: Bool = false
    @AppStorage("isNotifications") private var isNotifications: Bool = false
    @AppStorage("isPushNotifications") private var isPushNotifications: Bool = false
    @AppStorage("isEmailNotifications") private var isEmailNotifications: Bool = false
    @AppStorage("username") private var username: String = ""
    @AppStorage("name") private var name: String = ""
    @AppStorage("birthDate") private var birthDate: String = ""
    @AppStorage("password") private var password: String = ""
    
    
    var body: some View {
        NavigationView {
            ZStack {
                Color("MainBackgroundColor")
                    .ignoresSafeArea()
                VStack {
                    Text("Settings")
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .font(.system(size: 40))
                        .foregroundStyle(Color("MainTextColor"))
                    Form {
                        Section() {
                                HStack {
                                    Text ("Name:")
                                        .fontWeight(.semibold)
                                        .foregroundStyle(Color("MainTextColor"))
                                    TextField("", text: $name)
                                        .foregroundStyle(Color("MainTextColor"))
                                        .background(Color("SubBackgroundColor"))
                                        .padding([.top, .bottom, .leading, .trailing], 4)
                                        .overlay(
                                            RoundedRectangle(cornerRadius: 10)
                                                .stroke(Color("BorderColor"), lineWidth: 2)
                                        )
                                }
                                HStack {
                                    Text ("Birthdate:")
                                        .fontWeight(.semibold)
                                        .foregroundStyle(Color("MainTextColor"))
                                    TextField("", text: $birthDate)
                                        .foregroundStyle(Color("MainTextColor"))
                                        .background(Color("SubBackgroundColor"))
                                        .padding([.top, .bottom, .leading, .trailing], 4)
                                        .overlay(
                                            RoundedRectangle(cornerRadius: 10)
                                                .stroke(Color("BorderColor"), lineWidth: 2)
                                        )
                                    
                                }
                                HStack {
                                    Text ("Username:")
                                        .fontWeight(.semibold)
                                        .foregroundStyle(Color("MainTextColor"))
                                    TextField("", text: $username)
                                        .foregroundStyle(Color("MainTextColor"))
                                        .background(Color("SubBackgroundColor"))
                                        .padding([.top, .bottom, .leading, .trailing], 4)
                                        .overlay(
                                            RoundedRectangle(cornerRadius: 10)
                                                .stroke(Color("BorderColor"), lineWidth: 2)
                                        )
                                }
                                HStack {
                                    Text ("Password:")
                                        .fontWeight(.semibold)
                                        .foregroundStyle(Color("MainTextColor"))
                                    TextField("", text: $password)
                                        .foregroundStyle(Color("MainTextColor"))
                                        .background(Color("SubBackgroundColor"))
                                        .padding([.top, .bottom, .leading, .trailing], 4)
                                        .overlay(
                                            RoundedRectangle(cornerRadius: 10)
                                                .stroke(Color("BorderColor"), lineWidth: 2)
                                        )
                                }
                            }
                            header: {
                                HStack {
                                    Text("Account")
                                        .font(.system(size: 17, weight: .bold))
                                        .foregroundStyle(Color("MainTextColor"))
                                    Spacer()
                                }
                                .padding(.leading, -20)
                                .padding(.bottom, 4)
                            }
                            .listRowBackground(Color("SubBackgroundColor"))
                            
                            Section() {
                                Toggle("Light Mode", isOn: $isLightMode)
                                    .fontWeight(.semibold)
                                    .foregroundStyle(Color("MainTextColor"))
                                    .toggleStyle(SwitchToggleStyle(tint: Color("SubTextColor")))
                                Toggle("Notifications", isOn: $isNotifications)
                                    .fontWeight(.semibold)
                                    .foregroundStyle(Color("MainTextColor"))
                                    .toggleStyle(SwitchToggleStyle(tint: Color("SubTextColor")))
                                if isNotifications {
                                    Toggle("Push", isOn: $isPushNotifications)
                                        .fontWeight(.semibold)
                                        .foregroundStyle(Color("MainTextColor"))
                                        .toggleStyle(SwitchToggleStyle(tint: Color("SubTextColor")))
                                        .padding(.leading)
                                    if isNotifications {
                                        Toggle("Email", isOn: $isEmailNotifications)
                                            .fontWeight(.semibold)
                                            .foregroundStyle(Color("MainTextColor"))
                                            .toggleStyle(SwitchToggleStyle(tint: Color("SubTextColor")))
                                            .padding(.leading)
                                    }
                                }
                                
                            }
                            header: {
                                HStack {
                                    Text("Preferences")
                                        .font(.system(size: 17, weight: .bold))
                                    .foregroundStyle(Color("MainTextColor"))
                                    Spacer()
                                }
                                .padding(.leading, -20)
                                .padding(.bottom, 4)
                            }
                            .listRowBackground(Color("SubBackgroundColor"))
                            
                            Section() {
                                HStack {
                                    Spacer()
                                    Text("Log Out")
                                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                                        .foregroundStyle(Color("MainTextColor"))
                                        .font(.system(size: 20))
                                        .padding([.top, .bottom], 6)
                                    Spacer()
                                }
                            }
                            .listRowBackground(Color("SubBackgroundColor"))
                        }
                    }
                    .scrollContentBackground(.hidden)
                }
            }
    }
}

#Preview {
    SettingsView()
}
