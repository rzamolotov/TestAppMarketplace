//
//  BottomPartDetailView.swift
//  TestAppMarketplace
//
//  Created by Роман Замолотов on 11.12.2022.
//

import SwiftUI

struct BottomPartDetailView: View {
    
    //MARK: - Property

    var detail: Detail
    var product: Product
    @EnvironmentObject var shop: Shop
    @State var isFavorite: Bool
  

    //MARK: - Body
    var body: some View {
        VStack {
            //Title + Heart + Stars
            VStack {
                HStack {
                    Text(detail.title)
                        .font(.custom( "MarkPro-Medium", size: 24))
                        .foregroundColor(colorBlue)
                    
                    Spacer()
                    
                    Button ( action: { },
                             label: { Image(systemName: detail.isFavorites ? "heart.square" : "heart.square.fill" )
                            .foregroundColor(colorBlue)
                            .font(Font.system(size: 33))
                    })
                }
                HStack {
                    ForEach (1..<6) {_ in
                        Image(systemName: "star.fill")
                            .foregroundColor(.yellow)
                    }
                    Spacer()
                }
            }
            .padding()
            //: Title + Heart + Stars
            
           
            //SegmentedControl
            SegmentedControl()
                .padding()
            //: SegmentedControl

            //Details Stack
            HStack() {
                VStack (spacing: 10) {
                    Image("processor")
                        .font(Font.system(size: 22))
                    Text(detail.cpu)
                        .font(.custom("MarkPro-Medium", fixedSize: 11))
                        .foregroundColor(buttonGray)
                }
                Spacer()
                VStack (spacing: 10) {
                    Image("camera")
                        .font(Font.system(size: 22))
                    Text(detail.camera)
                        .font(.custom("MarkPro-Medium", fixedSize: 11))
                        .foregroundColor(buttonGray)
                }
                Spacer()
                VStack (spacing: 10) {
                    Image("ssd")
                        .font(Font.system(size: 22))
                    Text(detail.ssd)
                        .font(.custom("MarkPro-Medium", fixedSize: 11))
                        .foregroundColor(buttonGray)
                }
                Spacer()
                VStack (spacing: 10) {
                    Image("sd")
                        .font(Font.system(size: 22))
                    Text(detail.sd)
                        .font(.custom("MarkPro-Medium", fixedSize: 11))
                        .foregroundColor(buttonGray)
                }
            }
            .padding()
            //: Details Stack
            
            HStack {
                Text("Select color and opacity")
                    .font(.custom("MarkPro-Medium", fixedSize: 16))
                    .foregroundColor(colorBlue)
                   
                Spacer()
            }
            .padding()
            //Color select, and memory
            HStack {
                ColorSegmentedControlView()
                    
                Spacer()
                
               MemorySegmentedControlView()
            }
            .padding()
            //: Color select, and memory
            
            AddToCartButtonView(product: product)
   
        }//: VStack
        .frame(height: 471)
    }
}

//MARK: - Preview
struct BottomPartDetailView_Previews: PreviewProvider {
    static var previews: some View {
        BottomPartDetailView(detail: details[0], product: products[0], isFavorite: false)
            .padding()
            .previewLayout(.sizeThatFits)
            .environmentObject(Shop())
    }
}
