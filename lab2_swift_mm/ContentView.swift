//
//  ContentView.swift
//  lab2_swift_mm
//
//  Created by student on 27/04/2024.
//

import SwiftUI

struct ContentView: View {
    
    let emojiArray = ["😁", "😍", "😝", "😛", "😇", "😎", "😡", "🙁", "😱", "🤯", "😁", "😍", "😝", "😛", "😇", "😎", "😡", "🙁", "😱","😁", "😍", "😝", "😛", "😇", "😎", "😡", "🙁", "😱", "🤯"]
    @State var cardCounter = 4
    
    var body: some View {
        VStack {
            Text("Memo").font(.largeTitle)
            ScrollView{
                cardDisplay
            }
        }.padding(20)
        HStack(alignment: .bottom){
            removeCards.padding(10)
            Spacer()
            addCards.padding(10)
        }
        //themeChanger
    }
    
    
    var cardDisplay: some View {
        LazyVGrid(columns: [GridItem(.adaptive(minimum: 120))], content: {
            ForEach(0..<cardCounter, id:\.self){ index in
                CardView(emoji: emojiArray[index]).aspectRatio(2/3, contentMode: .fit)
            }
        }).foregroundColor(.blue).aspectRatio(CGSize(width: 2, height: 3),contentMode: .fill)
    }
    
    /*var themeChanger: some View {
        
    }
    
    func shuffleCards(){
        
    }*/
    
    func adjustCardNumber(by offset: Int, symbol: String) -> some View {
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
    
}

#Preview {
    ContentView()
}


