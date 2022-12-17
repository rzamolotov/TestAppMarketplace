//
//  CartHeaderView.swift
//  TestAppMarketplace
//
//  Created by Роман Замолотов on 13.12.2022.
//

import SwiftUI

struct CartHeaderView: View {
    //MARK: - Property
    @Environment(\.dismiss) var dismiss
    
    //MARK: - Body
    var body: some View {
        HStack{
            Button( action: {
                dismiss()
            },
                    label: { Image(systemName: "chevron.backward.square.fill")
                    .foregroundColor(colorBlue)
                    .font(Font.system(size: 37))
                    .frame(width: 37, height: 37)
            })
            Spacer()
        
            Spacer()
            
            Button( action: { },
                    label: {
                HStack{
                    Text("Add adress")
                        .font(Font.custom("MarkPro-Medium", size: 15))
                        .foregroundColor(colorBlue)
                    ZStack {
                        Rectangle()
                            .foregroundColor(colorOrange)
                            .frame(width: 37, height: 37)
                            .cornerRadius(10)
                        
                        Image("geowhite")
                    }
                }
            })
        }
    }
}
//MARK: - Preview
struct CartHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        CartHeaderView()
    }
}
