//
//  ProductItemView.swift
//  TestAppMarketplace
//
//  Created by Роман Замолотов on 10.12.2022.
//

import SwiftUI

struct ProductItemView: View {
    //MARK: - Property
    var product: Product
    @EnvironmentObject var shop: Shop
    
    //MARK: - Body
    var body: some View {
        // PHOTO
        ZStack {
            Rectangle()
            VStack {
                ZStack(alignment: .topTrailing) {
                    AsyncImage(url: product.picture) { phase in
                        switch phase {
                        case .empty:
                            ProgressView()
                        case .success(let image):
                            image.resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 187, height: 168)
                        case .failure:
                            Image(systemName: "photo")
                        @unknown default:
                            EmptyView()
                        }
                    }
                    Button { }
                label: {
                    ZStack {
                        Circle()
                            .frame(width: 25, height: 25)
                            .foregroundColor(.white)
                        if product.is_favorites == true {
                            Image(systemName: "heart.fill")
                                .font(Font.system(size: 11))
                                .foregroundColor(colorOrange)
                        } else {
                            Image(systemName: "heart")
                                .font(Font.system(size: 11))
                                .foregroundColor(colorOrange)
                        }
                    }
                    .padding(.trailing)
                    .padding(.top)
                } //CircleButton
                }
                .frame(width: 187, height: 168)
                .cornerRadius(10)
                // PRICE
                HStack {
                    Text(product.formattedPrice)
                        .font(Font.custom("MarkPro-Bold", size: 16))
                        .foregroundColor(colorBlue)
                        .padding(.leading)
                    
                    Text(product.formattedDiscountPrice)
                        .font(Font.custom("MarkPro-Medium", size: 10))
                        .strikethrough()
                        .foregroundColor(.gray)
                    Spacer()
                }
                // NAME
                HStack{
                    Text(product.title)
                        .font(.custom("MarkPro-Regular", size: 10))
                        .foregroundColor(colorBlue)
                        .padding(.leading)
                    Spacer()
                }
            }
        }
        .foregroundColor(.white)
        .frame(width: 181, height: 227)
        .cornerRadius(20)
    }
}
//MARK: - Preview
struct ProductItemView_Previews: PreviewProvider {
    static var previews: some View {
        ProductItemView(product: products[0])
            .environmentObject(Shop())
    }
}
