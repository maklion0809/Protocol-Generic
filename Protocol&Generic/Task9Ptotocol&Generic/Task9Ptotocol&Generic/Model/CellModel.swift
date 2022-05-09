//
//  CellModel.swift
//  Task9Ptotocol&Generic
//
//  Created by Tymofii (Work) on 17.10.2021.
//

import UIKit

final class CellModel: TableViewCompatible {
    
    var item: City
        
    init(item: City) {
        self.item = item
    }
    
    func cellForTableView(tableView: UITableView, atIndexPath indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: CellModel.reuseableIdentifier, for: indexPath) as? CustomTableViewCell else { return UITableViewCell()}
        cell.configure(with: item)
        return cell
    }
}

