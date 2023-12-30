//
//  SettingsView.swift
//  FirstSwiftUIApp
//
//  Created by Денис Кузьминов on 29.12.2023.
//

import SwiftUI

struct SettingsView: View {
    
    //MARK: - States
    
    @State private var toggleCheck: Bool = true
    @State private var sliderCheck: Double = 0
    @State private var pickerSelectedIndex = 0
    
    //MARK: - Body
    var states = ["On", "Off"]
    var body: some View {
        
        NavigationView {
            
            Form {
                
                Section {
                    Text("Text")
                }
                
                Section {
                    Toggle(isOn: $toggleCheck) {
                        Text("Toggle")
                    }
                }
                
                Section {
                    Slider(value: $sliderCheck, in: -100...100, step: 0.1)
                }
                
                Section {
                    Picker(selection: $pickerSelectedIndex, label: Text("Picker")) {
                        ForEach(0..<states.count) { index in
                            Text(self.states[index])
                        }
                    }
                }
            
               
            }
        
                .navigationTitle("Settings")
        }
    }
}

#Preview {
    SettingsView()
}
