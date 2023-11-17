//
//  ContentView.swift
//  OnboardingUI
//
//  Created by Odon Niel Torres Mariluz on 17/11/23.
//

import SwiftUI

struct ContentView: View {
    @State var shouldShowOnboarding: Bool = true
    
    var body: some View {
        NavigationView {
            VStack{
                Text("You are in the main app now!")
                    .padding()
            }
            .navigationTitle("Home")
        }
        .fullScreenCover(isPresented: $shouldShowOnboarding, content: {
            OnboardingView()
        })
    }
}

// Onboarding

struct OnboardingView: View {
    var body: some View {
        TabView{
            Text("first")
                .background(Color.red)
            
            Text("Second")
                .background(Color.blue)
            
            Text("third")
                .background(Color.green)
            
            Text("fourth")
                .background(Color.orange)
        }
        .tabViewStyle(PageTabViewStyle())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
