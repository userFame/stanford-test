//
//  stanford_testApp.swift
//  stanford-test
//
//  Created by Ed on 11/18/22.
//

import SwiftUI

@main
struct stanford_testApp: App {
    let game = EmojiMemoryGame()
    
    var body: some Scene {
        WindowGroup {
            ContentView(viewModel: game)
        }
    }
}
