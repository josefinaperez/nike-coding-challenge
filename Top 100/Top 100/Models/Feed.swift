//
//  Feed.swift
//  Top 100
//
//  Created by Josefina Perez on 15/01/2021.
//  Copyright © 2021 Josefina perez. All rights reserved.
//

import Foundation

struct Feed: Decodable {
    
    let albums: [Album]
    
    enum CodingKeys: String, CodingKey {
        case feed
    }
    
    enum AlbumsCodingKey: String, CodingKey {
        case albums = "results"
    }
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        let nestedContainer = try container.nestedContainer(keyedBy: AlbumsCodingKey.self, forKey: .feed)
        albums = try nestedContainer.decode([Album].self, forKey: .albums)
    }
}
