//
//  LoginScreen.swift
//  Finn
//
//  Created by MAKOVEY Vladislav on 09.06.2024.
//

import SwiftUI

struct LoginScreen: View {
    enum Constant {
        static let extraPadding: CGFloat = 60
        static let standardPadding: CGFloat = 25
        static let smallPadding: CGFloat = 15
        static let minPadding: CGFloat = 5
    }

    @State private var username: String = ""
    @State private var password: String = ""

    var body: some View {
        ZStack {
            Color.greenPrimaryStatic.ignoresSafeArea()

            VStack {
                Text("Welcome")
                    .textTitleStyle()

                ContainerView {
                    ScrollView {
                        VStack(spacing: Constant.standardPadding) {
                            LabeledTextField(
                                text: $username,
                                label: "Username or email",
                                placeholder: "example@example.com"
                            )

                            LabeledTextField(
                                text: $password,
                                label: "Password",
                                placeholder: "●●●●●●●●",
                                isSecured: true
                            )
                        }
                        .padding(.bottom, Constant.extraPadding)

                        buttonBlockView
                        .padding(.bottom, Constant.standardPadding)

                        VStack(spacing: Constant.standardPadding) {
                            faceIdButtonView
                            authBlockView
                            labeledSignUpButton
                        }
                    }
                    .padding(.top, Constant.standardPadding)
                }
            }
        }
    }

    private var buttonBlockView: some View {
        VStack(spacing: Constant.smallPadding) {
            Button("Log in") {
            }
            .buttonStyle(PrimaryButton(style: .dark))

            Button("Forgot Password?") {
            }
            .buttonStyle(GhostButton(size: .regular, type: .semiBold))

            Button("Sign Up") {
            }
            .buttonStyle(PrimaryButton(style: .light))
        }
    }

    private var faceIdButtonView: some View {
        Button(action: {
        }, label: {
            HStack(spacing: Constant.minPadding) {
                Text("Use")
                Text("FaceID").foregroundStyle(Color.blue)
                Text("To Access")
            }
        }).buttonStyle(GhostButton(size: .regular, type: .semiBold))
    }

    private var authBlockView: some View {
        VStack(spacing: Constant.smallPadding) {
            Text("or sign up with")
                .font(.system(type: .light, size: .regular))

            HStack {
                Button(action: {}, label: {
                    Image(.facebook).tint(Color.primary)
                })

                Button(action: {}, label: {
                    Image(.google).tint(Color.primary)
                })
            }
        }
    }

    private var labeledSignUpButton: some View {
        Button(action: {
        }, label: {
            HStack(spacing: Constant.minPadding) {
                Text("Don’t have an account?")
                Text("Sign Up").foregroundStyle(Color.blue)
            }
        }).buttonStyle(GhostButton(size: .regular, type: .light))
    }
}

#Preview {
    LoginScreen()
}
