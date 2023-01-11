//
//  RMCharacter.swift
//  RickAndMortyApp
//
//  Created by Kelion Aquino on 26/12/22.
//

import Foundation

// MARK: - RMCharacter
struct RMCharacter: Codable {
    let id: Int
    let name: String
    let status: RMCharacterStatus
    let species: String
    let type: String
    let gender: RMCharacterGender
    let origin: RMOrigin
    let location: RMSingleLocation
    let image: String
    let episode: [String]
    let url: String
    let created: String
}
