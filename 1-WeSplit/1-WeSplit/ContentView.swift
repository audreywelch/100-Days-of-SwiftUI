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
    
    var body: some View {
        
        NavigationView {
        
            Form {
                Section {
                    TextField("Amount", text: $checkAmount)
                        // Add modifier of a keyboard type that allows for numbers and decimals
                        .keyboardType(.decimalPad)
                
                    Picker("Number of people", selection: $numberOfPeople) {
                        ForEach(2 ..< 100) {
                            Text("\($0) people")
                        }
                    }
                }
            
                Section {
                    Text("$\(checkAmount)")
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
