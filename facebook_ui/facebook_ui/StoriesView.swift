//
//  StoriesView.swift
//  facebook_ui
//
//  Created by rebix on 11/10/2021.
//

import Foundation
import SwiftUI

struct StoriesView: View {
    let stories: [String]
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false){
            HStack(spacing: 12.0){
                ForEach(stories, id: \.self) { name in
                    Image(name)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 140, height: 200, alignment: .center)
                        .background(Color.red)
                        .clipped()
                        .cornerRadius(7.0)
                }
            }.padding(.all)
        }
    }
}
