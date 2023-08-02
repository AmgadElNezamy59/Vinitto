//
//  CartViewController.swift
//  Vinitto
//
//  Created by Amgad Salah on 14/07/2023.
//

import UIKit

class CartViewController: UIViewController {

    @IBOutlet weak var TotalPriceView: UIView!
    @IBOutlet weak var TotalPriceLbl: UILabel!
    @IBOutlet weak var tableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self

    }
    
    override func viewWillAppear(_ animated: Bool) {
        
        if cartItems.count == 0 {
            tableView.isHidden = true
            TotalPriceView.isHidden = true
        }else{
            tableView.isHidden = false
            TotalPriceView.isHidden = false
            tableView.reloadData()
        }
        
    }
    
}

extension CartViewController : UITableViewDataSource,UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cartItems.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: K.cartCell, for: indexPath) as! CartTableViewCell
        
        cell.setUp(img: cartItems[indexPath.row].photo, model: cartItems[indexPath.row].model, price: cartItems[indexPath.row].price, size: cartItems[indexPath.row].size!, amount: cartItems[indexPath.row].amount!)
        cell.selectionStyle = .none
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return self.view.frame.size.height * 0.22
    }
    
    
    
    func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        let deleteAction = UIContextualAction(style: .destructive, title: "") { action, view, actionPerformed in
            actionPerformed(true)
            
            cartItems.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
            
            numOfCartItems -= 1
            if let tabItems = self.tabBarController?.tabBar.items {
                let tabItem = tabItems[2]
                tabItem.badgeValue = String(numOfCartItems)
            }

            tableView.reloadData()
            
        }
        deleteAction.image = UIImage(systemName: "trash.fill")

        return UISwipeActionsConfiguration(actions: [deleteAction])
    }


}


