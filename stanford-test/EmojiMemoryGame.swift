//
//  EmojiMemoryGame.swift
//  stanford-test
//
//  Created by Ed on 11/22/22.
//

import SwiftUI

class EmojiMemoryGame {
    private(set) var model: MemoryGame<String> = MemoryGame<String>(numberOfPairsOfCards: 4)
    
    var cards: Array<MemoryGame<String>.Card> {
        return model.cards
    }
}
 
