//
//  HomeView.swift
//  Top 100
//
//  Created by Josefina Perez on 15/01/2021.
//  Copyright © 2021 Josefina perez. All rights reserved.
//

import UIKit

class HomeView: UIView {
    
    var tableView = UITableView()
    var tableViewDelegate: UITableViewDelegate?
    var tableViewDataSource: UITableViewDataSource?
    
    init(frame: CGRect, tableViewDataSource: UITableViewDataSource, tableViewDelegate: UITableViewDelegate) {
        super.init(frame: frame)
        self.tableViewDataSource = tableViewDataSource
        self.tableViewDelegate = tableViewDelegate
        setupUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupUI() {
        setupTableView()
    }
    
    private func setupTableView() {
        tableView = UITableView()
        tableView.delegate = tableViewDelegate
        tableView.dataSource = tableViewDataSource
        addSubview(tableView)
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.topAnchor.constraint(equalTo: topAnchor).isActive = true
        tableView.leftAnchor.constraint(equalTo: leftAnchor).isActive = true
        tableView.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
        tableView.rightAnchor.constraint(equalTo: rightAnchor).isActive = true
    }
    
    func reloadTable() {
        tableView.reloadData()
    }
}
