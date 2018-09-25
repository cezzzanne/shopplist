//
//  BaseTableViewController.swift
//  ShoppingList
//
//  Created by Pablo Arellano on 2018-09-24.
//  Copyright © 2018 Pablo Arellano. All rights reserved.
//

import Foundation
import UIKit
class BaseTableViewController: UITableViewController {
    // So I can just call the function on add Inputs on sublcasses
    func requestInput(title: String, message: String, handler: @escaping (String) -> ()) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        
        alert.addTextField(configurationHandler: nil)
        
        alert.addAction(UIAlertAction(title: "Cancel", style: .cancel,
                                      handler: nil))
        
        alert.addAction(UIAlertAction(title: "Add", style: .default,
                                      handler: { (_) in
                                        if let listName = alert.textFields?[0].text {
                                            handler(listName)
                                        }
        }))
        
        self.present(alert, animated: true, completion: nil)
    }
    
}
