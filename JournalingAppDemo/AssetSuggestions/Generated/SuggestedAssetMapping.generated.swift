// Generated using Sourcery 2.1.2 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT
#if canImport(JournalingSuggestions)
import JournalingSuggestions

@available(iOS 17.2, *)
extension SuggestedAsset {    
    public static func convert(
        representation: any JournalingSuggestionAsset.Type,
        in item: JournalingSuggestion.ItemContent
    ) async throws -> SuggestedAsset? {
    switch representation {
    case is JournalingSuggestion.Contact.Type:
        if let contact = try await item.content(forType: JournalingSuggestion.Contact.self) {
            return .contact(.init(contact))
        }
    case is JournalingSuggestion.LivePhoto.Type:
        if let livePhoto = try await item.content(forType: JournalingSuggestion.LivePhoto.self) {
            return .livePhoto(.init(livePhoto))
        }
    case is JournalingSuggestion.Location.Type:
        if let location = try await item.content(forType: JournalingSuggestion.Location.self) {
            return .location(.init(location))
        }
    case is JournalingSuggestion.MotionActivity.Type:
        if let motionActivity = try await item.content(forType: JournalingSuggestion.MotionActivity.self) {
            return .motionActivity(.init(motionActivity))
        }
    case is JournalingSuggestion.Photo.Type:
        if let photo = try await item.content(forType: JournalingSuggestion.Photo.self) {
            return .photo(.init(photo))
        }
    case is JournalingSuggestion.Podcast.Type:
        if let podcast = try await item.content(forType: JournalingSuggestion.Podcast.self) {
            return .podcast(.init(podcast))
        }
    case is JournalingSuggestion.Song.Type:
        if let song = try await item.content(forType: JournalingSuggestion.Song.self) {
            return .song(.init(song))
        }
    case is JournalingSuggestion.Video.Type:
        if let video = try await item.content(forType: JournalingSuggestion.Video.self) {
            return .video(.init(video))
        }
    case is JournalingSuggestion.Workout.Type:
        if let workout = try await item.content(forType: JournalingSuggestion.Workout.self) {
            return .workout(.init(workout))
        }
    case is JournalingSuggestion.WorkoutGroup.Type:
        if let workoutGroup = try await item.content(forType: JournalingSuggestion.WorkoutGroup.self) {
            return .workoutGroup(.init(workoutGroup))
        }
    default:
        return nil
    }
    return nil
    }
}
#endif