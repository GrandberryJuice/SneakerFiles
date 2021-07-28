//
//  ContentView.swift
//  SneakerFiles
//
//  Created by Kgrandbe on 7/28/21.
//

import SwiftUI


struct MainView: View {
    let networkManager = NetworkManager()
    
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                }
        
            SearchView()
                .tabItem {
                    Label("Search", systemImage: "magnifyingglass")
                }
            
            PopularView()
                .tabItem {
                    Image(systemName: "crown")
                    Text("Popular")
                }

            SettingsView()
                .tabItem {
                    Image(systemName: "gear")
                    Text("Settings")
                }
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
