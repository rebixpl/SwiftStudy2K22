//
//  ContentView.swift
//  lesson011_challenge
//
//  Created by rebix on 10/10/2021.
//

import SwiftUI

struct ContentView: View {
    
    @State private var counter = 1
    
    var body: some View {
        HStack{
            Text("\(counter)")
                .font(.title)
                .padding()
            VStack {
                Button(action: {
                    counter += 2
                }, label: {
                    Text("Add 2")
                        .font(.headline).fontWeight(.bold).foregroundColor(Color.white).padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                    
                }).background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color.blue/*@END_MENU_TOKEN@*/).cornerRadius(16.0)
            
                Button(action: {
                    counter *= 2
                }, label: {
                    Text("Multiply 2x")
                        .font(.headline).fontWeight(.bold).foregroundColor(Color.white).padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                    
                }).background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color.blue/*@END_MENU_TOKEN@*/).cornerRadius(16.0)
            }
            .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
