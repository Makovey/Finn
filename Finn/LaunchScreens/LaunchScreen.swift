//
//  LaunchScreen.swift
//  Finn
//
//  Created by MAKOVEY Vladislav on 05.06.2024.
//

import SwiftUI

struct LaunchScreen: View {
    private enum Constant {
        static let descriptionWidth:CGFloat = 236
        static let mainOffset: CGFloat = 25
        static let animationDuration = 1.5
    }

    @State private var isShown = false

    var body: some View {
        ZStack {
            Color.greenSecondary.ignoresSafeArea()

            VStack(spacing: .zero) {
                VStack(spacing: .zero) {
                    Image(.mainLogo)
                        .renderingMode(.template)
                        .foregroundStyle(Color.greenPrimaryStatic)

                    Text("Finn")
                        .font(.system(type: .semiBold, size: .veryBig))
                        .foregroundStyle(.greenPrimaryStatic)

                    Text("""
                    Lorem ipsum dolor sit amet, consectetur
                    adipiscing elit, sed do eiusmod.
                """)
                    .font(.system(type: .bold, size: .subtitle))
                    .foregroundStyle(Color.darkSecondary)
                    .multilineTextAlignment(.center)
                    .frame(width: Constant.descriptionWidth)
                    .opacity(isShown ? 1 : .zero)
                }
                .offset(y: isShown ? -Constant.mainOffset : .zero)

                VStack(spacing: 12) {
                    Button("Log in") {
                        
                    }
                    .buttonStyle(PrimaryButton(style: .dark))

                    Button("Sign Up") {

                    }
                    .buttonStyle(PrimaryButton(style: .light))

                    Button("Forgot Password?") {

                    }
                    .buttonStyle(GhostButton(size: .regular))
                }
                .offset(y: isShown ? Constant.mainOffset : .zero)
                .opacity(isShown ? 1 : .zero)
            }
            .animation(.easeInOut(duration: Constant.animationDuration), value: isShown)
        }
        .onAppear { isShown = true }
    }
}

#Preview {
    LaunchScreen()
}
