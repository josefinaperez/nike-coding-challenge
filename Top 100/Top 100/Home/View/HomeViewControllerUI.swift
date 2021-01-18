//
//  HomeViewControllerUI.swift
//  Top 100
//
//  Created by Josefina Perez on 15/01/2021.
//  Copyright © 2021 Josefina perez. All rights reserved.
//

import Foundation
import UIKit

extension HomeViewController {
    
    override func loadView() {
        super.loadView()
        createHomeView()
    }
    
    private func createHomeView() {
        if view as? HomeView == nil {
            let homeView = HomeView(frame: UIScreen.main.bounds, tableViewDataSource: self, tableViewDelegate: self)
            view = homeView
        }
    }
    
    func reloadData() {
        guard let homeView = view as? HomeView else { return }
        homeView.reloadTable()
    }
}
