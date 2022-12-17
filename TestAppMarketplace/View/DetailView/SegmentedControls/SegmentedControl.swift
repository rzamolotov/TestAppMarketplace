//
//  SegmentedControl.swift
//  TestAppMarketplace
//
//  Created by Роман Замолотов on 17.12.2022.
//

import SwiftUI

struct SegmentedControl: View {
    
    init() {
        UISegmentedControl.appearance().selectedSegmentTintColor = UIColor(colorOrange)
        UISegmentedControl.appearance().backgroundColor = UIColor(.white)
        UISegmentedControl.appearance().setTitleTextAttributes([.foregroundColor : UIColor(.white)], for: .selected)
        UISegmentedControl.appearance().setTitleTextAttributes([.foregroundColor : UIColor(buttonGray)], for: .reserved)
    }
    @State private var defaultCategory = "Shop"
    var colors = ["Shop", "Deteails", "Features"]
    
    var body: some View {

        HStack {
            Picker("Choise", selection: $defaultCategory) {
                ForEach(colors, id: \.self) {
                    Text($0)
                }
            }
            .pickerStyle(SegmentedPickerStyle())
        }
    }
}

struct SegmentedControl_Previews: PreviewProvider {
    static var previews: some View {
        SegmentedControl()
    }
}
