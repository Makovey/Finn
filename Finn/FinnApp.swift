//
//  FinnApp.swift
//  Finn
//
//  Created by MAKOVEY Vladislav on 05.06.2024.
//

import SwiftUI

@main
struct FinnApp: App {
    var body: some Scene {
        WindowGroup {
            LaunchScreen()
                .onAppear {
                    UINavigationBar.appearance().backIndicatorImage = .backArrow
                    UINavigationBar.appearance().backIndicatorTransitionMaskImage = .backArrow
                    UIBarButtonItem.appearance().setTitleTextAttributes([
                        NSAttributedString.Key.foregroundColor: UIColor.clear
                    ], for: .normal)
                    UIBarButtonItem.appearance().setTitleTextAttributes([
                        NSAttributedString.Key.foregroundColor: UIColor.clear
                    ], for: .highlighted)
                }
        }
    }
}
