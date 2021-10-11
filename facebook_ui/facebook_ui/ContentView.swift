//
//  ContentView.swift
//  facebook_ui
//
//  Created by rebix on 11/10/2021.
//

import SwiftUI

struct FBPostModel: Hashable {
    let name:String
    let post:String
    let imageName:String
}

struct ContentView: View {
    
    @State var text:String = ""
    
    let stories = ["story1", "story2", "story3", "story1", "story2", "story3"]
    
    let posts: [FBPostModel] = [
        FBPostModel(name: "Elon Musk", post: "Falcon about to launch Dragon to @Space_Station", imageName: "person1"),
        FBPostModel(name: "Mariusz Pudzianowski", post: "Poland’s cult icon who won the World’s Strongest Man competition five times.", imageName: "person3"),
        FBPostModel(name: "Steve Jobs", post: "Jobs stormed into a meeting and started shouting that they were “fucking dickless assholes.\" The company ended up getting the chips to Apple on time, and its executives made jackets that boasted on the back, “Team FDA.\"", imageName: "person2")
    ]
    
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
                        StoriesView(stories: stories)
                        
                        ForEach(posts, id: \.self) {model in
                            FBPost(model: model)
                            Spacer()
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
