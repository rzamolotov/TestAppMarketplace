//
//  DetailModel.swift
//  TestAppMarketplace
//
//  Created by Роман Замолотов on 11.12.2022.
//

import Foundation

struct Detail: Decodable, Identifiable, Encodable {
    let cpu: String
    let camera: String
    let capacity: [String]
    let color: [String]
    let id: String
    let images: [URL?]
    let isFavorites: Bool
    let price: Int
    let rating: Float
    let sd: String
    let ssd: String
    let title: String
    
    var formattedPrice: String { return "$ \(price)" }
}
