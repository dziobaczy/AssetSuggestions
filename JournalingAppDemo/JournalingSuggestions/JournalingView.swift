//
//  JournalingView.swift
//  JournalingAppDemo
//
//  Created by Piotr Szadkowski on 30/10/2023.
//

import SwiftUI
#if canImport(JournalingSuggestions)
import JournalingSuggestions

struct JournalingView: View {
    @State var suggestionPhotos = [JournalingSuggestion.Photo]()

    var body: some View {
        VStack {
            JournalingSuggestionsPicker {
                Text("Proszu panie system daj mnie cos do opisania")
                    .padding()
                    .foregroundStyle(.white)
                    .background(RoundedRectangle(cornerRadius: 12).foregroundStyle(.purple))
            } onCompletion: { suggestion in
                print(suggestion)
                for item in suggestion.items {
                    print(item)
                }
                suggestionPhotos = await suggestion.content(forType: JournalingSuggestion.Photo.self)
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
