//
//  ContentView.swift
//  lab2_swift_mm
//
//  Created by student on 27/04/2024.
//

import SwiftUI

struct ContentView: View {
    
    
    let emojiArray = ["😁", "😁", "😍", "😍", "😛", "😛", "😎", "😎", "🙁", "🙁", "🤯", "🤯"]
    let emojiArray2 = ["😍", "😍", "😝", "😝", "😛", "😛", "😇", "😇", "😎", "😎", "😡", "😡"]
    let emojiArray3 = ["😡", "😡", "🙁", "🙁", "😱", "😱", "🤯", "🤯", "😁", "😁", "😍", "😍"]
    
    @State var cardCounter = 8
    @State var themeColor: Color = .blue
    @State var selectedEmojiArr = ["😁", "😁", "😍", "😍", "😛", "😛", "😎", "😎", "🙁", "🙁", "🤯", "🤯"]
    
    var body: some View {
        VStack {
            Text("Memo").font(.largeTitle)
            ScrollView{
                cardDisplay
            }
        }.padding(20)
        HStack(alignment: .bottom){
            /*removeCards.padding(10)
            Spacer()
            addCards.padding(10)*/
            themeButtons
        }
    }
    
    
    var cardDisplay: some View {
        LazyVGrid(columns: [GridItem(.adaptive(minimum: 120))], content: {
            ForEach(0..<cardCounter, id:\.self){ index in
                CardView(emoji: selectedEmojiArr[index]).aspectRatio(2/3, contentMode: .fit)
            }
        }).foregroundColor(themeColor).aspectRatio(CGSize(width: 2, height: 3),contentMode: .fill)
    }
    
    var themeButtons : some View{
        HStack{
            ThemeChangerView(themeColor: Color.blue, themeEmojiArray: emojiArray, symbol: "face.smiling", themeName: "Motyw 1", colorRef: $themeColor, emojiArrayRef: $selectedEmojiArr)
            Spacer()
            ThemeChangerView(themeColor: Color.red, themeEmojiArray: emojiArray2, symbol: "car", themeName: "Motyw 2", colorRef: $themeColor, emojiArrayRef: $selectedEmojiArr)
            Spacer()
            ThemeChangerView(themeColor: Color.green, themeEmojiArray: emojiArray3, symbol: "cross", themeName: "Motyw 3", colorRef: $themeColor, emojiArrayRef: $selectedEmojiArr)
        }
    }
    
    /*func adjustCardNumber(by offset: Int, symbol: String) -> some View {
        let isDisabled = cardCounter + offset > emojiArray.count || cardCounter + offset < 2
        return Button(action: {cardCounter += offset}, label: {
            Image(systemName: symbol)
        }).disabled(isDisabled)
    }
    
    var removeCards: some View{
        return adjustCardNumber(by: -2, symbol: "minus.square")
        }
    var addCards: some View{
        return adjustCardNumber(by: 2, symbol:"plus.square")
        }
    */
}




#Preview {
    ContentView()
}
