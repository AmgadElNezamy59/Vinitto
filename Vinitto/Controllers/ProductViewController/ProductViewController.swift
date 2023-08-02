//
//  ProductViewController.swift
//  Vinitto
//
//  Created by Amgad Salah on 14/07/2023.
//

import UIKit

class ProductViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    
    var VinittoProducts = [Product]()
    var categoryIndex = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        
        
        VinittoProducts.append(Product(category: "MEN SHOSES", product: [
            Item(photo: UIImage(named: "men1")!, model: "2022840108", price: "250", amount: "1", size: ""),
            Item(photo: UIImage(named: "men2")!, model: "2022840106", price: "250", amount: "1", size: ""),
            Item(photo: UIImage(named: "men3")!, model: "2041630401", price: "125", amount: "1", size: ""),
            Item(photo: UIImage(named: "men4")!, model: "2023330100", price: "250", amount: "1", size: ""),
            Item(photo: UIImage(named: "men5")!, model: "2052850106", price: "420", amount: "1", size: ""),
            Item(photo: UIImage(named: "men6")!, model: "2043210104", price: "195", amount: "1", size: ""),
            Item(photo: UIImage(named: "men7")!, model: "2122810100", price: "330", amount: "1", size: ""),
            Item(photo: UIImage(named: "men8")!, model: "2113090100", price: "125", amount: "1", size: "")
        
        ]))
        
        
        VinittoProducts.append(Product(category: "WOMEN SHOSES", product: [
            Item(photo: UIImage(named: "women1")!, model: "1132830119", price: "220", amount: "1", size: ""),
            Item(photo: UIImage(named: "women2")!, model: "1132830112", price: "220", amount: "1", size: ""),
            Item(photo: UIImage(named: "women3")!, model: "1332830205", price: "220", amount: "1", size: ""),
            Item(photo: UIImage(named: "women4")!, model: "1531580405", price: "125", amount: "1", size: ""),
            Item(photo: UIImage(named: "women5")!, model: "1061650100", price: "125", amount: "1", size: ""),
            Item(photo: UIImage(named: "women6")!, model: "1061350105", price: "180", amount: "1", size: ""),
            Item(photo: UIImage(named: "women7")!, model: " 1261350218", price: "180", amount: "1", size: ""),
            Item(photo: UIImage(named: "women8")!, model: "1351920205", price: "125", amount: "1", size: "")
        
        ]))
        
        
        VinittoProducts.append(Product(category: "WOMEN SHOSES", product: [
            Item(photo: UIImage(named: "kid1")!, model: "3501971801", price: "100", amount: "1", size: ""),
            Item(photo: UIImage(named: "kid2")!, model: "3501900306", price: "100", amount: "1", size: ""),
            Item(photo: UIImage(named: "kid3")!, model: "3501730314", price: "100", amount: "1", size: ""),
            Item(photo: UIImage(named: "kid4")!, model: "3501571809", price: "100", amount: "1", size: ""),
            Item(photo: UIImage(named: "kid5")!, model: "3501920306", price: "100", amount: "1", size: ""),
            Item(photo: UIImage(named: "kid6")!, model: "3302840208", price: "180", amount: "1", size: ""),
            Item(photo: UIImage(named: "kid7")!, model: "3301810209", price: "100", amount: "1", size: ""),
            Item(photo: UIImage(named: "kid8")!, model: "3301570206", price: "100", amount: "1", size: "")
        
        ]))



    }
    
}


extension ProductViewController: UITableViewDataSource , UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return VinittoProducts[categoryIndex].product.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: K.productCell,for: indexPath) as! ProductTableViewCell
        cell.setUp(img: VinittoProducts[categoryIndex].product[indexPath.row].photo, model: VinittoProducts[categoryIndex].product[indexPath.row].model, price: VinittoProducts[categoryIndex].product[indexPath.row].price + " EGP")
        cell.selectionStyle = .none
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return self.view.frame.size.height * 0.22
    }
    
    
   
    
    func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        let favAction = UIContextualAction(style: .normal, title: "") { action, view, actionPerformed in
            
            favItems.append(self.VinittoProducts[self.categoryIndex].product[indexPath.row])
            numOfFavItems += 1
            print(favItems.count)
            print(numOfFavItems)



            actionPerformed(true)
            
        }
        
        favAction.image = UIImage(systemName: "heart.fill")
        favAction.backgroundColor = UIColor.purple
        
       
    
        
        return  UISwipeActionsConfiguration(actions: [favAction])
        
    }
    
    
    
  
    
    
}


