//
//  HotSalesCarouselView.swift
//  TestAppMarketplace
//
//  Created by Роман Замолотов on 11.12.2022.
//

import SwiftUI

struct HotSalesCarouselView: View {
    
    //MARK: - Property
    @State private var index = 0
    @EnvironmentObject var shop: Shop
    
    //MARK: - Body
    var body: some View {
        VStack{
       
            TabView(selection: $index){
                ForEach (hotSales) { hotSale in
                    HotSalesItemView(hotSale: hotSale)
                }
            }
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
        }
    }
}

//MARK: - Preview
struct HotSalesCarouselView_Previews: PreviewProvider {
    static var previews: some View {
        HotSalesCarouselView()
            .environmentObject(Shop())
    }
}
