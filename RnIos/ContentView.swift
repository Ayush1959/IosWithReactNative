//
//  ContentView.swift
//  RnIos
//
//  Created by Ayush T on 21/01/26.
//

import SwiftUI
import UIKit

struct ReactNativeViewControllerRepresentable: UIViewControllerRepresentable {
    func makeUIViewController(context: Context) -> ReactViewController {
        ReactViewController()
    }

    func updateUIViewController(_ uiViewController: ReactViewController, context: Context) {
        // No-op
    }
}

struct ContentView: View {
    @State private var showReactNative = false

    var body: some View {
        VStack(spacing: 24) {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)

            Text("SwiftUI host app")

            Button("Open React Native") {
                showReactNative = true
            }
        }
        .padding()
        .sheet(isPresented: $showReactNative) {
            ReactNativeViewControllerRepresentable()
                .ignoresSafeArea()
        }
    }
}

#Preview {
    ContentView()
}
