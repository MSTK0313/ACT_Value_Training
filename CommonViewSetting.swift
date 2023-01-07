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
    @State private var isChecked = false
    @Binding var text: String
    
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
    
    func toggle() -> Void {isChecked = !isChecked
        UIImpactFeedbackGenerator(style: .medium)
            .impactOccurred()
    }
}
