//
//  SearchView.swift
//  SneakerFiles
//
//  Created by Kgrandbe on 7/28/21.
//

import SwiftUI

struct SearchView: View {
    @State var searchText: String
    @State var searching: Bool
    
    var body: some View {
        NavigationView {
            VStack(alignment: .leading) {
                SearchBarView(searchText: $searchText, searching: $searching)
                List {
                    
                }
            }.navigationTitle("Search")
        }
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView(searchText: "", searching: false)
    }
}
