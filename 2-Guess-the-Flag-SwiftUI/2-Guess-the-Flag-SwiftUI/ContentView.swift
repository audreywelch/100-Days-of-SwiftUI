//
//  ContentView.swift
//  2-Guess-the-Flag-SwiftUI
//
//  Created by Audrey Welch on 11/11/19.
//  Copyright © 2019 Audrey Welch. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        // Vertical Stack (VStack)
        // Horizontal Stack (HStack)
        // ZStack arranges things by depth - making views that overlap
        
        // By default, VStack places little or no spacing between the views,
        // so provide a parameter
        
        // By default, Vstack aligns its views so they are centered,
        // but you can control it by its alignment property
//        VStack(alignment: .leading, spacing: 20) {
//
//            Text("Hello World")
//            Text("This is inside a stack")
//
//            // Stacks automatically fit their content, and prefer to align themselves
//            // to the center of the available space
//            // To change, use one or more Spacer views to push the contents
//            // of the stack to one side
//            // These automatically take up all remaining space
//
//            Spacer()
//
//            // If you add more than one spacer they will divide the available space between them
//        }
        
        // ZStack doesn't have spacing, only alignment - if you have one large thing
        // and one small thing inside a ZStack, you can make both views align to the top
        // ZStack(alignment: .top) {
        ZStack {
            // Color is a view in its own right, so it automatically takes up all the space available
            Color.red.edgesIgnoringSafeArea(.all)
            
            // or we can give it a frame
            //Color.red.frame(width: 200, height: 200)
            
            Text("Your content")
        }
        // This will make the background color of the text view red, not the stack
        //.background(Color.red)
        
        // ZStack draws its content from top to bottom, back to front
        // If you have an image then some text, ZStack will draw them in that order,
        // placing the text on top of the image
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
