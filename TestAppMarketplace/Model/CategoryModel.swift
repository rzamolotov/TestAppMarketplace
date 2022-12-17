//
//  CategoryModel.swift
//  TestAppMarketplace
//
//  Created by Роман Замолотов on 10.12.2022.
//

import Foundation

struct Category: Codable, Identifiable, Equatable {
    var id: String
    let categoryImageName: String
    let categoryName: String
}
