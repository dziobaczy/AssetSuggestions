//
//  SuggestedAsset+Mocks.swift
//  JournalingAppDemo
//
//  Created by Piotr Szadkowski on 14/11/2023.
//

import Foundation

extension SuggestedContact {
    static let mock = SuggestedContact(name: "Andrzej", photo: nil)
}

extension SuggestedPhoto {
    static let mock = SuggestedPhoto(photo: .applicationDirectory, date: .distantPast)
}
