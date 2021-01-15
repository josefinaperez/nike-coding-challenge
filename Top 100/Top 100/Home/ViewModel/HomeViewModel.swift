//
//  HomeViewModel.swift
//  Top 100
//
//  Created by Josefina Perez on 15/01/2021.
//  Copyright © 2021 Josefina perez. All rights reserved.
//

import Foundation

class HomeViewModel {
    
    private var feed: Feed? { didSet {
        bindToController()
    }}
    
    var bindToController : (() -> ()) = {}
    
    init() {
        getFeed()
    }
    
    private func getFeed() {
        NetworkManager.request(router: Router.getFeed, completion: { (result: Result<Feed, Error>) in
            
            switch result {
            case .success(let feed):
                self.feed = feed
            case .failure(let error):
                //add custom error
                print(error.localizedDescription)
            }
        })
    }
    
}
