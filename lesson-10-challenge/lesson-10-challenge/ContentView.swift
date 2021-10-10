//
//  ContentView.swift
//  lesson-10-challenge
//
//  Created by rebix on 10/10/2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            Button(action: {
                print("first button pressed")
            }, label: {
                Text("Log In")
            })
                .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            
            Button(action: {
                print("second button pressed")
            }, label: {
                HStack{
                    Text("Register")
                    Image(systemName: "pencil.circle.fill")
            }
            })
                .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)

        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
