//
//  ContentView.swift
//  HoneyCloneSwiftUI
//
//  Created by KellyO on 1/31/21.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Image(systemName: "house")
                }
            // PLACEHOLDERS
            ItemDetailView()
                .tabItem {
                    Image(systemName: "list.bullet.rectangle")
                }
            
            ItemDetailView()
                .tabItem {
                    Image(systemName: "bookmark")
                }
            
            ItemDetailView()
                .tabItem {
                    Image(systemName: "person")
                }
        }
        .onAppear() {
            UITabBar.appearance().barTintColor = .white
        }
        .accentColor(.black)
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 12 mini")
    }
}
