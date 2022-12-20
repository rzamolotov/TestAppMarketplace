//
//  BottomView.swift
//  TestAppMarketplace
//
//  Created by Роман Замолотов on 11.12.2022.
//

import SwiftUI

struct BottomView: View {
    
    //MARK: - Property
    @EnvironmentObject var shop: Shop
    @State var cartOpened = false
    var numberOfProducts: Int
    
    //MARK: - Body
    var body: some View {
        ZStack {
            Rectangle()
                .frame(height: 72)
                .cornerRadius(30)
                .foregroundColor(colorBlue)
            HStack{
                Spacer()
                Image(systemName: "circle.fill")
                    .foregroundColor(.white)
                    .font(.custom("MarkPro-Bold", fixedSize: 8))
                Text("Explorer")
                    .foregroundColor(.white)
                    .font(.custom("MarkPro-Bold", fixedSize: 15))
                Spacer()
                Button( action: {
                    self.cartOpened.toggle()
                },
                        label: {
                    ZStack {
                    Image(systemName: "bag")
                        .foregroundColor(.white)
                        .frame(width: 17, height: 17)
                    
                        if numberOfProducts > 0 {
                            Text("\(numberOfProducts)")
                                .font(.caption2).bold()
                                .foregroundColor(.white)
                                .frame(width: 15, height: 15)
                                .background(colorOrange)
                                .cornerRadius(60)
                                .offset(x: 13, y: -10)
                        }
                    }
                    .sheet(isPresented: $cartOpened, content: {
                        CartView()
                    })
                })
                Spacer()
                Image(systemName: "heart")
                    .foregroundColor(.white)
                    .frame(width: 17, height: 17)
                Spacer()
                Image(systemName: "person")
                    .foregroundColor(.white)
                    .frame(width: 17, height: 17)
                Spacer()
            }
            
            .foregroundColor(colorBackground.opacity(0.01))
        }
    }
}

//MARK: - Preview
struct BottomView_Previews: PreviewProvider {
    static var previews: some View {
        BottomView(numberOfProducts: 1)
            .environmentObject(Shop())
    }
}
