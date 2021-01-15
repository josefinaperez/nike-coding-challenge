//
//  Router.swift
//  Top 100
//
//  Created by Josefina Perez on 15/01/2021.
//  Copyright © 2021 Josefina perez. All rights reserved.
//

import Foundation

enum Router {
    case getAlbums
    
    var scheme: String {
        switch self {
        case .getAlbums:
            return "https"
        }
    }
    
    var host: String {
        switch self {
        case .getAlbums:
            return "rss.itunes.apple.com"
        }
    }
    
    var path: String {
        switch self {
        case .getAlbums:
            return "/api/v1/us/apple-music/top-albums/all/100/explicit.json"
        }
    }
    
    var method: String {
        switch self {
        case .getAlbums:
            return "GET"
        }
    }
}
