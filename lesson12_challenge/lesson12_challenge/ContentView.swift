//
//  ContentView.swift
//  lesson12_challenge
//
//  Created by rebix on 10/10/2021.
//

import SwiftUI

struct ContentView: View {
    
    @State private var counter = 0
    @State private var isZero = true
    
    var body: some View {
        VStack {
            Text(String(counter))
                .padding()
            Button(action: {
                if counter <= 0{
                    isZero = true
                } else if counter >= 50{
                    isZero = false
                }
                
                if isZero{
                    increase()
                } else {
                    decrease()
                }
            }, label: {
                Text("Press Me").fontWeight(.bold).padding(.all).foregroundColor(.white)
            }).background(Color.blue).cornerRadius(8.0)
        }
    }
    
    func increase(){
        let randomCounter =  counter + Int.random(in: 1...10)
       
        if randomCounter > 50 {
            counter = 50
        } else {
            counter = randomCounter
        }
    }
    
    func decrease(){
        let randomCounter = counter - Int.random(in: 1...10)
        
        if randomCounter < 0 {
            counter = 0
        } else {
            counter = randomCounter
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
