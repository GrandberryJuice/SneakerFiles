//
//  BrandModel.swift
//  SneakerFiles
//
//  Created by Kgrandbe on 7/29/21.
//

import UIKit

struct BrandModel: Identifiable {
    let id = UUID()
    let image: UIImage
    
    init(image: UIImage) {
        self.image = image
    }
}
