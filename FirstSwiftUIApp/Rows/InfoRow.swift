//
//  InfoRow.swift
//  FirstSwiftUIApp
//
//  Created by Денис Кузьминов on 26.12.2023.
//

import SwiftUI

struct InfoRow: View {
    var post: Post

    var body: some View {
    
        VStack {
            HStack {
                post.avatar
                    .resizable()
                    .frame(width: 60, height: 60)
                    .cornerRadius(40)
                    .padding(.leading, 10)
                    
                Text(post.title)
                    .padding()
                    .font(.title2)
        
                Spacer()
            }
            
            .padding(.top, 40)
            
            post.image
                .resizable()
                .frame(width: 380, height: 500)
                .padding(.bottom, 10)
            
            Text(post.description)
                .padding(.leading, 10)
                .padding(.trailing, 10)
                .font(.footnote)
        }
    }
}

#Preview {
    InfoRow(post: Post.createPosts()[3])
}
