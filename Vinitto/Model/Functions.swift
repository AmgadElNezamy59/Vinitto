//
//  Functions.swift
//  Vinitto
//
//  Created by Amgad Salah on 30/07/2023.
//

import UIKit

struct CRUDFunctions {
    
    func readProducts() {
        Data.VinittoProducts.append(Category(category: "MEN SHOSES", product: [
            Product(photo: UIImage(named: "men1")!, model: "2022840108", price: "250", amount: "1", size: ""),
            Product(photo: UIImage(named: "men2")!, model: "2022840106", price: "250", amount: "1", size: ""),
            Product(photo: UIImage(named: "men3")!, model: "2041630401", price: "125", amount: "1", size: ""),
            Product(photo: UIImage(named: "men4")!, model: "2023330100", price: "250", amount: "1", size: ""),
            Product(photo: UIImage(named: "men5")!, model: "2052850106", price: "420", amount: "1", size: ""),
            Product(photo: UIImage(named: "men6")!, model: "2043210104", price: "195", amount: "1", size: ""),
            Product(photo: UIImage(named: "men7")!, model: "2122810100", price: "330", amount: "1", size: ""),
            Product(photo: UIImage(named: "men8")!, model: "2113090100", price: "125", amount: "1", size: "")
            
        ]))
        
        
        Data.VinittoProducts.append(Category(category: "WOMEN SHOSES", product: [
            Product(photo: UIImage(named: "women1")!, model: "1132830119", price: "220", amount: "1", size: ""),
            Product(photo: UIImage(named: "women2")!, model: "1132830112", price: "220", amount: "1", size: ""),
            Product(photo: UIImage(named: "women3")!, model: "1332830205", price: "220", amount: "1", size: ""),
            Product(photo: UIImage(named: "women4")!, model: "1531580405", price: "125", amount: "1", size: ""),
            Product(photo: UIImage(named: "women5")!, model: "1061650100", price: "125", amount: "1", size: ""),
            Product(photo: UIImage(named: "women6")!, model: "1061350105", price: "180", amount: "1", size: ""),
            Product(photo: UIImage(named: "women7")!, model: " 1261350218", price: "180", amount: "1", size: ""),
            Product(photo: UIImage(named: "women8")!, model: "1351920205", price: "125", amount: "1", size: "")
            
        ]))
        
        
        Data.VinittoProducts.append(Category(category: "WOMEN SHOSES", product: [
            Product(photo: UIImage(named: "kid1")!, model: "3501971801", price: "100", amount: "1", size: ""),
            Product(photo: UIImage(named: "kid2")!, model: "3501900306", price: "100", amount: "1", size: ""),
            Product(photo: UIImage(named: "kid3")!, model: "3501730314", price: "100", amount: "1", size: ""),
            Product(photo: UIImage(named: "kid4")!, model: "3501571809", price: "100", amount: "1", size: ""),
            Product(photo: UIImage(named: "kid5")!, model: "3501920306", price: "100", amount: "1", size: ""),
            Product(photo: UIImage(named: "kid6")!, model: "3302840208", price: "180", amount: "1", size: ""),
            Product(photo: UIImage(named: "kid7")!, model: "3301810209", price: "100", amount: "1", size: ""),
            Product(photo: UIImage(named: "kid8")!, model: "3301570206", price: "100", amount: "1", size: "")
            
        ]))
        
        
    }
}
