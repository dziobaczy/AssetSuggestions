// Generated using Sourcery 2.1.2 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT
#if canImport(JournalingSuggestions)
import JournalingSuggestions
#endif
import Foundation
import CoreLocation
import HealthKit

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

public struct SuggestedContact: Hashable {
    public let name: Swift.String
    public let photo: Foundation.URL?
    
    public init(name: Swift.String, photo: Foundation.URL?) {
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
    public let image: Foundation.URL
    public let video: Foundation.URL
    public let date: Foundation.Date?
    
    public init(image: Foundation.URL, video: Foundation.URL, date: Foundation.Date?) {
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
    public let place: Swift.String?
    public let city: Swift.String?
    public let location: CoreLocation.CLLocation?
    public let date: Foundation.Date?
    
    public init(place: Swift.String?, city: Swift.String?, location: CoreLocation.CLLocation?, date: Foundation.Date?) {
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
    public let icon: Foundation.URL?
    public let steps: Swift.Int
    public let date: Foundation.DateInterval?
    
    public init(icon: Foundation.URL?, steps: Swift.Int, date: Foundation.DateInterval?) {
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
    public let photo: Foundation.URL
    public let date: Foundation.Date?
    
    public init(photo: Foundation.URL, date: Foundation.Date?) {
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
    public let episode: Swift.String?
    public let show: Swift.String?
    public let artwork: Foundation.URL?
    public let date: Foundation.Date?
    
    public init(episode: Swift.String?, show: Swift.String?, artwork: Foundation.URL?, date: Foundation.Date?) {
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
    public let song: Swift.String?
    public let artist: Swift.String?
    public let album: Swift.String?
    public let artwork: Foundation.URL?
    public let date: Foundation.Date?
    
    public init(song: Swift.String?, artist: Swift.String?, album: Swift.String?, artwork: Foundation.URL?, date: Foundation.Date?) {
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
    public let url: Foundation.URL
    public let date: Foundation.Date?
    
    public init(url: Foundation.URL, date: Foundation.Date?) {
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
    public let icon: Foundation.URL?
    public let route: [CoreLocation.CLLocation]?
    
    public init(details: SuggestedWorkout.Details?, icon: Foundation.URL?, route: [CoreLocation.CLLocation]?) {
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
    public let activityType: HealthKit.HKWorkoutActivityType
    public let activeEnergyBurned: HealthKit.HKQuantity?
    public let distance: HealthKit.HKQuantity?
    public let averageHeartRate: HealthKit.HKQuantity?
    public let date: Foundation.DateInterval?
    public init(activityType: HealthKit.HKWorkoutActivityType, activeEnergyBurned: HealthKit.HKQuantity?, distance: HealthKit.HKQuantity?, averageHeartRate: HealthKit.HKQuantity?, date: Foundation.DateInterval?) {
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
    public let icon: Foundation.URL?
    public let activeEnergyBurned: HealthKit.HKQuantity?
    public let averageHeartRate: HealthKit.HKQuantity?
    public let duration: Foundation.TimeInterval?
    
    public init(workouts: [SuggestedWorkout], icon: Foundation.URL?, activeEnergyBurned: HealthKit.HKQuantity?, averageHeartRate: HealthKit.HKQuantity?, duration: Foundation.TimeInterval?) {
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
