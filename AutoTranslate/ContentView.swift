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

    var body: some View {
        TextEditor(text: $input)
            .font(.largeTitle)
    }
}

#Preview {
    ContentView()
}
