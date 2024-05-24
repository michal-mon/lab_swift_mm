import SwiftUI

//
//  ThemeChangerView.swift
//  lab2_swift_mm
//
//  Created by student on 24/05/2024.
//

struct ThemeChangerView: View {
    
    var themeColor: Color
    @State var themeEmojiArray: Array<String>
    var symbol: String
    var themeName: String
    @Binding var colorRef: Color
    @Binding var emojiArrayRef: Array<String>
    
    var body: some View {
        Button {
            colorRef = themeColor;
            emojiArrayRef = themeEmojiArray.shuffled()
        } label: {
            VStack{
                Image(systemName: symbol)
                Text(themeName)
            }.foregroundColor(themeColor)
        }
    }
}

//#Preview {
//  ThemeChangerView()
//}

