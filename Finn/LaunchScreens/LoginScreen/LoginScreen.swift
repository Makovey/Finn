//
//  LoginScreen.swift
//  Finn
//
//  Created by MAKOVEY Vladislav on 09.06.2024.
//

import SwiftUI

struct LoginScreen: View {
    @State private var text: String = ""

    var body: some View {
        ZStack {
            Color.greenPrimaryStatic.ignoresSafeArea()
            
            VStack {
                Text("Welcome")
                    .textTitleStyle()

                ContainerView {
                    VStack(spacing: 25) {
                        VStack(spacing: 10) {
                            Text("Username or email")
                                .font(.system(type: .medium, size: .regular))
                                .foregroundStyle(Color.greenSecondaryReverse)

                            TextField("example@example.com", text: $text)
                                .frame(width: 290, height: 40)
                                .padding(.horizontal, 30)
                                .background(Color.lightGreenStatic)
                                .foregroundStyle(Color.secondaryDarkGreenStatic)
                                .font(.system(size: .regular))
                                .clipShape(.capsule)
                        }

                        VStack {
                            Text("Password")
                                .font(.system(type: .medium, size: .regular))
                                .foregroundStyle(Color.greenSecondaryReverse)

                            TextField("123456", text: $text)
                                .frame(width: 290, height: 40)
                                .padding(.horizontal, 30)
                                .background(Color.lightGreenStatic)
                                .foregroundStyle(Color.secondaryDarkGreenStatic)
                                .font(.system(size: .regular))
                                .clipShape(.capsule)
                        }
                    }
                }
            }
        }

    }
}

#Preview {
    LoginScreen()
}
