//
//  ContainerView.swift
//  Finn
//
//  Created by MAKOVEY Vladislav on 09.06.2024.
//

import SwiftUI

struct ContainerView<Content: View>: View {
    var content: Content

    init(@ViewBuilder content: () -> Content) {
        self.content = content()
    }

    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 35.0)
                .foregroundColor(Color.greenSecondary)
                .ignoresSafeArea(edges: .bottom)
            content
        }
    }
}

#Preview {
    ContainerView { }
}
