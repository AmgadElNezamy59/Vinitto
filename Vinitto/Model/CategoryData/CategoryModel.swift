//
//  ProductModel.swift
//  Vinitto
//
//  Created by Amgad Salah on 14/07/2023.
//

import UIKit

struct Category {
    var category : String
    var product : [Product]
    
    init(category: String, product: [Product]) {
        self.category = category
        self.product = product
    }
}



