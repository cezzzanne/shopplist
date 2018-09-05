//
//  item.swift
//  ShoppingList
//
//  Created by Pablo Arellano on 2018-09-04.
//  Copyright © 2018 Pablo Arellano. All rights reserved.
//

import Foundation
import UIKit

class Item {
    var name: String
    var isChecked: Bool
    init(name: String, isChecked: Bool = false) {
        self.name = name
        self.isChecked = isChecked
    }
    static func fake(_ count: Int) -> [Item] {
        var items = [Item]()
        for i in 0...count {
            let item = Item(name: "Item \(i)", isChecked: i % 2 == 0)
            items.append(item)
        }
        return items
    }
}
