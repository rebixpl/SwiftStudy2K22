//
//  ContentView.swift
//  war-challenge
//
//  Created by rebix on 08/10/2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            // Background
            Image("background").resizable()
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            
            // Game UI
            VStack(alignment: .center) {
                Spacer()
                Image("logo")
                Spacer()
                
                // Cards
                HStack(spacing: 60.0) {
                    // Card 1
                    Image("card3")
                        .cornerRadius(6.0)
                    
                    // Card 2
                    Image("card4")
                        .cornerRadius(6.0)
                }
                Spacer()
                
                // Deal Button
                Button(action: {}, label: {
                    Image("dealbutton")
                })
                
                Spacer()
                
                // Player and CPU scores
                HStack(spacing:120.0){
                    VStack(spacing:10.0){
                        Text("Player")
                            .fontWeight(.bold).padding(.bottom,10.0)
                        Text("0").font(.title).fontWeight(.semibold)
                    }
                    VStack(spacing:10.0){
                        Text("CPU")
                            .fontWeight(.bold).padding(.bottom,10.0)
                        Text("0").font(.title).fontWeight(.semibold)
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
