//
//  ProductModel.swift
//  Vinitto
//
//  Created by Amgad Salah on 26/07/2023.
//

import UIKit

struct Product {
    var photo : UIImage
    var model : String
    var price : String
    var amount : String
    var size : String
    
    init(photo: UIImage, model: String, price: String, amount: String, size: String) {
        self.photo = photo
        self.model = model
        self.price = price
        self.amount = amount
        self.size = size
    }
}
