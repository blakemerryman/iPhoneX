//
//  FixedSearchTableViewController.swift
//  iPhoneX
//
//  Created by Blake Merryman on 9/27/17.
//  Copyright © 2017 Blake Merryman. All rights reserved.
//

import UIKit

class FixedSearchTableViewController: SearchTableViewController {

    override func configureSearchController() {
        if #available(iOS 11, *) {
            // Fix on iOS 11
            navigationItem.searchController = searchController
            searchController.isActive = true
        }
        else {
            // default to old implementation
            super.configureSearchController()
        }
    }

}
