//
//  NoStructalIdentityView.swift
//  demystify-swiftui
//
//  Created by zumin you on 2023/09/13.
//

import SwiftUI

struct NoStructalIdentityView: View {
    @State private var isActive = false
    
    var body: some View {
        VStack {
            if isActive {
                EmojiView(emojiInfo: Emoji(myEmoji: "⭐️"))
                    .padding(30)
                    .background(.yellow)
            } else {
                EmojiView(emojiInfo: Emoji(myEmoji: "⭐️"))
                    .padding(10)
                    .background(.red)
            }
            
            Button {
                withAnimation {
                    isActive.toggle()
                }
            } label: {
                Text("Active 상태 변경")
            }
            .buttonStyle(.bordered)

        }
        .padding()
    }
}

struct NoStructalIdentityView_Previews: PreviewProvider {
    static var previews: some View {
        NoStructalIdentityView()
    }
}
