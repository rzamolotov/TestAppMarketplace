//
//  HotSalesTitleView.swift
//  TestAppMarketplace
//
//  Created by Роман Замолотов on 12.12.2022.
//

import SwiftUI

struct HotSalesTitleView: View {
    //MARK: - Property
    
    @EnvironmentObject var shop: Shop
    
    //MARK: - Body
    var body: some View {
        HStack {
            Text("Hot Sales")
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
struct HotSalesTitleView_Previews: PreviewProvider {
    static var previews: some View {
        HotSalesTitleView()
            .environmentObject(Shop())
            .padding()
    }
}
