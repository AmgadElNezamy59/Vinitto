//
//  FavouriteViewController.swift
//  Vinitto
//
//  Created by Amgad Salah on 14/07/2023.
//

import UIKit

class FavouriteViewController: UIViewController {
    @IBOutlet weak var tableViiew: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableViiew.dataSource = self
        tableViiew.delegate = self

    }
    
    override func viewDidAppear(_ animated: Bool) {
        if favItems.count == 0 {
            tableViiew.isHidden = true
        }else{
            tableViiew.isHidden = false

            tableViiew.reloadData()
        }
    }
    
}

extension FavouriteViewController : UITableViewDataSource,UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return favItems.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: K.favCell, for: indexPath) as! FavouriteTableViewCell
        
        cell.setUp(img: favItems[indexPath.row].photo, model: favItems[indexPath.row].model, price: favItems[indexPath.row].price + " EGP")
        cell.selectionStyle = .none
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return self.view.frame.size.height * 0.22
    }
    
    
    func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        let deleteAction = UIContextualAction(style: .destructive, title: "") { action, view, actionPerformed in
            actionPerformed(true)
            
            favItems.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
            
            numOfFavItems -= 1
            if let tabItems = self.tabBarController?.tabBar.items {
                // In this case we want to modify the badge number of the third tab:
                let tabItem = tabItems[1]
                tabItem.badgeValue = String(numOfFavItems)
            }

            tableView.reloadData()
            
        }
        deleteAction.image = UIImage(systemName: "trash.fill")

        return UISwipeActionsConfiguration(actions: [deleteAction])
    }


}


