//
//  TextFieldsFilterView.swift
//  TestAppMarketplace
//
//  Created by Роман Замолотов on 12.12.2022.
//

import SwiftUI

struct TextFieldsFilterView: View {
    
    //MARK: - Property
    var brand = ["Apple", "Samsung", "Xiaomi"]
    @State private var selectedBrand = "Samsung"
    var price = ["$100-$300", "$300-$500", "$500-$700", "$700-$1000", "more $1000"]
    @State private var selectedPrice = "$300-$500"
    var size = ["3,5 to 4,5 inches", "4,5 to 5,5 inches", "5,5 to 6,5 inches"]
    @State private var selectedSize = "4,5 to 5,5 inches"
    
    //MARK: - Body
    var body: some View {
        VStack {
            //Brand
            VStack {
                HStack {
                    Text("Brand")
                        .font(.custom("MarkPro-Medium", size: 18))
                        .foregroundColor(colorBlue)
                    Spacer()
                }
                ZStack{
                    Rectangle()
                        .frame(height: 37)
                        .foregroundColor(.white)
                        .border(buttonGray)
                    HStack{
                        Menu {
                            Picker(selection: $selectedBrand) {
                                ForEach(brand, id: \.self) {
                                    Text($0)
                                }
                            } label: {}
                        } label: {
                            HStack{
                                Text("\(selectedBrand)")
                                    .font(.custom("MarkPro-Regular", size: 18))
                                    .foregroundColor(colorBlue)
                                Spacer()
                                Image(systemName: "chevron.down")
                                    .font(.custom("MarkPro-Regular", size: 18))
                                    .foregroundColor(colorBlue)
                            }
                            .padding(.trailing)
                            .padding(.leading)
                        }
                        
                    }
                }
            }
            //:Brand
            //Price
            VStack {
                HStack {
                    Text("Price")
                        .font(.custom("MarkPro-Medium", size: 18))
                        .foregroundColor(colorBlue)
                    Spacer()
                }
                
                ZStack{
                    Rectangle()
                        .frame(height: 37)
                        .foregroundColor(.white)
                        .border(buttonGray)
                    HStack{
                        Menu {
                            Picker(selection: $selectedPrice) {
                                ForEach(price, id: \.self) {
                                    Text($0)
                                }
                            } label: {}
                        } label: {
                            HStack{
                                Text("\(selectedPrice)")
                                    .font(.custom("MarkPro-Regular", size: 18))
                                    .foregroundColor(colorBlue)
                                Spacer()
                                Image(systemName: "chevron.down")
                                    .font(.custom("MarkPro-Regular", size: 18))
                                    .foregroundColor(colorBlue)
                            }
                            .padding(.trailing)
                            .padding(.leading)
                        }
                        
                        //                        .pickerStyle(.menu)
                    }
                }
            }
            //:Price
            //Size
            VStack {
                HStack {
                    Text("Size")
                        .font(.custom("MarkPro-Medium", size: 18))
                        .foregroundColor(colorBlue)
                    Spacer()
                }
                
                ZStack{
                    Rectangle()
                        .frame(height: 37)
                        .foregroundColor(.white)
                        .border(buttonGray)
                    HStack{
                        Menu {
                            Picker(selection: $selectedSize) {
                                ForEach(size, id: \.self) {
                                    Text($0)
                                }
                            } label: {}
                        } label: {
                            HStack{
                                Text("\(selectedSize)")
                                    .font(.custom("MarkPro-Regular", size: 18))
                                    .foregroundColor(colorBlue)
                                Spacer()
                                Image(systemName: "chevron.down")
                                    .font(.custom("MarkPro-Regular", size: 18))
                                    .foregroundColor(colorBlue)
                            }
                            .padding(.trailing)
                            .padding(.leading)
                        }
                    }
                }
            }
            //:Size
        }
        .padding(.leading)
        .padding(.trailing)
    }
}

//MARK: - Preview
struct TextFieldsFilterView_Previews: PreviewProvider {
    static var previews: some View {
        TextFieldsFilterView()
    }
}
