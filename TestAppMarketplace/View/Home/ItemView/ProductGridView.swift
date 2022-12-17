//
//  ProductGridView.swift
//  TestAppMarketplace
//
//  Created by Роман Замолотов on 10.12.2022.
//

import SwiftUI

struct ProductGridView: View {
    
    //MARK: - Property
    let columns = [GridItem(.flexible()), GridItem(.flexible())]
    @EnvironmentObject var shop: Shop
    
    //MARK: - Body
    var body: some View {
        LazyVGrid(columns: columns, alignment: .center, spacing: 10, pinnedViews: []) {
            ForEach(products) { product in
                ProductItemView(product: product)
                    .onTapGesture {
                        withAnimation(.easeOut) {
                            shop.selectedProduct = product
                            shop.showingProduct = true
                        }
                    }
            }
            
        }
        .background(colorBackground)
    }
}

//MARK: - Preview
struct ProductGridView_Previews: PreviewProvider {
    static var previews: some View {
        ProductGridView()
            .environmentObject(Shop())
    }
}
