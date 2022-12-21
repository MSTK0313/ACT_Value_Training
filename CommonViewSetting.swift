//
//  CommonViewSetting.swift
//  JACK
//
//  Created by Sato Masataka on 2022/12/17.
//

import Foundation
import SwiftUI

struct OK_ButtonStyle: ButtonStyle {
        
    @Environment(\.isEnabled) var isEnabled: Bool

    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding()
            .background(Color.white)
            .foregroundColor(self.isEnabled ? Color.blue : Color.gray)
            .font(.body.bold())
            .overlay(Capsule().stroke(self.isEnabled ? Color.blue : Color.gray, lineWidth: 2))
            .scaleEffect(configuration.isPressed ? 0.95 : 1)
    }
}

struct CheckBox: View {
    // 切り替える状態（初期値はfalse）
    @State private var isChecked = false
    @Binding var text: String
    
    // チェックボックスの表示
    var body: some View {
        HStack {
            Button(action: toggle) {
                if(isChecked) {
                    Image(systemName: "checkmark.square.fill")
                        .foregroundColor(.green)
                } else {
                    Image(systemName: "square")
                }
            }
            Text(text)
        }
    }
    
    // タップ時の状態の切り替え
    func toggle() -> Void {isChecked = !isChecked
        UIImpactFeedbackGenerator(style: .medium)
            .impactOccurred()
    }
}
