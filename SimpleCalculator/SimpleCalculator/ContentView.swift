//
//  ContentView.swift
//  SimpleCalculator
//
//  Created by William Huxtable - 811 on 2025-02-18.
//

import SwiftUI

struct ContentView: View {
    // stores the first number
    @State private var numberOne: Double = 0
    
    // stores the second number
    @State private var numberTwo: Double = 0
    
    // store the result of the operation
    @State private var result1: Double = 0
    @State private var result2: Double = 0
    @State private var result3: Double = 0
    @State private var result4: Double = 0
    
    // define a function that adds numberOne and numberTwo together
    // store the answer in the var result
    func calculateSum() {
        result1 = numberOne + numberTwo
    }
    func calculateDifference() {
        result2 = numberOne - numberTwo
    }
    func calculateProduct() {
        result3 = numberOne * numberTwo
    }
    func calculateQuotient() {
        result4 = numberOne / numberTwo
    }
    
    
    
    var body: some View {
        VStack (alignment: .center) {
            Text("The Holy Calculator")
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                .font(.system(size: 30))
                .padding()
                .background(.black, in: RoundedRectangle(cornerRadius: 50))
                .foregroundColor(.yellow)
                .shadow(color: .orange, radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                .padding(.bottom, 50)
        }
        
        VStack (alignment: .leading) {
            
            
            
            // Textfield
            // Stores and views var numberOne
            HStack {
                Text("First Number:")
                    .font(.headline )
                    .padding()
                    .foregroundStyle(.black)
                TextField ("Enter first number", value: $numberOne, format: .number)
                    .textFieldStyle(.roundedBorder)
                    .border(Color.black, width: 2)
                    .padding()
            }
            // Textfield
            // Stores and views var numberTwo
            HStack {
                Text("Second Number:")
                    .font(.headline )
                    .padding()
                    .foregroundStyle(.black)
                TextField ("Enter second number", value: $numberTwo, format: .number)
                    .textFieldStyle(.roundedBorder)
                    .border(Color.black, width: 2)
                    .padding()
            }
            .padding (.bottom, 30)
            // Button
            // Calculates the sum
            Button(action: calculateSum) {
                Text("Sum")
                    .padding()
                    .bold()
                    .background(.black, in: RoundedRectangle(cornerRadius: 30))
                    .foregroundStyle(.red)
            
                
                
                // Text
                // Shows the result
                Text("=      \(result1)")
                    .padding()
                    .font(.subheadline)
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .foregroundStyle(.black)
            }
            .padding(.leading)
            .padding(.bottom)
            .padding(.top)
            
            // Button
            // Calculates the sum
            Button(action: calculateDifference) {
                Text("Difference")
                    .padding()
                    .bold()
                    .background(.black, in: RoundedRectangle(cornerRadius: 30))
                    .foregroundStyle(.blue)
            
                
                
                // Text
                // Shows the result
                Text("=      \(result2)")
                    .padding()
                    .font(.subheadline)
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .foregroundStyle(.black)
            }
            .padding(.leading)
            .padding(.bottom)
            .padding(.top)
            
            // Button
            // Calculates the sum
            Button(action: calculateProduct) {
                Text("Product")
                    .padding()
                    .bold()
                    .background(.black, in: RoundedRectangle(cornerRadius: 30))
                    .foregroundStyle(.orange)
            
                
                
            // Text
            // Shows the result
                Text("=      \(result3)")
                    .padding()
                    .font(.subheadline)
                    .fontWeight(.bold)
                    .foregroundStyle(.black)
                
            }
            .padding(.leading)
            .padding(.bottom)
            .padding(.top)
            
            // Button
            // Calculates the sum
            Button(action: calculateQuotient) {
                Text("Quotient")
                    .padding()
                    .bold()
                    .background(.black, in: RoundedRectangle(cornerRadius: 30))
                    .foregroundStyle(.purple)
            
                
                
            // Text
            // Shows the result
                Text("=      \(result4)")
                    .padding()
                    .font(.subheadline)
                    .fontWeight(.bold)
                    .foregroundStyle(.black)
                
            }
            .padding(.leading)
            .padding(.bottom)
            .padding(.top)
        }
    }
}
        
#Preview {
    ContentView()

}
