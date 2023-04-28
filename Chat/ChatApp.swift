//
//  ChatApp.swift
//  Chat
//
//  Created by Dennis Crielaard on 20/04/2023.
//

import SwiftUI

@main
struct ChatApp: App {
    
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    
    var body: some Scene {
        WindowGroup {
            RootView()
                .environmentObject(ContactsViewModel())
        }
    }
}
