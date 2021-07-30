//
//  RecentlyWornView.swift
//  SneakerFiles
//
//  Created by Kgrandbe on 7/30/21.
//

import SwiftUI

struct RecentlyWornView: View {
    let viewModel = BrandViewModel()
    
    var body: some View {
        ScrollView(.horizontal) {
            HStack {
                ForEach(viewModel.brands, id: \.id) { brand in
                        Image(uiImage: brand.image)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 100, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .clipShape(Circle())
                                        .shadow(radius: 10)
                            .overlay(Circle().stroke(Color.black, lineWidth: 2))
                            
                            
                }
            }
        }
    }
}

struct RecentlyWornView_Previews: PreviewProvider {
    static var previews: some View {
        RecentlyWornView()
    }
}
