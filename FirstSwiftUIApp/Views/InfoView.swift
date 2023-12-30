//
//  InfoView.swift
//  FirstSwiftUIApp
//
//  Created by Денис Кузьминов on 26.12.2023.
//

import SwiftUI

struct InfoView: View {
    var body: some View {
       
        NavigationView {
            
            List(Post.createPosts()) { post in
                NavigationLink {
                    
                    InfoDetailsView(post: post)
                } label: {
                    InfoRow(post: post)
                        
                        
                }
            }
            
            .padding(.leading, 10)
            .navigationTitle("Posts")
            .listStyle(.plain)
                
        }
    }
}

#Preview {
    InfoView()
}
