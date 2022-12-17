//
//  Constant.swift
//  TestAppMarketplace
//
//  Created by Роман Замолотов on 10.12.2022.
//

import SwiftUI

// DATA

let categories: [Category] = Bundle.main.decode("category.json")
let products: [Product] = Bundle.main.decode("product.json")
let hotSales: [HotSale] = Bundle.main.decode("hotsale.json")
var details: [Detail] = Bundle.main.decode("detail.json")
let sampleProduct: Product = products[0]

// COLOR

let colorBackground: Color = Color("gray")
let colorOrange: Color = Color("orange")
let colorBlue: Color = Color("blue")
let buttonGray: Color = Color("buttonGray")
let counterGray: Color = Color("counter")
let brownTelephone: Color = Color("brownTelephone")

// UX

let feedback = UIImpactFeedbackGenerator(style: .medium)
