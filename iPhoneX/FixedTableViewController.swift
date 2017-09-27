//
//  FixedTableViewController.swift
//  iPhoneX
//
//  Created by Blake Merryman on 9/27/17.
//  Copyright © 2017 Blake Merryman. All rights reserved.
//

import UIKit

class FixedTableViewController: TableViewController {

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "\(UITableViewCell.self)", for: indexPath)
        cell.textLabel?.text = "Item \(indexPath.item)"

        // The Fix: Set cell background color directly instead of the content view.
        cell.backgroundColor = .lightGray

        return cell
    }

    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let header = tableView.dequeueReusableHeaderFooterView(withIdentifier: "\(UITableViewHeaderFooterView.self)")
        header?.textLabel?.text = "Section \(section)"

        // The Fix: Set background color directly instead of the content view.
        header?.backgroundView = UIView(frame: header!.frame)
        header?.backgroundView?.backgroundColor = .green

        return header
    }

}
