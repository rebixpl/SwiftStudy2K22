//
//  ContentView.swift
//  lesson04_challenge
//
//  Created by rebix on 08/10/2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .center){
            // CN Tower Toronto
            ZStack {
                Image("toronto").resizable().aspectRatio(contentMode: .fit)
                
                VStack {
                    Text("CN Tower")
                        .font(.largeTitle).fontWeight(.semibold)
                    Text("Toronto").fontWeight(.medium)
                }.padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                    .foregroundColor(.white).background(Color.black.opacity(0.8)).cornerRadius(16.0)
                
            }.cornerRadius(16.0)
            
            Spacer()
            
            // Big Ben London
            ZStack {
                Image("london").resizable().aspectRatio(contentMode: .fit)
                
                VStack {
                    Text("Big Ben")
                        .font(.largeTitle).fontWeight(.semibold)
                    Text("London").fontWeight(.medium)
                }.padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                    .foregroundColor(.white).background(Color.black.opacity(0.8)).cornerRadius(16.0)
                
            }.cornerRadius(16.0)
            
        }
        .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
