//
//  ContentView.swift
//  WeatherReportApp
//
//  Created by William Huxtable - 811 on 2025-02-26.
//

import SwiftUI

struct ContentView: View {
    @State private var temperature: String = "0"
    @State private var weatherMessage: String = ""
    @State var fontColor: Color = Color.black
    
    var body: some View {
        VStack {
            // TextField for temperature
            TextField("Enter temperature in Celsius", text: $temperature)
                .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: 2)
                .padding()
                .keyboardType(.numberPad)
                .textFieldStyle(.roundedBorder)
            
        
                
            // Button to check the weather
            Button(action: {
                if Double(temperature)! <= 0 && -20 < Double(temperature)! {
                    weatherMessage = "It is very cold!"
                } else if Double(temperature)! <= -20 {
                    weatherMessage = "It is extremely cold!"
                } else if Double(temperature)! <= 15 && 0 < Double(temperature)! {
                    weatherMessage = "It is cold!"
                } else if Double(temperature)! >= 30 && 40 > Double(temperature)! {
                    weatherMessage = "It is hot!"
                } else if Double(temperature)! >= 40 && 50 > Double(temperature)! {
                    weatherMessage = "It is very hot!"
                } else if Double(temperature)! >= 50 {
                    weatherMessage = "It is dangerously hot!"
                } else if Double(temperature)! > 15 && 30 > Double(temperature)! {
                    weatherMessage = "It is pleasant!"
                }
                
                // Set value of fontColor depending on temperature
                if temperature == "" {
                    fontColor = Color.black
                } else if Double(temperature)! <= 15 {
                    fontColor = Color.blue
                } else if Double(temperature)! > 15 && 30 > Double(temperature)! {
                    fontColor = Color.orange
                } else {
                    fontColor = Color.red
                }
            }) {
                Text("Check Weather")
                    .font(.title)
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .padding()
                    .background(Color.black)
                    .foregroundColor(.white)
                    .cornerRadius(25)
            }
            
            Text(weatherMessage)
                        .font(.title2)
                        .padding()
                        .foregroundStyle(fontColor)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
