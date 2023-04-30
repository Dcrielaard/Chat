//
//  User.swift
//  Chat
//
//  Created by Dennis Crielaard on 30/04/2023.
//

import Foundation
import FirebaseFirestoreSwift

struct User: Codable {
    
    @DocumentID var id: String?
    
    var firstname: String?
    
    var lastname: String?
    
    var phone: String?
    
    var photo: String?
    
}
