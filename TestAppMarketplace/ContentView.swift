//
//  ContentView.swift
//  TestAppMarketplace
//
//  Created by Роман Замолотов on 09.12.2022.
//

import SwiftUI

struct ContentView: View {
    //MARK: - Property
    @EnvironmentObject var shop: Shop
    
    //MARK: - Body
    var body: some View {
        VStack {
            if shop.showingProduct == false && shop.selectedProduct == nil {
                ScrollView{
                    HeaderView()
                    
                    CategoryGridView()
                    
                    ItemView()
                }
                .padding(.leading)
                .padding(.trailing)
                
                BottomView(numberOfProducts: shop.products.count)
                    .frame(height: 55)
                
            } else {
                DetailView()
            }
        }
        .background(colorBackground)
    }
}

//MARK: - Preview
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(Shop())
    }
}
