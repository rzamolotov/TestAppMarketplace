//
//  SearchItem.swift
//  TestAppMarketplace
//
//  Created by Роман Замолотов on 10.12.2022.
//

import SwiftUI

struct SearchItem: View {
    //MARK: - Property
    @State var text: String
    @FocusState private var nameIsFocused: Bool
    @State private var isEditing = false
    
    //MARK: - Body
    var body: some View {
        HStack {
            TextField("Search", text: $text)
                .padding(7)
                .padding(.horizontal, 25)
                .background(Color(.white))
                .cornerRadius(8)
                .padding(.horizontal, 10)
                .onTapGesture {
                    self.isEditing = true
                }
                .focused($nameIsFocused)
            
            if isEditing {
                Button(action: {
                    self.isEditing = false
                    self.text = text
                    nameIsFocused = false
                })
                {
                    Text("Cancel")
                }
                .padding(.trailing, 10)
                .transition(.move(edge: .trailing))
            }
            Button(action: { } ,
                   label: {
                VStack {
                    Image(systemName: "qrcode")
                        .frame(width: 34, height: 34)
                        .foregroundColor(.white)
                        .background(colorOrange)
                        .cornerRadius(50)
                }
            })
        }
    }
}

//MARK: - Preview
struct SearchItem_Previews: PreviewProvider {
    static var previews: some View {
        SearchItem(text: "")
    }
}
