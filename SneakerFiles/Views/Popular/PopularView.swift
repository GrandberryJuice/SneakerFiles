//
//  PopularView.swift
//  SneakerFiles
//
//  Created by Kgrandbe on 7/28/21.
//

import SwiftUI

struct PopularView: View {
    var body: some View {
        NavigationView  {
            List {
                VStack(alignment: .leading) {
                    BrandListView()
                    Spacer(minLength: 20)
                    Text("Most Popular Kicks")
                        .font(.system(size: 25, weight: .semibold))
                    VStack(alignment: .center) {
                        PopularKicksListView()
                    }
                }
            }.navigationTitle("Popular")
        }
    }
}

struct PopularView_Previews: PreviewProvider {
    static var previews: some View {
        PopularView()
    }
}
