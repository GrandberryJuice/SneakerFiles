//
//  BrandViewModel.swift
//  SneakerFiles
//
//  Created by Kgrandbe on 7/29/21.
//

import UIKit

class BrandViewModel {
    let brands: [BrandModel] = [
        BrandModel(image: UIImage(named: "jordanbrand") ?? UIImage()),
        BrandModel(image: UIImage(named: "nikebrand") ?? UIImage()),
        BrandModel(image: UIImage(named: "adidasbrand") ?? UIImage()),
        BrandModel(image: UIImage(named: "reebokbrand") ?? UIImage()),
        BrandModel(image: UIImage(named: "jordanbrand") ?? UIImage()),
        BrandModel(image: UIImage(named: "nikebrand") ?? UIImage()),
        BrandModel(image: UIImage(named: "adidasbrand") ?? UIImage()),
        BrandModel(image: UIImage(named: "reebokbrand") ?? UIImage())
    ]
    
    init() { }
}
