//
//  LoginScreen.swift
//  Finn
//
//  Created by MAKOVEY Vladislav on 09.06.2024.
//

import SwiftUI

struct LoginScreen: View {
    enum Constant {
        static let standardPadding: CGFloat = 25
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
                }
            }
        }

    }
}

#Preview {
    LoginScreen()
}
