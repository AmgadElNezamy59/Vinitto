//
//  Category.swift
//  Vinitto
//
//  Created by Amgad Salah on 30/07/2023.
//

import Foundation

struct Product {
    var category : String
    var product = [Item]()
    
    init(category: String, product: [Item] = [Item]()) {
        self.category = category
        self.product = product
    }
}
