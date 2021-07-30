//
//  BrandListView.swift
//  SneakerFiles
//
//  Created by Kgrandbe on 7/29/21.
//

import SwiftUI

struct BrandListView: View {
    let viewModel = BrandViewModel()
    
    var body: some View {
        ScrollView(.horizontal) {
            HStack {
                ForEach(viewModel.brands, id: \.id) { brand in
                        Image(uiImage: brand.image)
                            .resizable()
                            .frame(width: 100, height: 75, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .cornerRadius(10.0)
                            .aspectRatio(contentMode: .fit)
                }
            }
        }
    }
}

struct BrandListView_Previews: PreviewProvider {
    static var previews: some View {
        BrandListView()
    }
}
