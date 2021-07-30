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
            List {
                VStack(alignment: .leading) {
                    Text("Recently worn")
                    RecentlyWornView()
                    Spacer(minLength: 20)
                }
            }.navigationTitle("SneakerFiles")
            .navigationBarItems(trailing:
                                    NavigationLink( destination: AddKicksView(searchText: "", searching: false)) {
                                        Image(systemName:"plus")
                                    }
            )
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
