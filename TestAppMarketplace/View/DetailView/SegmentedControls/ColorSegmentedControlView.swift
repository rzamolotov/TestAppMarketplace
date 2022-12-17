//
//  ColorSegmentedControlView.swift
//  TestAppMarketplace
//
//  Created by Роман Замолотов on 17.12.2022.
//

import SwiftUI

struct ColorSegmentedControlView : View {
    //MARK: - Property
    @State var checkedBrown = false
    @State var checkedBlack = false
    
    var body: some View {
        if checkedBlack == true && checkedBrown == false {
            HStack(spacing: 0) {
                Toggle(isOn: $checkedBrown) {
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
                
                Toggle(isOn: $checkedBlack) {
                    ZStack {
                        Circle()
                            .foregroundColor(.black)
                            .frame(width: 39.23)
                    }
                }.toggleStyle(.button)
                    .tint(.clear)
            }
        } else if checkedBrown == true && checkedBlack == false {
            HStack(spacing: 0) {
                Toggle(isOn: $checkedBrown) {
                    ZStack {
                        Circle()
                            .foregroundColor(brownTelephone)
                            .frame(width: 39.23)
                        
                    }
                }.toggleStyle(.button)
                    .tint(.clear)
                
                Toggle(isOn: $checkedBlack) {
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
        } else {
            HStack(spacing: 0) {
                Toggle(isOn: $checkedBrown) {
                    ZStack {
                        Circle()
                            .foregroundColor(brownTelephone)
                            .frame(width: 39.23)
                    }
                }.toggleStyle(.button)
                    .tint(.clear)
                
                Toggle(isOn: $checkedBlack) {
                    ZStack {
                        Circle()
                            .foregroundColor(.black)
                            .frame(width: 39.23)
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
