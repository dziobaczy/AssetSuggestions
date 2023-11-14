//
//  JournalingAppDemoApp.swift
//  JournalingAppDemo
//
//  Created by Piotr Szadkowski on 30/10/2023.
//

import SwiftUI

enum AppRoute {
    case journaling
}

@main
struct JournalingAppDemoApp: App {
    @StateObject private var viewModel = JournalingViewModel()

    var body: some Scene {
        WindowGroup {
            NavigationStack {
                VStack {
                    NavigationLink(value: AppRoute.journaling) {
                        Text("Open Journal")
                            .buttonStyle(.borderedProminent)
                    }
                    .padding(.bottom, 36)
                    if !viewModel.suggestedAssets.isEmpty {
                        Text("Selected Assets")
                            .font(.headline)
                            .bold()
                        ForEach(viewModel.suggestedAssets, id: \.self) { asset in
                            Text(asset.title)
                        }
                    }
                }
                .navigationTitle("My Journal")
                .navigationDestination(for: AppRoute.self) { route in
                    switch route {
                    case .journaling:
                    #if canImport(JournalingSuggestions)
                    JournalingView(viewModel: viewModel)
                    #else
                    TestingJournalingView(viewModel: viewModel)
                    #endif
                    }
                }
                .buttonStyle(.borderedProminent)
            }
        }
    }
}
