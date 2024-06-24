//
//  LabeledTextField.swift
//  Finn
//
//  Created by MAKOVEY Vladislav on 24.06.2024.
//

import SwiftUI

struct LabeledTextField: View {
    private enum Constant {
        static let paddingBetween: CGFloat = 10
        static let labelPadding: CGFloat = 35
    }
    
    @Binding var text: String
    var label: String
    var placeholder: String
    var isSecured = false
    @State private var isSecuredState: Bool = true

    var body: some View {
        VStack(spacing: Constant.paddingBetween) {
            HStack {
                Text(label)
                    .font(.system(type: .medium, size: .regular))
                    .foregroundStyle(Color.greenSecondaryReverse)
                    .padding(.horizontal, Constant.labelPadding)

                Spacer()
            }

            if isSecured {
                ZStack(alignment: .trailing) {
                    Group {
                        if isSecuredState {
                            SecureField(
                                "",
                                text: $text,
                                prompt:
                                    Text(placeholder)
                                    .foregroundStyle(Color.darkGreenStaticWithOpacity)
                            )
                            .standardTextField()
                        } else {
                            TextField(
                                "",
                                text: $text,
                                prompt:
                                    Text(placeholder)
                                    .foregroundStyle(Color.darkGreenStaticWithOpacity)
                            )
                            .standardTextField()
                        }
                    }

                    Button(action: {
                        isSecuredState.toggle()
                    }) {
                        Image(systemName: isSecuredState ? "eye.slash.circle.fill" : "eye.circle.fill")
                            .tint(Color.darkGreenStatic)
                    }
                    .padding(.horizontal, 15)
                }
            } else {
                TextField(
                    "",
                    text: $text,
                    prompt:
                        Text(placeholder)
                        .foregroundStyle(Color.darkGreenStaticWithOpacity)
                )
                .standardTextField()
            }
        }
    }
}

private struct StandardFieldStyle: ViewModifier {
    private enum Constant {
        static let width: CGFloat = 290
        static let height: CGFloat = 40
        static let textPadding: CGFloat = 30
    }

    func body(content: Content) -> some View {
        content
            .frame(width: Constant.width, height: Constant.height)
            .padding(.horizontal, Constant.textPadding)
            .background(Color.lightGreenStatic)
            .foregroundStyle(Color.secondaryDarkGreenStatic)
            .font(.system(size: .regular))
            .clipShape(.capsule)
    }
}

private extension View {
    func standardTextField() -> some View {
        modifier(StandardFieldStyle())
    }
}

#Preview {
    Group {
        LabeledTextField(
            text: .constant(""),
            label: "Username",
            placeholder: "Placeholder"
        )

        LabeledTextField(
            text: .constant(""),
            label: "Password",
            placeholder: "●●●●●",
            isSecured: true
        )
    }
}
