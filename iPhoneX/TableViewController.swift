//
//  TableViewController.swift
//  iPhoneX
//
//  Created by Blake Merryman on 9/26/17.
//  Copyright © 2017 Blake Merryman. All rights reserved.
//

import UIKit

class TableViewController: UIViewController {

    lazy var tableView: UITableView = {
        let tableView = UITableView(frame: .zero, style: .plain)
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "\(UITableViewCell.self)")
        tableView.register(UITableViewHeaderFooterView.self, forHeaderFooterViewReuseIdentifier: "\(UITableViewHeaderFooterView.self)")
        tableView.delegate = self
        tableView.dataSource = self
        return tableView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        title = "Table View"

        view.addSubview(tableView)
        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: view.topAnchor),
            tableView.leftAnchor.constraint(equalTo: view.leftAnchor),
            tableView.rightAnchor.constraint(equalTo: view.rightAnchor),
            tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            ])
    }

}

extension TableViewController: UITableViewDataSource {

    func numberOfSections(in tableView: UITableView) -> Int {
        return 5
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "\(UITableViewCell.self)", for: indexPath)
        cell.textLabel?.text = "Item \(indexPath.item)"
        cell.contentView.backgroundColor = .lightGray
        return cell
    }

    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let header = tableView.dequeueReusableHeaderFooterView(withIdentifier: "\(UITableViewHeaderFooterView.self)")
        header?.textLabel?.text = "Section \(section)"
        header?.contentView.backgroundColor = .green
        return header
    }

}

extension TableViewController: UITableViewDelegate { /* Unimplemented ~ KBM 2017-09-26 */ }
