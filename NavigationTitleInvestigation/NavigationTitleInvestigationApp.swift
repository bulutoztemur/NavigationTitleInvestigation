//
//  NavigationTitleInvestigationApp.swift
//  NavigationTitleInvestigation
//
//  Created by bulut.oztemur on 23.12.24.
//

import SwiftUI

@main
struct NavigationTitleInvestigationApp: App {
    var body: some Scene {
        WindowGroup {
            MainView()
                .modifier(DarkModeViewModifier())
                .modifier(LanguageViewModifier())
        }
    }
}

enum Language: String, CaseIterable, Codable {
    static let defaultValue = Language(rawValue: Locale.current.language.languageCode?.identifier ?? "en") ?? .english
    
    case english = "en"
    case turkish = "tr"
    
    var languageString: String {
        switch self {
            case .english: return "English"
            case .turkish: return "Türkçe"
        }
    }
    
    var flagId: String {
        switch self {
            case .english: return "gb"
            case .turkish: return "tr"
        }
    }
}

struct LanguageViewModifier: ViewModifier {
    @AppStorage("selectedLanguage") var language: Language = Language.defaultValue

    public func body(content: Content) -> some View {
        return content
            .environment(\.locale, Locale(identifier: language.rawValue))
    }
}

struct DarkModeViewModifier: ViewModifier {
    @AppStorage("isDarkMode") var isDarkMode: Bool = false
    
    public func body(content: Content) -> some View {
        content
            .preferredColorScheme(isDarkMode ? .dark : .light)
    }
}
