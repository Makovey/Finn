//
//  TextTitle.swift
//  Finn
//
//  Created by MAKOVEY Vladislav on 16.06.2024.
//

import SwiftUI

struct TextTitle: ViewModifier {
    private enum Constant {
        static let titlePadding: CGFloat = 45
    }

    func body(content: Content) -> some View {
        content
            .font(.system(type: .semiBold, size: .big))
            .multilineTextAlignment(.center)
            .foregroundStyle(Color.greenSecondaryReverse)
            .padding(.vertical, Constant.titlePadding)
    }
}

extension View {
    func textTitleStyle() -> some View {
        modifier(TextTitle())
    }
}
