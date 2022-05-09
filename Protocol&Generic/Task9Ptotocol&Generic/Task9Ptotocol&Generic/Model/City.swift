//
//  City.swift
//  Task9Ptotocol&Generic
//
//  Created by Tymofii (Work) on 17.10.2021.
//

import UIKit

struct City {
    let name: String
    let image: String
}

struct DefaultCity {
    static let bestCities = [
        CellModel(item: City(name: "city one", image: "cityOne")),
        CellModel(item: City(name: "city two", image: "cityTwo")),
        CellModel(item: City(name: "city three", image: "cityThree")),
        CellModel(item: City(name: "city four", image: "cityFour")),
        CellModel(item: City(name: "city five", image: "cityFive"))
    ]
    static let coolCities = [
        CellModel(item: City(name: "city six", image: "citySix")),
        CellModel(item: City(name: "city seven", image: "citySeven")),
        CellModel(item: City(name: "city eight", image: "cityEight"))
    ]
}

