//
//  Shop.swift
//  TestAppMarketplace
//
//  Created by Роман Замолотов on 11.12.2022.
//

import Foundation

class Shop: ObservableObject {
    @Published var showingProduct: Bool = false
    @Published var selectedProduct: Product? = nil
    @Published var showCart = CartView()
    @Published var products: [Product] = []
    @Published var total: Int = 0
    
    func addToCart(product: Product) {
        products.append(product)
        total += product.price_without_discount
    }
    
    func removeFromCart(product: Product) {
        products = products.filter { $0.id != product.id }
        total -= product.price_without_discount
    }
}
