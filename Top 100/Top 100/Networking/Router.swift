//
//  Router.swift
//  Top 100
//
//  Created by Josefina Perez on 15/01/2021.
//  Copyright © 2021 Josefina perez. All rights reserved.
//

import Foundation

enum Router {
    case getFeed
    
    var scheme: String {
        switch self {
        case .getFeed:
            return "https"
        }
    }
    
    var host: String {
        switch self {
        case .getFeed:
            return "rss.itunes.apple.com"
        }
    }
    
    var path: String {
        switch self {
        case .getFeed:
            return "/api/v1/us/apple-music/top-albums/all/100/explicit.json"
        }
    }
    
    var method: String {
        switch self {
        case .getFeed:
            return "GET"
        }
    }
}
