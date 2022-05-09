//
//  TableViewDataSource.swift
//  Task9Ptotocol&Generic
//
//  Created by Tymofii (Work) on 17.10.2021.
//

import UIKit

final class TableViewDataSource<Section: ConfigurableSection, Cell: UITableViewCell>: NSObject, UITableViewDataSource, UITableViewDelegate {
    
    // MARK: - Variable
    
    private var sections = [Section]()
    
    func loadData(at section: Section) {
        sections.append(section)
    }
    
    func registerCells(in tableView: UITableView) {
        tableView.register(CustomTableViewCell.self, forCellReuseIdentifier: CellModel.reuseableIdentifier)
    }
    
    // MARK: - DataSource
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return sections.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        sections[section].items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let modal = sections[indexPath.section].items[indexPath.row]
        return modal.cellForTableView(tableView: tableView, atIndexPath: indexPath)
    }

    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return sections[section].headerTitle
    }
    
    func tableView(_ tableView: UITableView, titleForFooterInSection section: Int) -> String? {
        return sections[section].footerTitle
    }
    
    // MARK: - Delegate
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
}
