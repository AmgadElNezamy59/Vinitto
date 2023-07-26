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
    
}

extension FavouriteViewController : UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: K.favCell, for: indexPath)
        cell.selectionStyle = .none
        return cell
    }
    
    
}

extension FavouriteViewController: UITableViewDelegate{
    
}
