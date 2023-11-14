//
//  JournalingView.swift
//  JournalingAppDemo
//
//  Created by Piotr Szadkowski on 30/10/2023.
//

import SwiftUI
@MainActor
final class JournalingViewModel: ObservableObject {
    @Published private(set) var suggestedAssets: [SuggestedAsset] = []
    @Published private(set) var errorMessage: String?

    func added(_ assets: [SuggestedAsset]) {
        self.suggestedAssets = assets
    }
}

#if canImport(JournalingSuggestions)
import SwiftUI
import JournalingSuggestions

private extension JournalingViewModel {
    func add(_ suggestion: JournalingSuggestion) async {
        do {
            suggestedAssets = try await SuggestedAsset.assets(from: suggestion)
        } catch {
            errorMessage = error.localizedDescription
        }
    }
}

struct JournalingView: View {
    @ObservedObject var viewModel: JournalingViewModel

    var body: some View {
        VStack {
            JournalingSuggestionsPicker {
                Text("Proszu panie system daj mnie cos do opisania")
                    .padding()
                    .foregroundStyle(.white)
                    .background(RoundedRectangle(cornerRadius: 12).foregroundStyle(.purple))
            } onCompletion: { suggestion in
                Task { @MainActor in
                    await viewModel.add(suggestion)
                }
            }

        }
    }
}

struct ExampleView: View {
    @State var suggestionPhotos = [JournalingSuggestion.Photo]()
    @State var suggestionTitle: String? = nil
    let buttonTitle = "Show my personal events"

    var body: some View {
        VStack {
            Menu("Menu Biedy") {
//                Button("Jebac biede", action: { print("bida") })
                JournalingSuggestionsPicker {
                    Text("Co jest")
                } onCompletion: { suggestion in
                    // Parse the suggestion details.
                    suggestionTitle = suggestion.title
                    suggestionPhotos = await suggestion.content(forType: JournalingSuggestion.Photo.self)
                }
            }
        }
    }
}
#endif
