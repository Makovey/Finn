//
//  LaunchScreenRouter.swift
//  Finn
//
//  Created by MAKOVEY Vladislav on 09.06.2024.
//

import SwiftUI

final class LaunchScreenRouter: ObservableObject {
    enum LaunchRoute: Hashable {
        case login, signUp, restorePassword
    }

    @Published var navStack = NavigationPath()

    func route(to type: LaunchRoute) {
        switch type {
        case .login:
            navStack.append(LaunchRoute.login)
        case .signUp:
            navStack.append(LaunchRoute.signUp)
        case .restorePassword:
            navStack.append(LaunchRoute.restorePassword)
        }
    }
}
