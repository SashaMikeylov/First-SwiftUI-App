//
//  PostModel.swift
//  FirstSwiftUIApp
//
//  Created by Денис Кузьминов on 26.12.2023.
//

import Foundation
import SwiftUI

struct Post: Identifiable {
    
    var id = UUID()
    var title: String
    var description: String
    var image: Image
    var avatar: Image
    
    static func createPosts() -> [Post] {[
        
        Post(title: "Young_boy", description: .gelik, image: Image("Post-1"), avatar: Image("Ava-1")),
        Post(title: "Kriss Hemwolk", description: .flat, image: Image("Post-2"), avatar: Image("Ava-2")),
        Post(title: "Kate Shumillova", description: .clothes, image: Image("Post-3"), avatar: Image("Ava-3")),
        Post(title: "Nick Wolter", description: .mersDescrip, image: Image("Post-4"), avatar: Image("Ava-4")),
        
    ]}
}


