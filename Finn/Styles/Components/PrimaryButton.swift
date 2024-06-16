//
//  PrimaryButton.swift
//  Finn
//
//  Created by MAKOVEY Vladislav on 06.06.2024.
//

import SwiftUI

struct PrimaryButton: ButtonStyle {
    enum Style {
        case dark, light
    }

    var style: Style

    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .frame(width: 210, height: 45)
            .font(.system(type: .semiBold, size: .paragraph))
            .background(style == .dark ? Color.greenPrimaryStatic : Color.lightGreenStatic)
            .foregroundStyle(style == .dark ? Color.darkGreenStatic : Color.secondaryDarkGreenStatic)
            .clipShape(.capsule)
            .scaleEffect(configuration.isPressed ? 0.95 : 1.0)
            .opacity(configuration.isPressed ? 0.6 : 1)
    }
}
