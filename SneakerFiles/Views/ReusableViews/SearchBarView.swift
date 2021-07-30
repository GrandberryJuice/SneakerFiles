//
//  SearchView.swift
//  SneakerFiles
//
//  Created by Kgrandbe on 7/30/21.
//

import SwiftUI

struct SearchBarView: View {
    
    @Binding var searchText: String
    @Binding var searching: Bool
    
    var body: some View {
        ZStack {
            Rectangle()
                .foregroundColor(Color("SearchBar"))
            HStack {
                Image(systemName: "magnifyingglass")
                TextField("Search ...", text: $searchText) {
                    startedSeatching in
                    if startedSeatching {
                        withAnimation {
                            searching = true
                        }
                    }
                } onCommit:  {
                    withAnimation {
                        searching = false
                    }
                }
            }.foregroundColor(.gray)
            .padding()
        }.frame(height: 40)
        .cornerRadius(14)
        .padding()
    }
}

struct SearchBarView_Previews: PreviewProvider {
    static var previews: some View {
        SearchBarView(searchText: .constant(""), searching: .constant(false))
    }
}
