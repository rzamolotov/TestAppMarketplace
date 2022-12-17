//
//  CategoryGridView.swift
//  TestAppMarketplace
//
//  Created by Роман Замолотов on 10.12.2022.
//

import SwiftUI

struct CategoryGridView: View {
    //MARK: - Property
    
    @State private var selectedItem: String?
    
    //MARK: - Body
    var body: some View {
        VStack {
            CategoryTitleView()
            
            HStack {
                ScrollView(.horizontal) {
                    HStack {
                        ForEach(categories) { category in
                            Button(action: {
                                self.selectedItem = category.id
                            } ,
                                   label: {
                                VStack {
                                    Image(systemName: category.categoryImageName)
                                        .font(.system(size: 30))
                                        .frame(width: 71, height: 71)
                                        .foregroundColor(Color.gray)
                                        .background(selectedItem == category.id ? colorOrange : .white)
                                        .cornerRadius(50)
                                    
                                    Text(category.categoryName)
                                        .font(.custom("MarkPro", fixedSize: 12))
                                        .foregroundColor(colorBlue)
                                }
                                .background(colorBackground)
                            })
                        }
                    }
                }
            }
            SearchItem(text: .constant(""))
        }
        .background(colorBackground)
    }
}

//MARK: - Preview
struct CategoryGridView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryGridView()
    }
}
