//
//  PopularKicksListView.swift
//  SneakerFiles
//
//  Created by Kgrandbe on 7/29/21.
//

import SwiftUI

struct PopularKicksListView: View {
    @StateObject private var viewModel = PopularKicksViewModel()
    
    let layout = [
        GridItem(.fixed(200), spacing: 5, alignment: .leading),
        GridItem(.fixed(200), spacing: 5, alignment: .leading)
    ]
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: layout, spacing: 5) {
                ForEach(viewModel.popularKicks , id: \.id) { popularKicks in
                    VStack {
                        RemoteImage(placeholderImage: Image(systemName: "photo"), imageDownloader: DefaultImageDownloader(imagePath: popularKicks.thumbnail))
                        Text(popularKicks.shoeName)
                            .font(.system(size: 14, weight: .regular))
                        
                        if let stockXPrice = popularKicks.lowestResellPrice.stockX, let stockXResellPrice = "$ \(String(describing: stockXPrice))" {
                            Text(stockXResellPrice)
                                .font(.system(size: 16, weight: .semibold))
                        }
                    }.padding()
                }
            }
        }.onAppear { viewModel.getPopularKicks() }
    }
}

struct PopularKicksListView_Previews: PreviewProvider {
    static var previews: some View {
        PopularKicksListView()
    }
}
