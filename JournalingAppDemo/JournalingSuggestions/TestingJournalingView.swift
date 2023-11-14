//
//  TestingJournalingView.swift
//  JournalingAppDemo
//
//  Created by Piotr Szadkowski on 14/11/2023.
//

import SwiftUI

struct TestingJournalingView: View {

    @ObservedObject var viewModel: JournalingViewModel
    @State private var showsSuggestionsPicker = false
    @State private var selection: SuggestedAsset?

    var body: some View {
        Button("Get Suggestion") {
            showsSuggestionsPicker = true
        }
        .sheet(isPresented: $showsSuggestionsPicker) {
            showsSuggestionsPicker = false
        } content: {
            List(selection: $selection) {
                ForEach(JournalingViewModel.mocks, id: \.self) { asset in
                    Text(asset.title)
                }
            }
            .onChange(of: selection) { oldValue, newValue in
                guard let newValue else { return }
                withAnimation { showsSuggestionsPicker = false }
                viewModel.added([newValue])
            }
        }
    }

}

extension JournalingViewModel {
    static let mocks: [SuggestedAsset] = [
        .contact(.mock), .photo(.mock)
    ]
}

extension SuggestedAsset {
    var title: String {
        switch self {
        case .contact(let suggestedContact):
            "Contact: \(suggestedContact.name)"
        case .photo(let photo):
            "Photo: \(photo.photo)"
        default:
            "Not implement :/ - but you can do it!"
        }
    }
}
