//
//  ReusableSectionProtocol.swift
//  Task9Ptotocol&Generic
//
//  Created by Tymofii (Work) on 17.10.2021.
//

import UIKit

protocol ReusableSectionProtocol {
    var items: [ReusableCellProtocol] { get set }
    var headerTitle: String? { get set }
    var footerTitle: String? { get set }
    
    init(items: [ReusableCellProtocol], headerTitle: String?, footerTitle: String?)
}
