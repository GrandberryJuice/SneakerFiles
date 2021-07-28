//
//  ContentView.swift
//  SneakerFiles
//
//  Created by Kgrandbe on 7/28/21.
//

import SwiftUI


struct HomeView: View {
    let networkManager = NetworkManager()
    
    var body: some View {
        Text("Hello, world!")
            .padding()
    }


}

func fetchPoplularKicks() {
    
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
