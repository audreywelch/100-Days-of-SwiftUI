//
//  ContentView.swift
//  2-Guess-the-Flag-SwiftUI
//
//  Created by Audrey Welch on 11/11/19.
//  Copyright © 2019 Audrey Welch. All rights reserved.
//

import SwiftUI

//"""
//struct ContentView: View {
//
//    @State private var showingAlert = false
//
//    var body: some View {
//
//        // Alerts
//        Button("Show Alert") {
//            self.showingAlert = true
//        }
//        .alert(isPresented: $showingAlert) {
//            Alert(title: Text("Hello SwiftUI!"), message: Text("This is some detail message"), dismissButton: .default(Text("OK")))
//
//            // Swift automatically set showingAlert back to false when the alert is dismissed
//        }
//
//        // Vertical Stack (VStack)
//        // Horizontal Stack (HStack)
//        // ZStack arranges things by depth - making views that overlap
//
//        // By default, VStack places little or no spacing between the views,
//        // so provide a parameter
//
//        // By default, Vstack aligns its views so they are centered,
//        // but you can control it by its alignment property
////        VStack(alignment: .leading, spacing: 20) {
////
////            Text("Hello World")
////            Text("This is inside a stack")
////
////            // Stacks automatically fit their content, and prefer to align themselves
////            // to the center of the available space
////            // To change, use one or more Spacer views to push the contents
////            // of the stack to one side
////            // These automatically take up all remaining space
////
////            Spacer()
////
////            // If you add more than one spacer they will divide the available space between them
////        }
//
//        // ZStack doesn't have spacing, only alignment - if you have one large thing
//        // and one small thing inside a ZStack, you can make both views align to the top
//        // ZStack(alignment: .top) {
////        ZStack {
////            // Color is a view in its own right, so it automatically takes up all the space available
////            //Color.red.edgesIgnoringSafeArea(.all)
////
////            // or we can give it a frame
////            //Color.red.frame(width: 200, height: 200)
////
////            // Goes in one direction, so provide a start and end point
////            //LinearGradient(gradient: Gradient(colors: [.white, .black]), startPoint: .top, endPoint: .bottom)
////
////            // Moves outward in a circle shape
////            //RadialGradient(gradient: Gradient(colors: [.blue, .black]), center: .center, startRadius: 20, endRadius: 200)
////
////            // Cycles through a range of colors in a single gradient, centered on the middle of the gradient
////            AngularGradient(gradient: Gradient(colors: [.red, .yellow, .green, .blue, .purple, .red]), center: .center)
////
////            Text("Your content")
////        }
//        // This will make the background color of the text view red, not the stack
//        //.background(Color.red)
//
//        // ZStack draws its content from top to bottom, back to front
//        // If you have an image then some text, ZStack will draw them in that order,
//        // placing the text on top of the image
//
//        // Buttons: pass in the title of the button, along with a closure that runs when the button is tapped
////        Button("Tap me!") {
////            print("Button was tapped.")
////        }
//
//        // Alternatively, if you want more, like adding images to buttons, use:
////        Button(action: {
////            print("Button was tapped.")
////        }) {
////            HStack(spacing: 10) {
////                // If you don't want images rendered blue in a button (default is to show that it's tappable), fix it with renderingMode
////                Image(systemName: "pencil").renderingMode(.original)
////                Text("Edit")
////            }
////
////        }
//
//
//
//        // Image("pencil") >> loads an image called "Pencil" that you have added to your project
//        // Image(decorative: "pencil") >> loads the same image, but doesn't read it out for users who have enabled screen reader
//        // Image(systemName: "pencil") >> loads the pencil icon that is built into iOS, using Apple's SF Symbols icon collection
//
//
//    }
//}
//
//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//    }
//}
//"""
