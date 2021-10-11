//
//  ContentView.swift
//  facebook_ui
//
//  Created by rebix on 11/10/2021.
//

import SwiftUI

struct ContentView: View {
    
    @State var text:String = ""
    
    let stories = ["story1", "story2", "story3", "story1", "story2", "story3"]
    
    let facebookBlue = UIColor(red: 23/255.0,
                               green: 120/255.0,
                               blue: 242/255.0,
                               alpha: 1)
    
    var body: some View {
        VStack{
            HStack{
                Text("facebook").font(.system(size: 48, weight: .bold, design: .default)).foregroundColor(Color(facebookBlue))
                
                Spacer()
                
                Image(systemName: "person.circle")
                    .resizable()
                    .frame(width: 35, height: 35, alignment: .center)
                    .foregroundColor(.secondary)
            }.padding(EdgeInsets.init(top: 8.0, leading: 16.0, bottom: 8.0, trailing: 16.0))
            
            TextField("Search...", text: $text)
                .padding(7)
                .background(Color(.systemGray5))
                .cornerRadius(7)
                .padding(EdgeInsets.init(top: 0.0, leading: 16.0, bottom: 10.0, trailing: 16.0))
            
            ZStack{
                Color(.secondarySystemBackground)
                
                ScrollView(.vertical){
                    VStack{
                        ScrollView(.horizontal, showsIndicators: false){
                            HStack(spacing: 6.0){
                                ForEach(stories, id: \.self) { name in
                                    Image(name)
                                        .resizable()
                                        .aspectRatio(contentMode: .fill)
                                        .frame(width: 140, height: 200, alignment: .center)
                                        .background(Color.red)
                                        .clipped()
                                }
                            }.padding(.all)
                        }
                        
                    }
                }
            }
            
            Spacer()
        }
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.light)
    }
}
