//
//  CartVIew.swift
//  TestAppMarketplace
//
//  Created by Роман Замолотов on 11.12.2022.
//

import SwiftUI

struct CartView: View {
    //MARK: - Property

    @EnvironmentObject var shop: Shop

    //MARK: - Body
    var body: some View {
        VStack {
            Spacer()

            CartHeaderView()

                .padding()

            Spacer()

            HStack {
                Text("My Cart")
                    .font(Font.custom("MarkPro-Bold", size: 35))
                    .foregroundColor(colorBlue)
                Spacer()
            }
            .padding()

            ScrollView {
                ZStack {
                    VStack{
                        ZStack {
                            Rectangle()
                                .cornerRadius(30)
                                .foregroundColor(colorBlue)
                                .frame(height: 690)

                            if shop.products.count > 0 {
                                ForEach(shop.products, id: \.id) { product in
                                    VStack {
                                        ProductRow(product: products[2])
                                            .padding()
                                    }
                                }
                            } else {
                                Spacer()
                                Text("Your cart is empty")
                                    .font(Font.custom("MarkPro-Bold", size: 20))
                                    .foregroundColor(.white)
                            }
                        }
                    }
                }
            }
            .background(colorBackground)
        }
        .background(colorBackground)
    }
}

//MARK: - Preview
struct CartVIew_Previews: PreviewProvider {
    static var previews: some View {
        CartView()
            .environmentObject(Shop())
    }
}
