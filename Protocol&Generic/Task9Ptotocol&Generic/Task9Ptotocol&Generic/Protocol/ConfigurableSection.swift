//
//  ReusableSectionProtocol.swift
//  Task9Ptotocol&Generic
//
//  Created by Tymofii (Work) on 17.10.2021.
//

import UIKit

protocol ConfigurableSection {
    var items: [TableViewCompatible] { get set }
    var headerTitle: String? { get set }
    var footerTitle: String? { get set }
    
    init(items: [TableViewCompatible], headerTitle: String?, footerTitle: String?)
}
