//
//  TopPartDetailView.swift
//  TestAppMarketplace
//
//  Created by Роман Замолотов on 11.12.2022.
//

import SwiftUI

struct TopPartDetailView: View {
    //MARK: - Property
    @EnvironmentObject var shop: Shop
    @State var cartOpened = false
    var numberOfProducts: Int
    
    //MARK: - Body
    var body: some View {
        HStack{
            Button( action: {
                withAnimation(.easeIn) {
                    shop.showingProduct = false
                    shop.selectedProduct = nil
                }
            },
                    label: {
                Image(systemName: "chevron.left.square.fill")
                    .foregroundColor(colorBlue)
                    .font(Font.system(size: 37))
                    .frame(width: 37, height: 37)
            })
            Spacer()
            
            Text("Product Details")
                .font(Font.custom("MarkPro-Medium", size: 18))
                .foregroundColor(colorBlue)
            
            Spacer()
            
            Button( action: {
                self.cartOpened.toggle()
            },
                    label: {
                ZStack {
                    Rectangle()
                        .frame(width: 37, height: 37)
                        .cornerRadius(10)
                        .foregroundColor(colorOrange)
                    
                    Image(systemName: "bag")
                        .foregroundColor(Color.white)
                        .font(Font.system(size: 14))
                    
                    if numberOfProducts > 0 {
                        Text("\(numberOfProducts)")
                            .font(.caption2).bold()
                            .foregroundColor(.white)
                            .frame(width: 15, height: 15)
                            .background(colorBlue)
                            .cornerRadius(60)
                            .offset(x: 13, y: -10)
                    }
                }
                .sheet(isPresented: $cartOpened, content: {
                    CartView()
                })
            })
        }
    }
}

//MARK: - Preview
struct TopPartDetailView_Previews: PreviewProvider {
    static var previews: some View {
        TopPartDetailView(numberOfProducts: 1)
            .environmentObject(Shop())
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
