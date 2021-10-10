//
//  ContentView.swift
//  war-challenge
//
//  Created by rebix on 08/10/2021.
//

import SwiftUI

struct ContentView: View {
    
    // Property wrapper @State:
    // @State means that you can change the data of the variable and all inside viewport any references to @State variable will get notified when value is changed, rebuilding itself ( like setState() in flutter)
    @State private var playerCard = "card5" // @State will allow us to update the value in the future
    @State private var cpuCard = "card9"
    @State private var playerScore = 0
    @State private var cpuScore = 0
    
    var body: some View {
        ZStack {
            // Background
            Image("background").resizable().ignoresSafeArea()
            
            // Game UI
            VStack(alignment: .center) {
                Spacer()
                Image("logo")
                Spacer()
                
                // Cards
                HStack(spacing: 60.0) {
                    // Player Card
                    Image(playerCard)
                        .cornerRadius(6.0)
                    
                    // CPU Card
                    Image(cpuCard)
                        .cornerRadius(6.0)
                }
                Spacer()
                
                // Deal Button
                Button(action: {
                    // Generate a random number between 2 and 14
                    let playerRand = Int.random(in: 2...14)
                    let cpuRand = Int.random(in: 2...14)
                    
                    // Update the cards
                    playerCard = "card" + String(playerRand)
                    cpuCard = "card" + String(cpuRand)
                    
                    // Update the score
                    if playerRand > cpuRand{
                        playerScore += 1
                    } else if cpuRand > playerRand {
                        cpuScore += 1
                    } else{
                        
                    }
                }, label: {
                    Image("dealbutton")
                })
                
                Spacer()
                
                // Player and CPU scores
                HStack(spacing:120.0){
                    VStack(spacing:10.0){
                        Text("Player")
                            .fontWeight(.bold).padding(.bottom,10.0)
                        Text(String(playerScore)).font(.title).fontWeight(.semibold)
                    }
                    VStack(spacing:10.0){
                        Text("CPU")
                            .fontWeight(.bold).padding(.bottom,10.0)
                        Text(String(cpuScore)).font(.title).fontWeight(.semibold)
                    }
                }.foregroundColor(.white)
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
