//
//  ContentView.swift
//  FirstSwiftUIApp
//
//  Created by Денис Кузьминов on 25.12.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("xwxwx")
        TabView {
            Text("")
                .tabItem {
                    Image(systemName: "1.circle")
                    Text("First")
                }
            Text("Second item")
                .tabItem {
                    Image(systemName: "2.circle")
                    Text("bxwjxw")
                }
        }
        
    }
}

#Preview {
    ContentView()
}
