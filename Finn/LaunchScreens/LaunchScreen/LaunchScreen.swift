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

    @StateObject private var router = LaunchScreenRouter()
    @State private var isShown = false

    var body: some View {
        NavigationStack(path: $router.navStack) {
            ZStack {
                Color.greenSecondary.ignoresSafeArea()

                VStack(spacing: .zero) {
                    logoDescriptionView
                    buttonBlockView
                }
                .animation(.easeInOut(duration: Constant.animationDuration), value: isShown)
            }
            .onAppear {
                DispatchQueue.main.async {
                    self.isShown = true
                }
            }
            .navigationDestination(for: LaunchScreenRouter.LaunchRoute.self) {
                switch $0 {
                case .login:
                    LoginScreen()
                        .navigationBarBackButtonHidden()
                case .signUp:
                    EmptyView()
                case .restorePassword:
                    EmptyView()
                }
            }
        }
    }

    private var logoDescriptionView: some View {
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
    }

    private var buttonBlockView: some View {
        VStack(spacing: 12) {
            Button("Log in") {
                router.route(to: .login)
            }
            .buttonStyle(PrimaryButton(style: .dark))

            Button("Sign Up") {
                router.route(to: .signUp)
            }
            .buttonStyle(PrimaryButton(style: .light))

            Button("Forgot Password?") {
                router.route(to: .restorePassword)
            }
            .buttonStyle(GhostButton(size: .regular, type: .semiBold))
        }
        .offset(y: isShown ? Constant.mainOffset : .zero)
        .opacity(isShown ? 1 : .zero)
    }
}

#Preview {
    LaunchScreen()
}
