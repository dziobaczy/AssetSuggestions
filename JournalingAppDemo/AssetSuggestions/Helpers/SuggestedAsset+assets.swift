//
//  SuggestedAsset+assets.swift
//  JournalingAppDemo
//
//  Created by Piotr Szadkowski on 14/11/2023.
//

#if canImport(JournalingSuggestions)
import JournalingSuggestions
extension SuggestedAsset {
    public static func assets(
            from suggestion: JournalingSuggestion
        ) async throws -> [SuggestedAsset] {
            try await withThrowingTaskGroup(
                of: SuggestedAsset?.self,
                returning: [SuggestedAsset].self
            ) { group in
                for item in suggestion.items {
                    for representation in item.representations {
                        group.addTask {
                            try await convert(
                                representation: representation,
                                in: item
                            )
                        }
                    }
                }

                var suggestedAssets = [SuggestedAsset]()
                for try await case let asset? in group {
                    suggestedAssets.append(asset)
                }

                return suggestedAssets
            }
        }
}
#endif
