//
//  CarouselImageView.swift
//  TestAppMarketplace
//
//  Created by Роман Замолотов on 11.12.2022.
//

import SwiftUI

struct CarouselImageView: View {
    
    //MARK: - Property
    @State private var index = 0
 
    //MARK: - Body
    var body: some View {
        TabView(selection: $index) {
            ForEach (details) { detail in
                DetailImageView(detail: detail)
            }
        }
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
    }
}

//MARK: - Preview
struct CarouselImageView_Previews: PreviewProvider {
    static var previews: some View {
        CarouselImageView()
    }
}
