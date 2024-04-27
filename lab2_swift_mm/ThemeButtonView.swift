//
//  ThemeButtonView.swift
//  lab2_swift_mm
//
//  Created by student on 27/04/2024.
//

import SwiftUI

struct ThemeButtonView: View {
    var body: some View {
        HStack{
            Button(action: {}, label: {
                VStack{
                    Image(systemName: "smiley")
                    Text("Motyw 1")
                }
            })
            Button(action: {}, label: {
                VStack{
                    Image(systemName: "square.and.arrow.up")
                    Text("Motyw 2")
                }
            })
            Button(action: {}, label: {
                VStack{
                    Image(systemName: "smiley")
                    Text("Motyw 3")
                }
            })
        }
    }
}

#Preview {
    ThemeButtonView()
}
