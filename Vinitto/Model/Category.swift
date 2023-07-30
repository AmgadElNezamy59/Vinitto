//
//  Category.swift
//  Vinitto
//
//  Created by Amgad Salah on 30/07/2023.
//

import Foundation

struct Category {
    var category : String
    var product = [Product]()
    
    init(category: String, product: [Product] = [Product]()) {
        self.category = category
        self.product = product
    }
}
