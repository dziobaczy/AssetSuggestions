#if canImport(JournalingSuggestions)
import JournalingSuggestions
#endif
import Foundation
import CoreLocation
import HealthKit


public struct SuggestedContact: Hashable {
    public let name: String
    public let photo: URL?
    public init(name: String, photo: URL?) {
    self.name = name
    self.photo = photo
    }

    #if canImport(JournalingSuggestions)
    @available(iOS 17.2, *)
    public init(_ asset: JournalingSuggestion.Contact) {
        self.name = asset.name
        self.photo = asset.photo
    }
    #endif
}

public struct SuggestedLivePhoto: Hashable {
    public let image: URL
    public let video: URL
    public let date: Date?
    public init(image: URL, video: URL, date: Date?) {
    self.image = image
    self.video = video
    self.date = date
    }

    #if canImport(JournalingSuggestions)
    @available(iOS 17.2, *)
    public init(_ asset: JournalingSuggestion.LivePhoto) {
        self.image = asset.image
        self.video = asset.video
        self.date = asset.date
    }
    #endif
}

public struct SuggestedLocation: Hashable {
    public let place: String?
    public let city: String?
    public let location: CLLocation?
    public let date: Date?
    public init(place: String?, city: String?, location: CLLocation?, date: Date?) {
    self.place = place
    self.city = city
    self.location = location
    self.date = date
    }

    #if canImport(JournalingSuggestions)
    @available(iOS 17.2, *)
    public init(_ asset: JournalingSuggestion.Location) {
        self.place = asset.place
        self.city = asset.city
        self.location = asset.location
        self.date = asset.date
    }
    #endif
}


public struct SuggestedMotionActivity: Hashable {
    public let icon: URL?
    public let steps: Int
    public let date: DateInterval?
    public init(icon: URL?, steps: Int, date: DateInterval?) {
    self.icon = icon
    self.steps = steps
    self.date = date
    }

    #if canImport(JournalingSuggestions)
    @available(iOS 17.2, *)
    public init(_ asset: JournalingSuggestion.MotionActivity) {
        self.icon = asset.icon
        self.steps = asset.steps
        self.date = asset.date
    }
    #endif
}

public struct SuggestedPhoto: Hashable {
    public let photo: URL
    public let date: Date?
    public init(photo: URL, date: Date?) {
    self.photo = photo
    self.date = date
    }

    #if canImport(JournalingSuggestions)
    @available(iOS 17.2, *)
    public init(_ asset: JournalingSuggestion.Photo) {
        self.photo = asset.photo
        self.date = asset.date
    }
    #endif
}

public struct SuggestedPodcast: Hashable {
    public let episode: String?
    public let show: String?
    public let artwork: URL?
    public let date: Date?
    public init(episode: String?, show: String?, artwork: URL?, date: Date?) {
    self.episode = episode
    self.show = show
    self.artwork = artwork
    self.date = date
    }

    #if canImport(JournalingSuggestions)
    @available(iOS 17.2, *)
    public init(_ asset: JournalingSuggestion.Podcast) {
        self.episode = asset.episode
        self.show = asset.show
        self.artwork = asset.artwork
        self.date = asset.date
    }
    #endif
}

public struct SuggestedSong: Hashable {
    public let song: String?
    public let artist: String?
    public let album: String?
    public let artwork: URL?
    public let date: Date?
    public init(song: String?, artist: String?, album: String?, artwork: URL?, date: Date?) {
    self.song = song
    self.artist = artist
    self.album = album
    self.artwork = artwork
    self.date = date
    }

    #if canImport(JournalingSuggestions)
    @available(iOS 17.2, *)
    public init(_ asset: JournalingSuggestion.Song) {
        self.song = asset.song
        self.artist = asset.artist
        self.album = asset.album
        self.artwork = asset.artwork
        self.date = asset.date
    }
    #endif
}

public struct SuggestedVideo: Hashable {
    public let url: URL
    public let date: Date?
    public init(url: URL, date: Date?) {
    self.url = url
    self.date = date
    }

    #if canImport(JournalingSuggestions)
    @available(iOS 17.2, *)
    public init(_ asset: JournalingSuggestion.Video) {
        self.url = asset.url
        self.date = asset.date
    }
    #endif
}

public struct SuggestedWorkout: Hashable {
    public let details: SuggestedWorkout.Details?
    public let icon: URL?
    public let route: [CLLocation]?
    public init(details: SuggestedWorkout.Details?, icon: URL?, route: [CLLocation]?) {
    self.details = details
    self.icon = icon
    self.route = route
    }

    #if canImport(JournalingSuggestions)
    @available(iOS 17.2, *)
    public init(_ asset: JournalingSuggestion.Workout) {
        self.details = .init(asset.details)
        self.icon = asset.icon
        self.route = asset.route
    }
    #endif
}

public extension SuggestedWorkout {
    struct Details: Hashable  {
        public let activityType: HKWorkoutActivityType
        public let activeEnergyBurned: HKQuantity?
        public let distance: HKQuantity?
        public let averageHeartRate: HKQuantity?
        public let date: DateInterval?
        public init(activityType: HKWorkoutActivityType, activeEnergyBurned: HKQuantity?, distance: HKQuantity?, averageHeartRate: HKQuantity?, date: DateInterval?) {
        self.activityType = activityType
        self.activeEnergyBurned = activeEnergyBurned
        self.distance = distance
        self.averageHeartRate = averageHeartRate
        self.date = date
    }

    #if canImport(JournalingSuggestions)
    @available(iOS 17.2, *)
    public init?(_ details: JournalingSuggestion.Workout.Details?) {
        guard let details else { return nil }
        self.activityType = details.activityType
        self.activeEnergyBurned = details.activeEnergyBurned
        self.distance = details.distance
        self.averageHeartRate = details.averageHeartRate
        self.date = details.date
    }
    #endif
}
}

public struct SuggestedWorkoutGroup: Hashable {
    public let workouts: [SuggestedWorkout]
    public let icon: URL?
    public let activeEnergyBurned: HKQuantity?
    public let averageHeartRate: HKQuantity?
    public let duration: TimeInterval?
    public init(workouts: [SuggestedWorkout], icon: URL?, activeEnergyBurned: HKQuantity?, averageHeartRate: HKQuantity?, duration: TimeInterval?) {
    self.workouts = workouts
    self.icon = icon
    self.activeEnergyBurned = activeEnergyBurned
    self.averageHeartRate = averageHeartRate
    self.duration = duration
    }

    #if canImport(JournalingSuggestions)
    @available(iOS 17.2, *)
    public init(_ asset: JournalingSuggestion.WorkoutGroup) {
        self.workouts = asset.workouts.map { .init($0) }
        self.icon = asset.icon
        self.activeEnergyBurned = asset.activeEnergyBurned
        self.averageHeartRate = asset.averageHeartRate
        self.duration = asset.duration
    }
    #endif
}

public enum SuggestedAsset: Hashable {
    case contact(SuggestedContact)
    case livePhoto(SuggestedLivePhoto)
    case location(SuggestedLocation)
    case motionActivity(SuggestedMotionActivity)
    case photo(SuggestedPhoto)
    case podcast(SuggestedPodcast)
    case song(SuggestedSong)
    case video(SuggestedVideo)
    case workout(SuggestedWorkout)
    case workoutGroup(SuggestedWorkoutGroup)
}
