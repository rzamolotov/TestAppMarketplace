////
////  BottomPartCartView.swift
////  TestAppMarketplace
////
////  Created by Роман Замолотов on 17.12.2022.
////
//
//import SwiftUI
//
//struct BottomPartCartView: View {
//    
//    @EnvironmentObject var shop: Shop
//    var product: Product
//    
//    var body: some View {
//        VStack (spacing: 10) {
//            
//            Rectangle()
//                .frame(height: 1)
//                .foregroundColor(.white)
//            
//            HStack {
//                Text("Total")
//                    .font(.custom("MarkPro-Regular", fixedSize: 15))
//                Spacer()
//                Text("$\(product.price_without_discount * ProductRow(product: product).counter)")
//                    .font(.custom("MarkPro-Bold", fixedSize: 15))
//                
//            }
//            .foregroundColor(.white)
//            .padding(.top)
//            .padding(.bottom)
//            
//            HStack {
//                Text("Delivery")
//                    .font(.custom("MarkPro-Regular", fixedSize: 15))
//                Spacer()
//                Text("Free")
//                    .font(.custom("MarkPro-Bold", fixedSize: 15))
//            }
//            .foregroundColor(.white)
//            .padding(.top)
//            .padding(.bottom)
//            Rectangle()
//                .frame(height: 1)
//                .foregroundColor(.white)
//            
//            Button(action: {
//                shop.removeFromCart(product: product)
//                print("\(shop.products.count)")
//                print("checkout")
//            },
//                   label: {
//                ZStack {
//                    Rectangle()
//                        .frame(width: 326, height: 54)
//                        .foregroundColor(colorOrange)
//                        .cornerRadius(10)
//                    HStack {
//                        Text("Checkout")
//                            .font(.custom("MarkPro-Bold", fixedSize: 20))
//                            .foregroundColor(.white)
//                    }
//                }
//            })
//        }//:VStsck, Bottom Cart View
//        .background(colorBlue)
//    }
//}
//
//struct BottomPartCartView_Previews: PreviewProvider {
//    static var previews: some View {
//        BottomPartCartView(product: products[0])
//            .environmentObject(Shop())
//    }
//}
