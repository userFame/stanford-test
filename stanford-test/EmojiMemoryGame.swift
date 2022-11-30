//
//  EmojiMemoryGame.swift
//  stanford-test
//
//  Created by Ed on 11/22/22.
//

import SwiftUI

//func makeCardContent(index: Int) -> String {
//    return "😀"
//}

class EmojiMemoryGame {
    static let emojis = ["🚌","🚎","🚗","🚕","🏎️","🚓","🚑","🚒"]
    
    static func createMemoryGame() -> MemoryGame<String> {
        MemoryGame<String>(numberOfPairsOfCards: 4) { pairIndex in
            emojis[pairIndex]
        }
    }
    
    private var model: MemoryGame<String> = createMemoryGame()

    var cards: Array<MemoryGame<String>.Card> {
        model.cards
    }
}
