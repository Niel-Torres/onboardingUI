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
            OnboardingView(shouldShowOnboarding: $shouldShowOnboarding)
        })
    }
}

// Onboarding

struct OnboardingView: View {
    @Binding var shouldShowOnboarding: Bool
    
    var body: some View {
        TabView{
            PageView(title: "Push Notifications",
                     subtitle: "Enable notifications to stay up to date with friends",
                     imageName: "bell",
                     showDismissButton: false,
                     shouldShowOnboarding: $shouldShowOnboarding
            )
              
            
            PageView(title: "Bookmarks",
                     subtitle: "Save your favorite pieces of content.",
                     imageName: "bookmark",
                     showDismissButton: false,
                     shouldShowOnboarding: $shouldShowOnboarding
            )
            
            PageView(title: "Flights",
                     subtitle: "Book flights to the places you want to go.",
                     imageName: "airplane",
                     showDismissButton: false,
                     shouldShowOnboarding: $shouldShowOnboarding
            )
            
            PageView(title: "Home",
                     subtitle: "Go home wherever your might be",
                     imageName: "house",
                     showDismissButton: true,
                     shouldShowOnboarding: $shouldShowOnboarding
            )
            
        }
        .tabViewStyle(PageTabViewStyle())
    }
}

struct PageView: View {
    let title: String
    let subtitle: String
    let imageName: String
    let showDismissButton: Bool
    @Binding var shouldShowOnboarding: Bool
    
    var body: some View {
        VStack {
            Image(systemName: imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 150, height: 150)
                .padding()
            
            Text(title)
                .font(.system(size: 32))
                .padding()
            
            Text(subtitle)
                .font(.system(size: 24))
                .multilineTextAlignment(.center)
                .foregroundColor(Color(.secondaryLabel))
                .padding()
            
            if(showDismissButton){
                Button(action: {
                    shouldShowOnboarding.toggle()
                }, label: {
                    Text("Get Started")
                        .bold()
                        .foregroundColor(Color.white)
                        .frame(width: 200, height: 50)
                        .background(Color.green)
                        .cornerRadius(6)
                })
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
