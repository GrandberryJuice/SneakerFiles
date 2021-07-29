//
//  PopularView.swift
//  SneakerFiles
//
//  Created by Kgrandbe on 7/28/21.
//

import SwiftUI

struct PopularView: View {
    @StateObject private var viewModel = PopularKicksViewModel()
    
    var body: some View {
        NavigationView  {
            ZStack {
                Color.blue
            }.navigationTitle("Popular")
        }.onAppear { viewModel.getPopularKicks() }
    }
}

struct PopularView_Previews: PreviewProvider {
    static var previews: some View {
        PopularView()
    }
}
