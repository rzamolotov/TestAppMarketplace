//
//  AddToCartButtonView.swift
//  TestAppMarketplace
//
//  Created by Роман Замолотов on 13.12.2022.
//

import SwiftUI

struct AddToCartButtonView: View {
    //MARK: - Property
    @EnvironmentObject var shop: Shop
    var product: Product
    
    //MARK: - Body
    var body: some View {
        HStack {
            Button(action: {
                feedback.impactOccurred()
                shop.addToCart(product: product)
                print("\(shop.products.count)")
                print("add to cart")
                
            }, label: {
                
                ZStack {
                    Rectangle()
                        .frame(width: 355, height: 54)
                        .foregroundColor(colorOrange)
                        .cornerRadius(10)
                    HStack {
                        Spacer()
                        Text("Add to Cart")
                            .font(.custom("MarkPro-Bold", fixedSize: 20))
                            .foregroundColor(.white)
                        Spacer()
                        Text(product.formattedPrice)
                            .font(.custom("MarkPro-Bold", fixedSize: 20))
                            .foregroundColor(.white)
                        Spacer()
                    }
                }
            })
        }//:Button
    }
}

//MARK: - Preview
struct AddToCartButtonView_Previews: PreviewProvider {
    static var previews: some View {
        AddToCartButtonView(product: products[2])
            .environmentObject(Shop())
    }
}
