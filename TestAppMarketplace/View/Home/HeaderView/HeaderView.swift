//
//  HeaderView.swift
//  TestAppMarketplace
//
//  Created by Роман Замолотов on 11.12.2022.
//

import SwiftUI

struct HeaderView: View {
    //MARK: - Property
    
    @EnvironmentObject var shop: Shop
    @State var filterOpened = false
    
    //MARK: - Body
    var body: some View {
        HStack {
            Spacer()
            Image("geolocation")
            
            Text("Sevastopol, Rus")
                .foregroundColor(colorBlue)
                .font(.custom("MarkPro-Medium", fixedSize: 15))
            Image(systemName: "chevron.down")
                .foregroundColor(colorBlue)
            
            Spacer()
            
            Button {
                self.filterOpened.toggle()
            } label: {
                ZStack {
                Image("filter")
                    .foregroundColor(colorBlue)
                    .frame(width: 17, height: 17)
                    }
            }
                .sheet(isPresented: $filterOpened, content: {
                    FilterView()
                })
        }
        .padding()
    }
}

//MARK: - Preview
struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView()
            .padding()
            .previewLayout(.sizeThatFits)
            .environmentObject(Shop())
    }
}
