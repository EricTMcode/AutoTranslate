//
//  TranslationModels.swift
//  AutoTranslate
//
//  Created by Eric on 12/02/2025.
//

import Foundation
import SwiftUI
import UniformTypeIdentifiers

extension UTType {
    static var xcStrings = UTType("com.apple.xcode.xcstrings")!
}

struct TranslationUnit: Codable {
    var state = "translated"
    var value: String
}

struct TranslationLanguage: Codable {
    var stringUnit: TranslationUnit
}

struct TranslationString: Codable {
    var localizations = [String: TranslationLanguage]()
}
