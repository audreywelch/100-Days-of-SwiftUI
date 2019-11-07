//
//  ContentView.swift
//  1-WeSplit
//
//  Created by Audrey Welch on 10/16/19.
//  Copyright © 2019 Audrey Welch. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State private var checkAmount = "" // SwiftUI MUST use strings to store text field values
    @State private var numberOfPeople = 2
    @State private var tipPercentage = 2 // Use this to select values from predetermined array of tip sizes
    
    let tipPercentages = [10, 15, 20, 25, 0]
    
    var grandTotal: Double {
        
        // Get value of tip percentage from the array
        let tipSelection = Double(tipPercentages[tipPercentage])
        
        // Attempt to convert checkAmount to a Double, but if it fails, use 0 instead
        let orderAmount = Double(checkAmount) ?? 0
    
        // Calculate tip
        let tipValue = orderAmount / 100 * tipSelection
        
        return orderAmount + tipValue
    
    }
    
    var totalPerPerson: Double {
        // Add 2 to numberOfPeople b/c it has range 2-100, but it counts from 0
        let peopleCount = Double(numberOfPeople + 2)
        
        // Get value of tip percentage from the array
        let tipSelection = Double(tipPercentages[tipPercentage])
        
        // Attempt to convert checkAmount to a Double, but if it fails, use 0 instead
        let orderAmount = Double(checkAmount) ?? 0
        
        // Calculate tip
        let tipValue = orderAmount / 100 * tipSelection
        
        // Calculate grand total of check
        let grandTotal = orderAmount + tipValue
        
        // Calculate amount per person
        let amountPerPerson = grandTotal / peopleCount
        
        print(amountPerPerson)
        return amountPerPerson
    }
    
    var body: some View {
        
        NavigationView {
        
            Form {
                Section {
                    TextField("Amount", text: $checkAmount)
                        // Add modifier of a keyboard type that allows for numbers and decimals
                        //.keyboardType(.decimalPad)
                
                    Picker("Number of people", selection: $numberOfPeople) {
                        ForEach(2 ..< 100) {
                            Text("\($0) people")
                        }
                    }
                }
                
                Section(header: Text("How much tip do you want to leave?")) {
                    Picker("Tip percentage", selection: $tipPercentage) {
                        ForEach(0 ..< tipPercentages.count) {
                            Text("\(self.tipPercentages[$0])%")
                        }
                    }.pickerStyle(SegmentedPickerStyle())
                }
                
                Section(header: Text("Total check amount")) {
                    Text("$\(grandTotal, specifier: "%.2f")")
                }
            
                Section(header: Text("Amount per person")) {
                    Text("$\(totalPerPerson, specifier: "%.2f")")
                }
            }
            .navigationBarTitle("WeSplit")
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
