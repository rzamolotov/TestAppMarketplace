//
//  FilterView.swift
//  TestAppMarketplace
//
//  Created by Роман Замолотов on 12.12.2022.
//

import SwiftUI

struct FilterView: View {
    
    //MARK: - Body
    var body: some View {
        VStack {
            TopPartFilterView()
            
            TextFieldsFilterView()
        }
        .presentationDetents([.height(375)])
        .frame(height: 375)
        .background(colorBackground)
    }
}

//MARK: - Preview
struct FilterView_Previews: PreviewProvider {
    static var previews: some View {
        FilterView()
    }
}
