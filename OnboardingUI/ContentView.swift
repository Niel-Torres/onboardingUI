//
//  ContentView.swift
//  OnboardingUI
//
//  Created by Odon Niel Torres Mariluz on 17/11/23.
//

import SwiftUI

struct ContentView: View {
    //@State var shouldShowOnboarding: Bool = true
    //Peristent to hide onboarding
    @AppStorage("_shouldShowOnboarding") var shouldShowOnboarding: Bool = true
    
    var body: some View {
        NavigationView {
            VStack{
                Text("You are in the main app now!")
                    .padding()
            }
            .navigationTitle("Home")
        }
        .fullScreenCover(isPresented: $shouldShowOnboarding, content: {
            OnboardingView(shouldShowOnboarding: $shouldShowOnboarding)
        })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
