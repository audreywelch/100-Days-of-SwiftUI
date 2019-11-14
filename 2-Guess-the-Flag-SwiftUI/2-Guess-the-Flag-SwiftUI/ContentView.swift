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
    @State private var countries = ["Estonia", "France", "Germany", "Ireland", "Italy", "Nigeria", "Poland", "Russia", "Spain", "UK", "US"].shuffled()
    
    // Integer sstoring which country image is correct
    @State private var correctAnswer = Int.random(in: 0...2)
    
    // Property to store whether the alert is showing or not
    @State private var showingScore = false
    
    // Property to store the title that will be shown inside the alert
    @State private var scoreTitle = ""
    
    // Property to store the user's score
    @State private var score = 0
    
    var body: some View {
        
        ZStack {
            
            LinearGradient(gradient: Gradient(colors: [.blue, .black]), startPoint: .top, endPoint: .bottom)
                .edgesIgnoringSafeArea(.all)
            
            VStack(spacing: 30) {
                
                // Lay out game prompt in vertical stack
                VStack {
                    Text("Tap the flag of")
                        .foregroundColor(.white)
                    Text(countries[correctAnswer])
                        .font(.largeTitle) // largest built-in font size, automatically scales up or down
                        .fontWeight(.black) // makes text extra bold
                        .foregroundColor(.white)
                }
                
                ForEach(0 ..< 3) { number in
                    Button(action: {
                        // flag was tapped
                        self.flagTapped(number)
                    }) {
                        Image(self.countries[number])
                        
                            // Render the original image pixels rather than try to recolor them as a button
                            .renderingMode(.original)
                            
                            // Ensures corners of shortest edges are fully rounded, while longest edges remain straight
                            .clipShape(Capsule())
                            
                            // Adds another view over the flag, which is a capsule that has a black stroke around its edge
                            .overlay(Capsule().stroke(Color.black, lineWidth: 1))
                            
                            // Adds a shadow effect around each flag
                            .shadow(color: .black, radius: 2)
                    }
                }
                
                
                Text("Score: \(score)")
                    .foregroundColor(.white)
                
                
                Spacer()
            }
        }
            
        // Use the alert() modifier so the alert gets presented when showingScore is true
        // Show the title we have set in scoreTitle
        // Have a dismiss button that calls askQuestion() when tapped
        .alert(isPresented: $showingScore) {
            Alert(title: Text(scoreTitle), message: Text("Your score is \(score)"), dismissButton: .default(Text("Continue")) {
                self.askQuestion()
                })
        }
    }
    
    // Accepts the number of the button that was tapped,
    // compares against he correct answer,
    // sets those two new properties in order to show a meaningful alert
    func flagTapped(_ number: Int) {
        
        if number == correctAnswer {
            scoreTitle = "Correct"
            score += 1
        } else {
            scoreTitle = "Wrong"
        }
        
        showingScore = true
    }
    
    // Reset the game
    func askQuestion() {
        countries.shuffle()
        correctAnswer = Int.random(in: 0...2)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

