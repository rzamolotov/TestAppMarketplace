//
//  TopPartFilterView.swift
//  TestAppMarketplace
//
//  Created by Роман Замолотов on 12.12.2022.
//

import SwiftUI

struct TopPartFilterView: View {
    
    //MARK: - Property
    @Environment(\.dismiss) var dismiss
    
    //MARK: - Body
    var body: some View {
        HStack{
            Button( action: {
                dismiss()
            },
                    label: { Image(systemName: "xmark.app.fill")
                    .foregroundColor(colorBlue)
                    .font(Font.system(size: 37))
                    .frame(width: 37, height: 37)
            })
            Spacer()
            
            Text("Filter Options")
                .font(Font.custom("MarkProHeavy", size: 18))
                .foregroundColor(colorBlue)
            
            Spacer()
            
            Button( action: {
                dismiss()
            },
                    label: {
                ZStack {
                    Rectangle()
                        .frame(width: 86, height: 37)
                        .cornerRadius(10)
                        .foregroundColor(colorOrange)
                    Text("Done")
                        .foregroundColor(.white)
                        .font(Font.custom("MarkProHeavy", size: 18))
                        
                }
            })
        }
        .padding()
    }
}

//MARK: - Preview
struct TopPartFilterView_Previews: PreviewProvider {
    static var previews: some View {
        TopPartFilterView()
    }
}
