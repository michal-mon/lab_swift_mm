//
//  CardView.swift
//  lab2_swift_mm
//
//  Created by student on 27/04/2024.
//

import SwiftUI


struct CardView: View {
    @State var isFaceUp: Bool = true
    var emoji: String
    let roundedRectangle = RoundedRectangle(cornerRadius: 12)
    var body: some View {
        ZStack{
            Group{
                roundedRectangle.fill(Color.white)
                roundedRectangle.strokeBorder(style:StrokeStyle(lineWidth: 2))
                Text(emoji).font(.largeTitle)
                    
            }
            .opacity(isFaceUp ? 0 : 1)
            roundedRectangle.opacity(isFaceUp ? 1 : 0)
        }
        .onTapGesture {
        isFaceUp.toggle()
    }
    }
}

#Preview {
    CardView(emoji: "😃")
}

                            
