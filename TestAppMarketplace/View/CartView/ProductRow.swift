//
//  ProductRow.swift
//  TestAppMarketplace
//
//  Created by Роман Замолотов on 11.12.2022.
//

import SwiftUI

struct ProductRow: View {
    //MARK: - Property
    
    @EnvironmentObject var shop: Shop
    var product: Product
    @State private var counter: Int = 1
    
    //MARK: - Body
    
    var body: some View {
        VStack{
            //Product Item
            HStack {
                AsyncImage(url: product.picture) { phase in
                    switch phase {
                    case .empty:
                        ProgressView()
                    case .success(let image):
                        image.resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 111, height: 89)
                    case .failure:
                        Image(systemName: "photo")
                    @unknown default:
                        EmptyView()
                    }
                }
                
                VStack(alignment: .leading, spacing: 10, content: {
                    Text(product.title)
                        .font(Font.custom("MarkPro-Medium", size: 20))
                        .foregroundColor(.white)
                    
                    Text("$ \(product.price_without_discount * counter)")
                        .font(Font.custom("MarkPro-Medium", size: 20))
                        .foregroundColor(colorOrange)
                })
                //Counter
                ZStack {
                    Rectangle()
                        .foregroundColor(counterGray)
                        .frame(width: 26, height: 68)
                        .cornerRadius(10)
                    VStack{
                        Button(action: {
                            if counter > 0 {
                                counter -= 1
                            }
                        }, label: {
                            Image(systemName: "minus")
                                .font(.custom("MarkPro-Medium", fixedSize: 20))
                        })
                        .foregroundColor(.white)
                        
                        Text("\(counter)")
                            .font(Font.custom("MarkPro-Medium", size: 20))
                            .foregroundColor(.white)
                        
                            .foregroundColor(.white)
                        Button(action: {
                            if counter < 50 {
                                counter += 1
                            }
                        }, label: {
                            Image(systemName: "plus")
                                .font(.custom("MarkPro-Medium", fixedSize: 20))
                        })
                        .foregroundColor(.white)
                    }//VStack
                }//:ZStack, counter
                
                Spacer()
                
                Image(systemName: "trash")
                    .foregroundColor(counterGray)
                    .font(.custom("MarkPro-Medium", fixedSize: 20))
                    .onTapGesture {
                        shop.removeFromCart(product: product)
                        print("remove item")
                    }
            }//:HStack, Product Item
            
            //Bottom Cart View
            VStack (spacing: 10) {
                
                Rectangle()
                    .frame(height: 1)
                    .foregroundColor(.white)
                
                HStack {
                    Text("Total")
                        .font(.custom("MarkPro-Regular", fixedSize: 15))
                    Spacer()
                    Text("$\(product.price_without_discount * counter)")
                        .font(.custom("MarkPro-Bold", fixedSize: 15))
                    
                }
                .foregroundColor(.white)
                .padding(.top)
                .padding(.bottom)
                
                HStack {
                    Text("Delivery")
                        .font(.custom("MarkPro-Regular", fixedSize: 15))
                    Spacer()
                    Text("Free")
                        .font(.custom("MarkPro-Bold", fixedSize: 15))
                }
                .foregroundColor(.white)
                .padding(.top)
                .padding(.bottom)
                Rectangle()
                    .frame(height: 1)
                    .foregroundColor(.white)
                
                Button(action: {
                    shop.removeFromCart(product: product)
                    print("\(shop.products.count)")
                    print("checkout")
                },
                       label: {
                    ZStack {
                        Rectangle()
                            .frame(width: 326, height: 54)
                            .foregroundColor(colorOrange)
                            .cornerRadius(10)
                        HStack {
                            Text("Checkout")
                                .font(.custom("MarkPro-Bold", fixedSize: 20))
                                .foregroundColor(.white)
                        }
                    }
                })
            }//:VStsck, Bottom Cart View
        }
        .background(colorBlue)
    }
}

//MARK: - Preview
struct ProductRow_Previews: PreviewProvider {
    static var previews: some View {
        ProductRow(product: products[2])
            .environmentObject(Shop())
    }
}
