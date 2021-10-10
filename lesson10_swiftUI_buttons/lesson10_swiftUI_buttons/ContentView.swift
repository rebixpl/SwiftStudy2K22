//
//  ContentView.swift
//  lesson10_swiftUI_buttons
//
//  Created by rebix on 10/10/2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            // Button instace with closure
            Button("Click Me", action: {
                print("Hello World")
            })
            
            // Button instace with trailing closure
            Button("Click Me") {
                print("Hello World")
            }
            
            // Button instance with label view
            Button(action: {
                print("Hello World")
            }, label: {
                HStack{
                    Image(systemName: "pencil")
                    Text("Edit")
                }
            })
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
