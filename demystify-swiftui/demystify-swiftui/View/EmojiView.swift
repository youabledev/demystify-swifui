//
//  EmojiView.swift
//  demystify-swiftui
//
//  Created by zumin you on 2023/09/13.
//

import SwiftUI

struct EmojiView: View {
    let emojiInfo: Emoji
    
    var body: some View {
        VStack(spacing: 0) {
            Text("\(emojiInfo.myEmoji)")
                .fontWeight(.bold)
                .font(.system(size: 100))
        }
        .padding(10)
        .background(.gray.opacity(0.3))
        .cornerRadius(10)
    }
}

struct EmojiView_Previews: PreviewProvider {
    static var previews: some View {
        EmojiView(emojiInfo: Emoji(myEmoji: "🐮"))
    }
}
