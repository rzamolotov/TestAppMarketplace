//
//  MemorySegmentedControlView.swift
//  TestAppMarketplace
//
//  Created by Роман Замолотов on 17.12.2022.
//

import SwiftUI

struct MemorySegmentedControlView: View {
    
    //MARK: - Property
    @State private var selectedIndex = 0
    private var titles = ["128 GB", "256 GB"]
    @State private var frames = Array<CGRect>(repeating: .zero, count: 3)
    
    //MARK: - Body
    var body: some View {
        VStack {
            ZStack {
                HStack(spacing: 10) {
                    ForEach(self.titles.indices, id: \.self) { index in
                        Button(action: { self.selectedIndex = index }) {
                            if selectedIndex == index
                            { Text(self.titles[index])
                                    .font(.custom("MarkPro-Bold", size: 13))
                                    .foregroundColor(.white)
                            } else {
                                Text(self.titles[index])
                                    .font(.custom("MarkPro-Bold", size: 13))
                                    .foregroundColor(buttonGray)
                            }
                        }
                        .padding(EdgeInsets(top: 16, leading: 20, bottom: 16, trailing: 20))
                        .background(
                            GeometryReader { geo in
                                Color.clear.onAppear { self.setFrame(index: index, frame: geo.frame(in: .global))
                                    
                                }
                            }
                        )
                    }
                }
                .background(
                    Rectangle()
                        .foregroundColor(colorOrange)
                        .frame(width: self.frames[self.selectedIndex].width,
                               height: 30.87, alignment: .topLeading)
                        .cornerRadius(10)
                        .offset(x: self.frames[self.selectedIndex].minX - self.frames[0].minX)
                    , alignment: .leading
                )
            }
        }
    }
    
    func setFrame(index: Int, frame: CGRect) {
        self.frames[index] = frame
    }
}

//MARK: - Preview
struct MemorySegmentedControlView_Previews: PreviewProvider {
    static var previews: some View {
        MemorySegmentedControlView()
    }
}
