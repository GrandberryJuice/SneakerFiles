//
//  HomeView.swift
//  SneakerFiles
//
//  Created by Kgrandbe on 7/28/21.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationView  {
            ZStack {
                Color.red
            }.navigationTitle("Home")
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
