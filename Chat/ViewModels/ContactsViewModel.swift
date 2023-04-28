//
//  ContactsViewModel.swift
//  Chat
//
//  Created by Dennis Crielaard on 24/04/2023.
//

import Foundation
import Contacts

class ContactsViewModel: ObservableObject {
    
    func getLocalContacts() {
        
        DispatchQueue.init(label: "getcontacts").async {
            do {
                // Ask for permission
                let store = CNContactStore()
                
                // List of keys we want to get
                let keys = [CNContactPhoneNumbersKey,
                            CNContactGivenNameKey,
                            CNContactFamilyNameKey] as [CNKeyDescriptor]
                
                // Create a Fetch request
                let fetchRequest = CNContactFetchRequest(keysToFetch: keys)
                
                // Get the contacts on the users phone
                try store.enumerateContacts(with: fetchRequest, usingBlock: { contact, success in
                    
                    // Do something with the contact
                    var c = contact
                    
                })
                
            }
            catch {
                // Handle error
                print("unable to fetch contacts")
                
            }
        }
        
        
    }
    
    
}
