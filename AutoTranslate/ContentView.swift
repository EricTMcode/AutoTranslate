//
//  ContentView.swift
//  AutoTranslate
//
//  Created by Eric on 11/02/2025.
//

import SwiftUI
import Translation

struct ContentView: View {
    @State private var input = "Hello, world!"

    @State private var configuration = TranslationSession.Configuration(
        source: Locale.Language(identifier: "en"),
        target: Locale.Language(identifier: "es")
        )

    var body: some View {
        TextEditor(text: $input)
            .font(.largeTitle)
            .onChange(of: input) {
                configuration.invalidate()
            }
            .translationTask(configuration, action: translate)
    }

    func translate(using session: TranslationSession) async {
        do {
            let result = try await session.translate(input)
            print(result.targetText)
        } catch {
            print(error.localizedDescription)
        }
    }
}

#Preview {
    ContentView()
}
