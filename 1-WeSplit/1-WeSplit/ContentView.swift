//
//  ContentView.swift
//  1-WeSplit
//
//  Created by Audrey Welch on 10/16/19.
//  Copyright © 2019 Audrey Welch. All rights reserved.
//

import SwiftUI

// Struct that conforms to the View protocol - must be adopted by anything you want to draw on the screen
struct ContentView: View {
    
    // Define a new computed property called `body` which has the type `some View`
    // Meaning it will return something that conforms to the View protocol
    // `some` keyword adds a restriction: it must always be the _same_ kind of view being returned
    var body: some View {
        
        // Create a text view using "Hello World" string
        Text("Hello World")
    }
}

// Struct that conforms to the PreviewProvider protocol
// Xcode uses this to show a preview of UI design alongside the code
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
