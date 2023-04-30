//
//  TextHelper.swift
//  Chat
//
//  Created by Dennis Crielaard on 30/04/2023.
//

import Foundation

class TextHelper {
    
    static func sanitizePhoneNumber(_ phone: String) -> String {
        
        return phone
            .replacingOccurrences(of: "(", with: "")
            .replacingOccurrences(of: ")", with: "")
            .replacingOccurrences(of: "-", with: "")
            .replacingOccurrences(of: " ", with: "")
    }
}
