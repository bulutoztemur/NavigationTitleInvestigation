//
//  SettingsView.swift
//  NavigationTitleInvestigation
//
//  Created by bulut.oztemur on 23.12.24.
//


import StoreKit
import SwiftUI

struct SettingsView: View {
    @AppStorage("isDarkMode") private var isDarkMode = false
    @AppStorage("selectedLanguage") private var selectedLanguage: Language = Language.defaultValue
    
    var body: some View {
        NavigationStack {
            VStack(content: {
                Form {
                    Section(header: Text("Appearance")) {
                        Toggle(isOn: $isDarkMode) {
                            Text("Dark Mode")
                        }
                    }
                    
                    Section(header: Text("Language")) {
                        Picker("Language", selection: $selectedLanguage) {
                            ForEach(Array(Language.allCases), id: \ .self) { language in
                                Text("\(flag(for: language.flagId)) " + language.languageString)
                            }
                        }
                    }
                }
            })
            .navigationTitle("Settings")
        }
    }
    
    func flag(for countryCode: String) -> String {
        countryCode.uppercased().unicodeScalars.compactMap {
            UnicodeScalar(127397 + $0.value)
        }.map { String($0) }.joined()
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}

