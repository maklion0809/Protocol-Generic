//
//  ReusableCellPtorocol.swift
//  Task9Ptotocol&Generic
//
//  Created by Tymofii (Work) on 17.10.2021.
//

import UIKit

protocol ReusableCellProtocol {
    static var reuseableIdentifier: String { get }
    func cellForTableView(tableView: UITableView, atIndexPath indexPath: IndexPath) -> UITableViewCell
}

extension ReusableCellProtocol {
    static var reuseableIdentifier: String {
        return String(describing: self)
    }
}
