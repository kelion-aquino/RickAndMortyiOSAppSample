//
//  RMEpisode.swift
//  RickAndMortyApp
//
//  Created by Kelion Aquino on 26/12/22.
//

import Foundation

// MARK: - RMLocation
struct RMEpisode: Codable {
    let id: Int
    let name: String
    let airDate: String
    let episode: String
    let characters: [String]
    let url: String
    let created: String
}
