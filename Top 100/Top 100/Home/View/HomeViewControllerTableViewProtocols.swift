//
//  HomeViewControllerTableViewProtocols.swift
//  Top 100
//
//  Created by Josefina Perez on 18/01/2021.
//  Copyright © 2021 Josefina perez. All rights reserved.
//

import Foundation
import UIKit

extension HomeViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return homeViewModel?.feed?.albums.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
}

extension HomeViewController: UITableViewDelegate {
    
}
