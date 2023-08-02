//
//  CategoryTableViewCell.swift
//  Vinitto
//
//  Created by Amgad Salah on 01/08/2023.
//

import UIKit

class CategoryTableViewCell: UITableViewCell {

    @IBOutlet weak var categoryLbl: UILabel!
    var arrPhots = [UIImage]()
    @IBOutlet weak var collectionView: UICollectionView!
    override func awakeFromNib() {
        super.awakeFromNib()
        collectionView.dataSource = self
    }
    
    
    

 

}

extension CategoryTableViewCell:UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrPhots.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: K.productSlider, for: indexPath) as! ProductSliderCollectionViewCell
        cell.image.image = arrPhots[indexPath.row]
        return cell
    }
    
    
}
