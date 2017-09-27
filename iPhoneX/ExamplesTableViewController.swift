//
//  ExamplesTableViewController.swift
//  iPhoneX
//
//  Created by Blake Merryman on 9/27/17.
//  Copyright © 2017 Blake Merryman. All rights reserved.
//

import UIKit

class ExamplesTableViewController: FixedSearchTableViewController {

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 6
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = super.tableView(tableView, cellForRowAt: indexPath)
        cell.backgroundColor = .white
        cell.accessoryType = .disclosureIndicator
        cell.textLabel?.text = {
            switch indexPath.item {
            case 0: return "Broken Cell Backgrounds"
            case 1: return "Fixed Cell Backgrounds"
            case 2: return "Broken Search Controller"
            case 3: return "Fixed Search Controller"
            case 4: return "Broken Onboarding Screen"
            case 5: return "Fixed Onboarding Screen"
            default:  preconditionFailure("This cell shouldn't exist!")
            }
        }()
        return cell
    }

    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        return nil
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let viewController: UIViewController = {
            switch indexPath.item {
            case 0: return TableViewController()
            case 1: return FixedTableViewController()
            case 2: return SearchTableViewController()
            case 3: return FixedSearchTableViewController()
            case 4: return OnboardingViewController()
            case 5: return FixedOnboardingViewController()
            default:  preconditionFailure("This cell shouldn't exist!")
            }
        }()

        navigationController?.pushViewController(viewController, animated: true)
        tableView.deselectRow(at: indexPath, animated: true)
    }

}
