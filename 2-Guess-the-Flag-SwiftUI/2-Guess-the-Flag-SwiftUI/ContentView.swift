//
//  ContentView.swift
//  2-Guess-the-Flag-SwiftUI
//
//  Created by Audrey Welch on 11/14/19.
//  Copyright © 2019 Audrey Welch. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    // Game data
    var countries = ["Estonia", "France", "Germany", "Ireland", "Italy", "Nigeria", "Poland", "Russia", "Spain", "UK", "US"]
    
    // Integer sstoring which country image is correct
    var correctAnswer = Int.random(in: 0...2)
    
    var body: some View {
        
        ZStack {
            
            Color.blue.edgesIgnoringSafeArea(.all)
            
            VStack(spacing: 30) {
                
                // Lay out game prompt in vertical stack
                VStack {
                    Text("Tap the flag of")
                        .foregroundColor(.white)
                    Text(countries[correctAnswer])
                        .foregroundColor(.white)
                }
                
                ForEach(0 ..< 3) { number in
                    Button(action: {
                        // flag was tapped
                    }) {
                        Image(self.countries[number])
                            
                            // Render the original image pixels rather than try to recolor them as a button
                            .renderingMode(.original)
                    }
                }
                
                Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

