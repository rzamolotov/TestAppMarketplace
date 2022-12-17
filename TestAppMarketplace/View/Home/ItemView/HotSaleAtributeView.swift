//
//  HotSaleAtributeView.swift
//  TestAppMarketplace
//
//  Created by Роман Замолотов on 11.12.2022.
//

import SwiftUI

struct HotSaleAtributeView: View {
    //MARK: - Property
    
    var hotSale: HotSale
    @EnvironmentObject var shop: Shop
    
    //MARK: - Body
    var body: some View {
        VStack{
            Spacer()
            //New Button
            HStack {
                Button( action: {},
                        label: { if hotSale.is_new == true {
                            Text("New")
                                .font(.custom("SFProDisplay-Bold", fixedSize: 10))
                                .frame(width: 27, height: 27)
                                .foregroundColor(.white)
                                .background(colorOrange)
                                .cornerRadius(50)
                        } else {
                            EmptyView()
                        }
                })
                Spacer()
            }
            .padding(.leading)
            Spacer()
            
            Text(hotSale.title)
                .font(.custom("SFProDisplay-Bold", size: 25))
                .foregroundColor(.white)
            
            Text(hotSale.subtitle)
                .font(.custom("SFProDisplay-Regular", size: 11))
                .foregroundColor(.white)
            
            Spacer()
            
            Button( action: {},
                    label: { Text("Buy now!")
                    .foregroundColor(.black)
                    .font(.custom("SFProDisplay-Regular", size: 11))
                    .frame(width: 98, height: 23)
                    .background(.white)
                    .cornerRadius(5)
            })
            Spacer()
        }.frame(width: 147, height: 199)
            .background(.black)
    }
}

struct HotSaleAtributeView_Previews: PreviewProvider {
    static var previews: some View {
        HotSaleAtributeView(hotSale: hotSales[0])
            .padding()
            .previewLayout(.sizeThatFits)
            .environmentObject(Shop())
    }
}
