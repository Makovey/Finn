//
//  Font+.swift
//  Finn
//
//  Created by MAKOVEY Vladislav on 05.06.2024.
//

import SwiftUI

extension Font {
    static func system(type: FontType = .regular, size: FontSize) -> Font {
        self.custom(type.rawValue, size: size.rawValue)
    }
}

enum FontSize: CGFloat {
    /// 52
    case veryBig = 52
    /// 22
    case title = 22
    /// 14
    case regular = 14
}

enum FontType: String {
    case bold = "Poppins-Bold"
    case thin = "Poppins-Thin"
    case semiBold = "Poppins-SemiBold"
    case medium = "Poppins-Medium"
    case regular = "Poppins-Regular"
    case light = "Poppins-Light"
}
