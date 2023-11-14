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
    var body: some Scene {
        WindowGroup {
            NavigationStack {
                VStack {
                    NavigationLink(value: AppRoute.journaling) {
                        Text("Open Journal")
                            .buttonStyle(.borderedProminent)
                    }
                }
                .navigationTitle("My Journal")
                .navigationDestination(for: AppRoute.self) { route in
                    switch route {
                    case .journaling:
                    #if canImport(JournalingSuggestions)
                    JournalingView()
                    #else
                    Text("Panie zupdatuj pan")
                    #endif
                    }
                }
                .buttonStyle(.borderedProminent)
            }
        }
    }
}
