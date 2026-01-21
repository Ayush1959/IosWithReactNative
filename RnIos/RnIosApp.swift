//
//  RnIosApp.swift
//  RnIos
//
//  Created by Ayush T on 21/01/26.
//

import SwiftUI
import CoreText

private func registerCustomFonts() {
    guard let fontUrl = Bundle.main.url(forResource: "RubikStorm-Regular", withExtension: "ttf") else {
        print("RubikStorm-Regular.ttf not found in main bundle.")
        return
    }

    var error: Unmanaged<CFError>?
    let success = CTFontManagerRegisterFontsForURL(fontUrl as CFURL, .process, &error)

    if !success, let error = error?.takeRetainedValue() {
        print("Failed to register RubikStorm-Regular.ttf: \(error)")
    }
}

@main
struct RnIosApp: App {
    init() {
        registerCustomFonts()
    }

    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
