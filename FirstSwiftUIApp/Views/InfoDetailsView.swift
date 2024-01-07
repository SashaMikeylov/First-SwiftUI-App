//
//  InfoDetailsView.swift
//  FirstSwiftUIApp
//
//  Created by Денис Кузьминов on 28.12.2023.
//

import SwiftUI


struct InfoDetailsView: View {
    
    var post: Post
    var body: some View {
        
        ScrollView(content: {
            
            VStack {
                
                post.image
                    .resizable()
                    .frame(width: 390, height: 400)
                    .cornerRadius(10)
                Spacer()
                
                HStack {
                    ZStack {
                        
                        Text(post.title)
                            .padding(.bottom, 300)
                            .padding(.leading, 20)
                            .font(.title3)
                            .shadow(color: .blue, radius: 10)
                        post.avatar
                            .resizable()
                            .frame(width: 80, height: 80)
                            .cornerRadius(40)
                    
                    }
                    
                    Spacer()
                    Text(post.description)
                        .shadow(color: .blue, radius: 10)
                        .padding(.trailing, 20)
                }
                
            
            }
        })
    }
}

#Preview {
    InfoDetailsView(post: Post.createPosts()[2])
}
