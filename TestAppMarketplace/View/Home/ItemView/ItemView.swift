//
//  ItemView.swift
//  TestAppMarketplace
//
//  Created by Роман Замолотов on 11.12.2022.
//

import SwiftUI

struct ItemView: View {
    
    //MARK: - Property
    @EnvironmentObject var shop: Shop
    
    //MARK: - Body
    var body: some View {
        VStack{
            HotSalesTitleView()
            
            HotSalesCarouselView()
                .frame(height: 199)
                .cornerRadius(10)
            
            ProductTitleView()
            
            ProductGridView()
                
        }
    }
}

//MARK: - Preview
struct ItemView_Previews: PreviewProvider {
    static var previews: some View {
        ItemView()
            .environmentObject(Shop())
    }
}
