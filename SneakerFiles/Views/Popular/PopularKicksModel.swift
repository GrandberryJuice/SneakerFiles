//
//  PopularKicksModel.swift
//  SneakerFiles
//
//  Created by Kgrandbe on 7/28/21.
//

import Foundation

struct PopularKicksModel: Identifiable, Decodable {
    let id = UUID()
    var lowestResellPrice: lowestResellPrice
    
    struct lowestResellPrice: Decodable {
        let stockX: Int?
        let flightClub: Int?
        let goat: Int?
        let stadiumGoods: Int?
    }
    
    let _id: String
    let shoeName: String
    let brand: String
    let silhoutte: String
    let styleID: String
    let make: String
    let colorway: String
    let retailPrice: Int?
    let thumbnail: String
    let releaseDate: String
    let description: String
    let urlKey: String

    var resellLinks: resellLinks
    
    struct resellLinks: Decodable {
        let stockX: String?
        let flightClub: String?
        let goat: String?
        let stadiumGoods: String?
    }
}
