//
//  FBPostView.swift
//  facebook_ui
//
//  Created by rebix on 11/10/2021.
//

import Foundation
import SwiftUI

struct FBPost: View {
    
    @State var isLiked:Bool = false
    
    let model:FBPostModel
    
    var body: some View {
        VStack{
            // Author account and time
            HStack {
                Image(model.imageName)
                    .resizable()
                    .frame(width: 50, height: 50, alignment: .center)
                    .aspectRatio(contentMode: .fill)
                    .cornerRadius(26.0)
                VStack {
                    HStack {
                        Text(model.name)
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
                Text(model.post)
                    .font(.system(size: 24, weight: .regular, design: .default))
                    .multilineTextAlignment(.leading)
                Spacer()
            }
            // Like, comment, share buttons
            HStack{
                Button(action: {
                    isLiked.toggle()
                }, label: {
                    isLiked ?
                    Image(systemName: "hand.thumbsup.fill")
                    : Image(systemName: "hand.thumbsup")
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
