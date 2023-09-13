//
//  StructalIdentityView.swift
//  demystify-swiftui
//
//  Created by zumin you on 2023/09/13.
//

import SwiftUI

struct StructalIdentityView: View {
    @State private var isActive = false
    
    var body: some View {
        VStack {
            EmojiView(emojiInfo: Emoji(myEmoji: "⭐️"))
                .padding(isActive ? 30 : 10)
                .background(isActive ? .yellow : .red)
            
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

struct StructalIdentityView_Previews: PreviewProvider {
    static var previews: some View {
        StructalIdentityView()
    }
}
