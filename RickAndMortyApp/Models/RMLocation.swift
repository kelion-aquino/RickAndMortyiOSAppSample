//
//  RMLocation.swift
//  RickAndMortyApp
//
//  Created by Kelion Aquino on 26/12/22.
//

import Foundation

struct RMLocation: Codable {
    let id: Int
    let name: String
    let type: String
    let dimension: String
    let residents: [String]
    let url: String
    let created: String
}
