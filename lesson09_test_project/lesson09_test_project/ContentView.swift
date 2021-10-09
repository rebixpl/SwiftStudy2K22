//
//  ContentView.swift
//  lesson09_test_project
//
//  Created by rebix on 09/10/2021.
//

import SwiftUI

// 'View' after the ':' in structure declaration is a protocol, this means that structure follows a protocol (protocol is a set of rules that a structure has to follow)
struct ContentView: View {
    
    // Properties
    
    // This is computed property
    var body: some View {
        
        // View Code (Main Screen) of the app
        return Text("Hello, world!")
            .padding()
    }
    
    // Methods
}

// This structure is used only to create a preview of app in Xcode
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
                .preferredColorScheme(.dark)
            .previewDevice("iPhone 13 Pro Max")
            ContentView()
                .preferredColorScheme(.light)
                .previewDevice("iPod touch (7th generation)")
        }
    }
}
