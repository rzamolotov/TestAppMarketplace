//
//  ColorSegmentedControlView.swift
//  TestAppMarketplace
//
//  Created by Роман Замолотов on 17.12.2022.
//

import SwiftUI

struct ColorSegmentedControlView : View {
    //MARK: - Property
    @State var checkColor = true
    
    var body: some View {
        if checkColor == true {
            HStack(spacing: 0) {
                Toggle(isOn: $checkColor) {
                    ZStack {
                        Circle()
                            .foregroundColor(brownTelephone)
                            .frame(width: 39.23)
                        Image(systemName: "checkmark")
                            .foregroundColor(.white)
                            .bold()
                    }
                }.toggleStyle(.button)
                    .tint(.clear)
                
                Toggle(isOn: $checkColor) {
                    ZStack {
                        Circle()
                            .foregroundColor(.black)
                            .frame(width: 39.23)
                    }
                }.toggleStyle(.button)
                    .tint(.clear)
            }
        } else if checkColor == false {
            HStack(spacing: 0) {
                Toggle(isOn: $checkColor) {
                    ZStack {
                        Circle()
                            .foregroundColor(brownTelephone)
                            .frame(width: 39.23)
                        
                    }
                }.toggleStyle(.button)
                    .tint(.clear)
                
                Toggle(isOn: $checkColor) {
                    ZStack {
                        Circle()
                            .foregroundColor(.black)
                            .frame(width: 39.23)
                        Image(systemName: "checkmark")
                            .foregroundColor(.white)
                            .bold()
                    }
                }.toggleStyle(.button)
                    .tint(.clear)
            }
        } 
    }
}


//MARK: - Preview
struct ColorSegmentedControlView_Previews: PreviewProvider {
    static var previews: some View {
        ColorSegmentedControlView()
    }
}
