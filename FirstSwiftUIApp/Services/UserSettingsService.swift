//
//  UserSettingsService.swift
//  FirstSwiftUIApp
//
//  Created by Денис Кузьминов on 07.01.2024.
//

import Foundation
import SwiftUI

final class UserSettingsService {
    
    @AppStorage("titleOn") var titleOnA = true
    
    func titleSettings() -> Bool {
        if titleOnA == true {
            return true
        }
        
        return false
    }
    
}
