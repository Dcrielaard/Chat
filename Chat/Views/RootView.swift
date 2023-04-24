//
//  RootView.swift
//  Chat
//
//  Created by Dennis Crielaard on 20/04/2023.
//

import SwiftUI

struct RootView: View {
    
    @State var selectedTab: Tabs = .contacts
    
    @State var isOnboarding = !AuthViewModel.isUserLoggedIn()
    
    var body: some View {
        
        
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
                .font(Font.chatHeading)
            
            Spacer()
            
            CustomTabBar(selectedTab: $selectedTab)
                
        }
        .fullScreenCover(isPresented: $isOnboarding, content: {
            // The onboarding sequence
            OnboardingContainerView(isOnboarding: $isOnboarding)
        })
        .padding()
    }
}

struct RootView_Previews: PreviewProvider {
    static var previews: some View {
        RootView()
    }
}
