//
//  MemoryGame.swift
//  stanford-test
//
//  Created by Ed on 11/22/22.
//

import Foundation

struct MemoryGame<CardContent> {
    private(set) var cards: Array<Card>
    
    func choose(_ card: Card) {
         
    }
    
    init(numberOfPairsOfCards: Int) {
        cards = Array<Card>()
        // add numberOfPairsOfCards x 2 cards to cards array
    }
    
    struct Card {
        var isFaceUp: Bool
        var matched: Bool
        var content: CardContent
    }
}
