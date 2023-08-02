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

extension FavouriteViewController : UITableViewDataSource,UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: K.favCell, for: indexPath)
        cell.selectionStyle = .none
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return self.view.frame.size.height * 0.22
    }


}


