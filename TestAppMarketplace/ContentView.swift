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
                VStack {
                    ScrollView{
                        HeaderView()
                            .padding(.leading)
                            .padding(.trailing)
                        
                        CategoryGridView()
                            .padding(.leading)
                            .padding(.trailing)
                        
                        ItemView()
                            .padding()
                    }
                    BottomView(numberOfProducts: shop.products.count)
                }
                .background(colorBackground)
            } else {
                DetailView()
            }
        }
    }
}

//MARK: - Preview
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(Shop())
    }
}
