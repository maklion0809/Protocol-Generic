//
//  SectionModel.swift
//  Task9Ptotocol&Generic
//
//  Created by Tymofii (Work) on 17.10.2021.
//

import Foundation

final class SectionModel: ConfigurableSection {
    var items: [TableViewCompatible]
    var headerTitle: String?
    var footerTitle: String?
    
    required init(items: [TableViewCompatible], headerTitle: String?, footerTitle: String?) {
        self.items = items
        self.headerTitle = headerTitle
        self.footerTitle = footerTitle
    }
}
