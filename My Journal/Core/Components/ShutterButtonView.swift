//
//  ShutterButtonView.swift
//  My Journal
//
//  Created by Никита Кисляков on 15.10.2024.
//

import SwiftUI

struct ShutterButtonView: View {
    
    var action: () -> Void
    
    var body: some View {
        ZStack {
            Circle()
                .stroke(lineWidth: 4)
                .fill(.white)
            Button {
                action()
            } label: {
                Circle()
                    .inset(by: 4 * 1.2)
                    .fill(.white)
            }
            .buttonStyle(ShutterButtonStyle())
        }
        .aspectRatio(1.0, contentMode: .fit)
        .frame(width: 68)
    }
}

struct ShutterButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .scaleEffect(configuration.isPressed ? 0.85 : 1.0)
            .animation(.easeOut(duration: 0.15), value: configuration.isPressed)
    }
}

#Preview {
    ShutterButtonView() {
        
    }
        .colorScheme(.dark)
}
