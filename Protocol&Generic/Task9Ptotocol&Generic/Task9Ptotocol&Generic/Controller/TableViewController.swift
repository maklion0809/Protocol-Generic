//
//  TableViewController.swift
//  Task9Ptotocol&Generic
//
//  Created by Tymofii (Work) on 17.10.2021.
//

import UIKit

final class TableViewController: UIViewController {
    
    // MARK: - UI element
    
    private lazy var tableView = UITableView(frame: .zero, style: .insetGrouped)
    
    // MARK: - Variable
    
    private var dataSource = TableViewDataSource<SectionModel, CustomTableViewCell>()
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupSubview()
        setupConstraint()
        setupTableView()
        loadCities()
    }
    
    // MARK: - Setting up the subview
    
    private func setupSubview() {
        view.addSubview(tableView)
    }
    
    // MARK: - Setting up the constraint
    
    private func setupConstraint() {
        tableView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            tableView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            tableView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor)
        ])
    }
    
    // MARK: - Setting up the tableView
    
    private func setupTableView() {
        dataSource.registerCells(in: tableView)
        tableView.dataSource = dataSource
        tableView.delegate = dataSource
    }
    
    // MARK: - Loading data
    
    private func loadCities() {
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1) { [self] in
            let bestCities = DefaultCity.bestCities
            let coolCities = DefaultCity.coolCities
            self.dataSource.loadData(at: SectionModel(items: bestCities, headerTitle: "Best cities", footerTitle: "Cities - \(bestCities.count)"))
            self.dataSource.loadData(at: SectionModel(items: coolCities, headerTitle: "Cool cities", footerTitle: "Cities - \(coolCities.count)"))
            self.tableView.reloadData()
        }
    }
}

