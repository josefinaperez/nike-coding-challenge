//
//  ViewController.swift
//  Top 100
//
//  Created by Josefina Perez on 15/01/2021.
//  Copyright © 2021 Josefina perez. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
    
    var homeViewModel: HomeViewModel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        getFeed()
    }
    
    private func getFeed() {
        homeViewModel = HomeViewModel()
        homeViewModel?.bindToController = {
            self.reloadData()
        }
    }
}

