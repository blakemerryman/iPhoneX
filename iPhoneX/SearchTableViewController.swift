//
//  SearchTableViewController.swift
//  iPhoneX
//
//  Created by Blake Merryman on 9/27/17.
//  Copyright © 2017 Blake Merryman. All rights reserved.
//

import UIKit

class SearchTableViewController: FixedTableViewController {

    lazy var searchController: UISearchController = {
        let controller = UISearchController(searchResultsController: nil)
        // really great search controller setup logic 🙃
        return controller
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        configureSearchController()
    }

    func configureSearchController() {
        tableView.tableHeaderView = searchController.searchBar
    }

}
