//
//  ContentView.swift
//  FirstSwiftUIApp
//
//  Created by Денис Кузьминов on 25.12.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        TabView {
            
            //MARK: - InfoView bar
            
            InfoView()
                .tabItem {
                    Image(systemName: "rectangle.fill.on.rectangle.fill")
                    Text("Posts")
                }
            
            //MARK: - Hello world bar
            
            HelloWorldView()
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("Profile")
                }
            
            //MARK: - Settings bar
            
            SettingsView()
                .tabItem {
                    Image(systemName: "gearshape")
                    Text("Settings")
                }
        }
    }
}

#Preview {
    ContentView()
}
