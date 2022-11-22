//
//  ContentView.swift
//  stanford-test
//
//  Created by Ed on 11/18/22.
//

import SwiftUI

struct ContentView: View {
    var emojis = ["🚌","🚎","🚗","🚕","🏎️","🚓","🚑","🚒"]
    @ State var emojiCount: Int = 4
    
    var body: some View {
        
        VStack {
            ScrollView {
                LazyVGrid(columns: [GridItem(.adaptive(minimum: 100))]) {
                    ForEach(emojis[0..<emojiCount], id: \.self, content: { emoji in
                        CardView(content: emoji).aspectRatio(2/3, contentMode: .fit)
                    })
                }
            }
            .foregroundColor(.red) 
        }
        .padding(.horizontal)
        
    }
}

struct CardView: View {
    var content: String
    @State var isFaceUp: Bool = true
    let shape = RoundedRectangle(cornerRadius: 20)
    var body: some View {
        ZStack {
            if isFaceUp {
                shape.fill().foregroundColor(.white)
                shape.strokeBorder(lineWidth: 3)
                Text(content)
            } else {
                shape.fill()
            }
        }.onTapGesture {
            isFaceUp = !isFaceUp
        }
        .font(.largeTitle)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().preferredColorScheme(.light)
        ContentView().preferredColorScheme(.dark)
    }
}
