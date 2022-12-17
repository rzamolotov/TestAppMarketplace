//
//  HotSaleModel.swift
//  TestAppMarketplace
//
//  Created by Роман Замолотов on 11.12.2022.
//

import Foundation

struct HotSale: Codable, Identifiable, Equatable {
    let id: Int
    let is_new: Bool?
    let title: String
    let subtitle: String
    let picture: URL?
    let is_buy: Bool
}
