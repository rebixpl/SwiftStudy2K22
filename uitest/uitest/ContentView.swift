//
//  ContentView.swift
//  uitest
//
//  Created by rebix on 08/10/2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            
            Spacer()
            
            Image("logo")
                .resizable()
                .aspectRatio(contentMode: .fit)
            
            Spacer()
            
            HStack ( alignment:.center,spacing: 0.0){
                Spacer()
                Text("Play Game")
                    .fontWeight(.bold)
                    .padding(.all)
                    .background(Color.green)
                    .foregroundColor(Color.white)
                    .cornerRadius(/*@START_MENU_TOKEN@*/13.0/*@END_MENU_TOKEN@*/)
                    .shadow(radius: 3)
                Spacer()
                Text("Settings")
                    .fontWeight(.bold)
                    .padding(.all)
                    .background(Color.red)
                    .foregroundColor(Color.white)
                    .cornerRadius(/*@START_MENU_TOKEN@*/13.0/*@END_MENU_TOKEN@*/)
                    .shadow(radius: 3)
                Spacer()
            }
            
            Spacer()
        }
        
        //        Text("Hello, World!")
        //            .fontWeight(.bold)
        //            .padding(.all)
        //            .background(Color.green)
        //            .foregroundColor(Color.white)
        //            .cornerRadius(/*@START_MENU_TOKEN@*/13.0/*@END_MENU_TOKEN@*/)
        //            .shadow(radius: 3)
        //            .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
        //            .background(Color.blue)
        //            .cornerRadius(13.0)
        //        .shadow(radius:3.0)
        //
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
