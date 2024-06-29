//
//  GhostButton.swift
//  Finn
//
//  Created by MAKOVEY Vladislav on 09.06.2024.
//

import SwiftUI

struct GhostButton: ButtonStyle {
    var size: FontSize
    var type: FontType

    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .font(.system(type: type, size: size))
            .foregroundStyle(Color.darkSecondary)
            .scaleEffect(configuration.isPressed ? 0.95 : 1.0)
            .opacity(configuration.isPressed ? 0.6 : 1)
    }
}
