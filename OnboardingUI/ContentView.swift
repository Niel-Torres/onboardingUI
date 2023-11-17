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
            PageView()
                .background(Color.red)
            
            PageView()
                .background(Color.blue)
            
            PageView()
                .background(Color.green)
            
            PageView()
                .background(Color.orange)
        }
        .tabViewStyle(PageTabViewStyle())
    }
}

struct PageView: View {
    var body: some View {
        VStack {
            Image(systemName: "bell")
                .resizable()
                .padding()
            
            Text("Push Notifications")
                .font(.system(size: 42))
                .padding()
            
            Text("Enable notifications to stay up to date with our app.")
                .font(.system(size: 30))
                .foregroundColor(Color(.secondaryLabel))
                .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
