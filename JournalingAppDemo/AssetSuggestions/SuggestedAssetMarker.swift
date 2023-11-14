//
//  SuggestedAssetMarker.swift
//  JournalingAppDemo
//
//  Created by Piotr Szadkowski on 14/11/2023.
//

#if canImport(JournalingSuggestions)
import JournalingSuggestions
protocol SuggestedAssetMarker { }

extension JournalingSuggestion.Contact: SuggestedAssetMarker { }
extension JournalingSuggestion.LivePhoto: SuggestedAssetMarker { }
extension JournalingSuggestion.Location: SuggestedAssetMarker { }
extension JournalingSuggestion.MotionActivity: SuggestedAssetMarker { }
extension JournalingSuggestion.Photo: SuggestedAssetMarker { }
extension JournalingSuggestion.Podcast: SuggestedAssetMarker { }
extension JournalingSuggestion.Song: SuggestedAssetMarker { }
extension JournalingSuggestion.Video: SuggestedAssetMarker { }
extension JournalingSuggestion.Workout: SuggestedAssetMarker { }
extension JournalingSuggestion.Workout.Details: SuggestedAssetMarker { }
extension JournalingSuggestion.WorkoutGroup: SuggestedAssetMarker { }
#endif
