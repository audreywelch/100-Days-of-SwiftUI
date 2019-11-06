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
    
    // Property Wrapper: special attribute to place before our properties that allows us
    // to change a value even though our view is a struct
    // @State private var tapCount = 0
    @State private var name = ""
    
    // Define a new computed property called `body` which has the type `some View`
    // Meaning it will return something that conforms to the View protocol
    // `some` keyword adds a restriction: it must always be the _same_ kind of view being returned
    var body: some View {
        
        Form {
            
            // Two-way binding: binds the text field so that it shows the value of our property
            // but also binds it so that any changes to the text field also update the property
            // Mark two-way bindings with a dollar sign, telling Swift to read the value of
            // the property, but also write it back as any changes happen
            TextField("Enter your name", text: $name)
            Text("Your name is \(name)")
        }
        
//        Button("Tap Count: \(tapCount)") {
//            self.tapCount += 1
//        }
        
//        NavigationView {
//            // Create a basic form
//            Form {
//                // When grouping, 10 children per parent
//                //Group {
//                Section {
//                    // Create a text view using "Hello World" string
//                    Text("Hello World")
//
//                }
//            }
//            // Attach a modifier
//            // Similar to regular methods, but always returns a new instance
//            // of whatever you use them on
//            // Default: Large Title
//            //.navigationBarTitle(Text("SwiftUI"))
//            //.navigationBarTitle("SwiftUI", displayMode: .inline)
//            .navigationBarTitle("SwiftUI")
//        }
    }
}

// Struct that conforms to the PreviewProvider protocol
// Xcode uses this to show a preview of UI design alongside the code
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
