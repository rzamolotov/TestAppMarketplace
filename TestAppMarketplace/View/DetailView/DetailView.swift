//
//  DetailView.swift
//  TestAppMarketplace
//
//  Created by Роман Замолотов on 11.12.2022.
//

import SwiftUI

struct DetailView: View {
    //MARK: - Property
    @EnvironmentObject var shop: Shop
    
    //MARK: - Body
    var body: some View {
        VStack{
            TopPartDetailView(numberOfProducts: shop.products.count)
                .padding(.leading)
                .padding(.trailing)
            
            ScrollView{
                CarouselImageView()
                    .frame(height: 349)
                    .padding(.leading)
                    .padding(.trailing)
                
                BottomPartDetailView(detail: details[0], product: products[2])
                    .frame(height: 471)
                    .background(.white)
                    .cornerRadius(30)
                    .padding(.leading)
                    .padding(.trailing)
                    
            }
            
        }
        .background(colorBackground)
    }
}
//MARK: - Preview
struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView()
            .environmentObject(Shop())
    }
}
