//
//  DetailImageView.swift
//  TestAppMarketplace
//
//  Created by Роман Замолотов on 11.12.2022.
//

import SwiftUI

struct DetailImageView: View {
    //MARK: - Property
    
    var detail: Detail
    @EnvironmentObject var shop: Shop
    
    //MARK: - Body
    var body: some View {
        
        // В ЭТОМ ВЬЮ ПЛОХОЙ КОД - Я ПОНИМАЮ ЭТО, ИЩУ РЕШЕНИЕ КАК ЕГО АВТОМАТИЗИРОВАТЬ
   
        AsyncImage(url: detail.images[0]) { phase in
            switch phase {
            case .empty:
                ProgressView()
            case .success(let image):
                image.resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 437, height: 349)
            case .failure:
                Image(systemName: "photo")
            @unknown default:
                EmptyView()
            }
        }
        AsyncImage(url: detail.images[1]) { phase in
            switch phase {
            case .empty:
                ProgressView()
            case .success(let image):
                image.resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 437, height: 349)
            case .failure:
                Image(systemName: "photo")
            @unknown default:
                EmptyView()
            }
        }
    }
}

//MARK: - Preview
struct DetailImageView_Previews: PreviewProvider {
    static var previews: some View {
        DetailImageView(detail: details[0])
            .environmentObject(Shop())
    }
}
