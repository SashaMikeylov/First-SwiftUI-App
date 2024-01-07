//
//  InfoView.swift
//  FirstSwiftUIApp
//
//  Created by Денис Кузьминов on 26.12.2023.
//

import SwiftUI

struct InfoView: View {
    var titleOn: Bool
    
    var body: some View {
       
        
        
        NavigationView {
            
            List(Post.createPosts()) { post in
                NavigationLink {
                    InfoDetailsView(post: post)
                } label: {
                    InfoRow(post: post)
                        
                        
                }
            }
           
            .navigationTitle(titleOn ? "Posts" : "")
            .padding(.leading, 10)
            .listStyle(.plain)
                
        }
    }
}

//#Preview {
//    InfoView()
//}
