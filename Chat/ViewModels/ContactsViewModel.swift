//
//  ContactsViewModel.swift
//  Chat
//
//  Created by Dennis Crielaard on 24/04/2023.
//

import Foundation
import Contacts

class ContactsViewModel: ObservableObject {
    
    @Published var users = [User]()
    
    private var localContacts = [CNContact]()
    
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
                    self.localContacts.append(contact)
                    
                })
                
                // See which local contacts are actual users of this app
                DatabaseService().getPlatformUsers(localContacts: self.localContacts) { platformUsers in
                    
                    
                    // Update the UI in the main thread
                    DispatchQueue.main.async {
                        // Set the fetched to the published users property
                        self.users = platformUsers
                    }
            
                }
                
            }
            catch {
                // Handle error
                print("unable to fetch contacts")
                
            }
        }
        
        
    }
    
    
}
