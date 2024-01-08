//
//  SettingsView.swift
//  FirstSwiftUIApp
//
//  Created by Денис Кузьминов on 29.12.2023.
//

import SwiftUI

struct SettingsView: View {
    
    //MARK: - States
    
    @Binding var titleOn: Bool 
    @State private var sliderCheck: Double = 0
    @State private var pickerSelectedIndex = 0
    
    
    
    @Environment(\.colorScheme) var colorScheme
    
    //MARK: - Body
    
    var states = ["On", "Off"]
    
    
    var body: some View {
        
        
        NavigationView {
            
            Form {
                
                //MARK: - First section
                
                Section {
                    if colorScheme == .dark {
                        Text("Dark Theme enabled")
                    } else {
                        Text("Light Theme enabled")
                    }
                }
                
                //MARK: - Second section
            
                Section {
                    Toggle(isOn: $titleOn) {
                        Text("Toggle")
                    }
                    
                    
                    if titleOn == true {
                        Text("Navigation title enabled")
                    } else {
                        Text("Navigation title not enabled")
                    }
    
                }
                
                //MARK: - Third section
                
                Section {
                    Slider(value: $sliderCheck, in: -100...100, step: 0.1)
                }
                
                //MARK: - Fourth section
                
                Section {
                    Text("Picker")
                    Picker("", selection: $pickerSelectedIndex) {
                        ForEach(0..<states.count, id: \.self) { index in
                            Text(self.states[index])
                        }
                    }
                    .pickerStyle(.segmented)
                }
            }
                .navigationTitle("Settings")
        }
    }
    
}

//#Preview {
//    SettingsView()
//}
