//
//  IEmojiStackView.swift
//  demystify-swiftui
//
//  Created by zumin you on 2023/09/13.
//

import SwiftUI

struct IEmojiStackView: View {
    @State var emojis: [IEmoji]
    
    var body: some View {
        VStack {
            ScrollView {
                VStack(spacing: 10) {
                    ForEach(emojis, id: \.id) { emoji in
                        IEmojiView(emojiInfo: emoji)
                    }
                }
                .padding(10)
                .border(.black)
                .padding(.bottom, 32)
            } //: ScrollView
            
            Button {
                withAnimation {
                    self.emojis.append(IEmoji(myEmoji: "✅"))
                }
            } label: {
                Text("이모지 추가하기")
            }
            .buttonStyle(.bordered)
        } //: VStack
    }
}

struct IEmojiStackView_Previews: PreviewProvider {
    static var previews: some View {
        IEmojiStackView(emojis: [
            IEmoji(myEmoji: "✅"),
            IEmoji(myEmoji: "🔗"),
            IEmoji(myEmoji: "✨"),
        ])
    }
}
