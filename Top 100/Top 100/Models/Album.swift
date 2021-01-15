//
//  Album.swift
//  Top 100
//
//  Created by Josefina Perez on 15/01/2021.
//  Copyright © 2021 Josefina perez. All rights reserved.
//

import Foundation

struct Album: Decodable {
    
    let name: String
    let artistName: String
    let artworkUrl: String
    let genres: [Genre]
    let releaseDate: String
    let copyright: String
    
    enum CodingKeys: String, CodingKey {
        case name
        case artistName
        case artworkUrl = "artworkUrl100"
        case genres
        case releaseDate
        case copyright
    }
}
