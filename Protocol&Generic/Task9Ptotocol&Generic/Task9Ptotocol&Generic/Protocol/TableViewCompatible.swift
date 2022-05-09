//
//  TableViewCompatible.swift
//  Task9Ptotocol&Generic
//
//  Created by Tymofii (Work) on 25.10.2021.
//

import UIKit

protocol TableViewCompatible {
    static var reuseableIdentifier: String { get }
    func cellForTableView(tableView: UITableView, atIndexPath indexPath: IndexPath) -> UITableViewCell
}

extension TableViewCompatible {
   static var reuseableIdentifier: String {
       return String(describing: self)
   }
}
