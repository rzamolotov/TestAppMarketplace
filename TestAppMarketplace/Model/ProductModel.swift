//
//  productModel.swift
//  TestAppMarketplace
//
//  Created by Роман Замолотов on 09.12.2022.
//

import Foundation

struct Product: Codable, Identifiable, Equatable {
    let id: Int
    let is_favorites: Bool
    let title: String
    let price_without_discount: Int
    let discount_price: Int
    let picture: URL?
    
    var formattedPrice: String { return "$ \(price_without_discount)" }
    var formattedDiscountPrice: String { return "$ \(discount_price)" }
}
