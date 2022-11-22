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
            Spacer()
            HStack {
                remove
                Spacer()
                add
            }
            .font(.largeTitle)
        }
        .padding(.horizontal)
        
    }
    
    var add: some View  {
        Button(action: {
            if emojiCount < emojis.count {
                emojiCount += 1
            }
        }, label: {
                Image(systemName: "plus.circle")
        })
    }
    
    var remove: some View  {
        Button(action: {
            if emojiCount > 1 {
                emojiCount -= 1
            }
        }, label: {
            Image(systemName: "minus.circle")
        })
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
