//
//  ReusableCellPtorocol.swift
//  Task9Ptotocol&Generic
//
//  Created by Tymofii (Work) on 17.10.2021.
//

import UIKit

protocol ConfigurableCell {
    associatedtype T
    func configure(with item: T)
}
