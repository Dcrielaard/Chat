//
//  CreateProfileTextFieldStyle.swift
//  Chat
//
//  Created by Dennis Crielaard on 24/04/2023.
//

import Foundation
import SwiftUI

struct CreateProfileTextFieldStyle: TextFieldStyle {
    
    func _body(configuration: TextField<Self._Label>) -> some View {
        ZStack {
            Rectangle()
                .foregroundColor(Color("input"))
                .cornerRadius(8)
                .frame(height: 46)
        
            // This references the textField
            configuration
                .font(Font.tabBar)
                .padding()
        }
    }
}
