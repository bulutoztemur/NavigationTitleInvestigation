//
//  ContentView.swift
//  NavigationTitleInvestigation
//
//  Created by bulut.oztemur on 23.12.24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            VStack {
                Image(systemName: "globe")
                    .imageScale(.large)
                    .foregroundStyle(.tint)
                Text("Hello, world!")
                
                NavigationLink(destination: DetailView()) {
                    Text("Go to Detail View")
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(8)
                }
            }
            .navigationTitle("Main")
        }
    }
}

#Preview {
    ContentView()
}
