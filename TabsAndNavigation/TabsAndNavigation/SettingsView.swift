//
//  SettingsView.swift
//  TabsAndNavigation
//
//  Created by William Huxtable - 811 on 2025-04-07.
//

import SwiftUI

struct SettingsView: View {
    @AppStorage("isDarkMode") private var isDarkMode: Bool = false
    @AppStorage("isNotifications") private var isNotifications: Bool = false
    @AppStorage("username") private var username: String = ""
    @AppStorage("favoriteColor") private var favoriteColor: String = "Blue"
    @AppStorage("birthDate") private var birthDate: String = ""
    
    
    private let colors = ["Red", "Green", "Blue", "Yellow", "Purple"]
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Appearance")) {
                    Toggle("Dark Mode", isOn: $isDarkMode)
                        .toggleStyle(SwitchToggleStyle(tint: .blue))
                    Toggle("Notifications", isOn: $isNotifications)
                        .toggleStyle(SwitchToggleStyle(tint: .blue))
                }
                Section(header:Text("User Info")) {
                    TextField("Enter your name", text: $username)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    TextField("Enter your birthdate", text: $birthDate)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                }
                Section(header: Text("Preferences")) {
                    Picker("Favorite Color", selection: $favoriteColor) {
                        ForEach(colors, id: \.self) { color in
                            Text(color).tag(color)
                        }
                    }
                }
                Section(header: Text("Saved Preferences")) {
                    Text("Dark Mode: \(isDarkMode ? "Enabled" : "Disabled")")
                    Text("Notifications: \(isNotifications ? "Enabled" : "Disabled")")
                    Text("Username: \(username.isEmpty ? "Not Set" : username)")
                    Text("Birthdate: \(birthDate.isEmpty ? "Not Set" : birthDate)")
                    Text("Favorite Color: \(favoriteColor)")
                }
            }
            .navigationTitle("Settings")
        }
    }
}



#Preview {
    SettingsView()
}
