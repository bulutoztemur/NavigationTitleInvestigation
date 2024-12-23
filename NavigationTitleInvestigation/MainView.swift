//
//  MainView.swift
//  NavigationTitleInvestigation
//
//  Created by bulut.oztemur on 23.12.24.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView {
            ContentView()
                .tabItem {
                    Label("Play", systemImage: "play.circle")
                }

            SettingsView()
                .tabItem {
                    Label("Settings", systemImage: "gear")
                }
        }
    }
}

