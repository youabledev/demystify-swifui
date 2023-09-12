//
//  EmojiStackView.swift
//  demystify-swiftui
//
//  Created by zumin you on 2023/09/13.
//

import SwiftUI

struct EmojiStackView: View {
    @State var emojis: [Emoji]
    
    var body: some View {
        VStack {
            ScrollView {
                VStack(spacing: 10) {
                    ForEach(emojis, id: \.myEmoji) { emoji in
                        EmojiView(emojiInfo: emoji)
                    }
                }
                .padding(10)
                .border(.black)
                .padding(.bottom, 32)
            } //: ScrollView
            
            Button {
                withAnimation {
                    self.emojis.append(Emoji(myEmoji: "✅"))
                }
            } label: {
                Text("이모지 추가하기")
            }
            .buttonStyle(.bordered)
        } //: VStack
    }
}

struct EmojiStackView_Previews: PreviewProvider {
    static var previews: some View {
        EmojiStackView(emojis: [
            Emoji(myEmoji: "✅"),
            Emoji(myEmoji: "🔗"),
            Emoji(myEmoji: "✨"),
        ])
    }
}
