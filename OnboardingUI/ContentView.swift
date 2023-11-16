//
//  ContentView.swift
//  OnboardingUI
//
//  Created by Odon Niel Torres Mariluz on 17/11/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack{
                Text("You are in the main app now!")
                    .padding()
            }
            .navigationTitle("Home")
       
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
