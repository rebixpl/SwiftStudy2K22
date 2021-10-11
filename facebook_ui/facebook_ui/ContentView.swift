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
                            HStack(spacing: 12.0){
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
                        
                        FBPost(name: "Elon Musk", post: "Falcon about to launch Dragon to @Space_Station", imageName: "person1")
                        Spacer()
                        FBPost(name: "Mariusz Pudzianowski", post: "Poland’s cult icon who won the World’s Strongest Man competition five times.", imageName: "person3")
                        Spacer()
                        FBPost(name: "Steve Jobs", post: "Jobs stormed into a meeting and started shouting that they were “fucking dickless assholes.\" The company ended up getting the chips to Apple on time, and its executives made jackets that boasted on the back, “Team FDA.\"", imageName: "person2")
                        Spacer()
                    }
                }
            }
            
            Spacer()
        }
    }
}

struct FBPost: View {

    let name:String
    let post:String
    let imageName:String
    
    var body: some View {
        VStack{
            // Author account and time
            HStack {
                    Image(imageName)
                        .resizable()
                        .frame(width: 50, height: 50, alignment: .center)
                        .aspectRatio(contentMode: .fill)
                        .cornerRadius(26.0)
                    VStack {
                        HStack {
                            Text(name)
                                .foregroundColor(.blue)
                                .font(.system(size: 18, weight: .semibold, design: .default))
                            Spacer()
                        }
                        HStack {
                            Text("12 minutes ago")
                                .foregroundColor(.secondary)
                            Spacer()
                        }
                    
                 }
                Spacer()
            }
            Spacer()
            // Post
            HStack{
                    Text(post)
                        .font(.system(size: 24, weight: .regular, design: .default))
                    .multilineTextAlignment(.leading)
                Spacer()
            }
            // Like, comment, share buttons
            HStack{
                Button(action: {
                    
                }, label: {
                    Text("Like")
                })
                Spacer()
                Button(action: {
                    
                }, label: {
                    Text("Comment")
                })
                Spacer()
                Button(action: {
                    
                }, label: {
                    Text("Share")
                })
            }.padding(.all, 10.0)
        }.padding(.all, 16.0)
            .background(Color(.systemBackground))
            .cornerRadius(7.0)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.light)
    }
}
