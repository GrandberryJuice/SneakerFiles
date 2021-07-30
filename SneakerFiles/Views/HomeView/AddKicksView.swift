//
//  AddKicksView.swift
//  SneakerFiles
//
//  Created by Kgrandbe on 7/30/21.
//

import SwiftUI

struct AddKicksView: View {
    let testData = ["Kenny", "Desiree", "Mom", "Bambi", "Bently", "Jordan 1", "Jordan 2", "Fire Red 5"]
    @State var searchText = ""
    @State var searching:Bool
    
    var body: some View {
        NavigationView {
            VStack(alignment: .leading) {
                SearchBarView(searchText: $searchText, searching: $searching)
                
                List {
                    ForEach(testData.filter({ (theTest: String) -> Bool in
                        return  theTest.hasPrefix(searchText) || searchText == ""
                    }) , id: \.self) { testData in
                        Text(testData)
                    }
                }.listStyle(GroupedListStyle())
                .navigationTitle(searching ? "Searching" : "Add Sneaker")
                .toolbar(content: {
                    if searching {
                        Button("Cancel") {
                            searchText = ""
                            withAnimation {
                                searching = false
                            }
                        }
                    }
                })
            }
        }
    }
}

struct AddKicksView_Previews: PreviewProvider {
    static var previews: some View {
        AddKicksView(searchText: "", searching: false)
    }
}
