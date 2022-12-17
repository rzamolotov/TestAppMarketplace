//
//  HotSalesItemView.swift
//  TestAppMarketplace
//
//  Created by Роман Замолотов on 11.12.2022.
//

import SwiftUI

struct HotSalesItemView: View {
    //MARK: - Property
    
    var hotSale: HotSale
    @EnvironmentObject var shop: Shop
    
    //MARK: - Body
    var body: some View {
        ZStack {
            HStack{
                HotSaleAtributeView(hotSale: hotSale)
                
                Spacer()
            }
                .background(
                    AsyncImage(url: hotSale.picture) { phase in
                        switch phase {
                        case .empty:
                            ProgressView()
                        case .success(let image):
                            image.resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 384, height: 221)
                        case .failure:
                            Image(systemName: "photo")
                        @unknown default:
                            EmptyView()
                        }
                    })//: Image
        }
        .frame(height: 221)
    }
}
//MARK: - Preview
struct HotSalesItemView_Previews: PreviewProvider {
    static var previews: some View {
        HotSalesItemView(hotSale: hotSales[0])
            .environmentObject(Shop())
    }
}
