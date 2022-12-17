//
//  ProductTitleView.swift
//  TestAppMarketplace
//
//  Created by Роман Замолотов on 11.12.2022.
//

import SwiftUI

struct ProductTitleView: View {
    //MARK: - Property
    
    @EnvironmentObject var shop: Shop
    
    //MARK: - Body
    var body: some View {
        HStack {
            Text("Best Seller")
                .font(Font.custom("MarkPro-Bold", size: 25))
                .foregroundColor(colorBlue)
            
            Spacer()
            
            Button( action: {},
                    label: { Text("see more")
                    .font(.custom("MarkPro-Regular", fixedSize: 15))
                    .foregroundColor(colorOrange)
            })
        }
    }
}

//MARK: - Preview
struct ProductTitleView_Previews: PreviewProvider {
    static var previews: some View {
        ProductTitleView()
            .padding()
            .previewLayout(.sizeThatFits)
            .environmentObject(Shop())
    }
}
