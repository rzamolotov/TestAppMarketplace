//
//  CategoryTitleView.swift
//  TestAppMarketplace
//
//  Created by Роман Замолотов on 10.12.2022.
//

import SwiftUI

struct CategoryTitleView: View {

    //MARK: - Body
    var body: some View {
        HStack {
            Text("Select Category")
                .font(.custom("MarkPro-Bold", fixedSize: 25))
                .foregroundColor(colorBlue)
            
            Spacer()
            
            Button( action: {},
                    label: { Text("view all")
                    .font(.custom("MarkPro-Regular", fixedSize: 15))
                    .foregroundColor(colorOrange)
            })
        }
    }
}

//MARK: - Preview
struct CategoryTitleView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryTitleView()
    }
}
