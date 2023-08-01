//
//  CategoryTableViewCell.swift
//  Vinitto
//
//  Created by Amgad Salah on 01/08/2023.
//

import UIKit

class CategoryTableViewCell: UITableViewCell {

    @IBOutlet weak var collectionView: UICollectionView!
    override func awakeFromNib() {
        super.awakeFromNib()
        collectionView.dataSource = self
    }
    
    
    

 

}

extension CategoryTableViewCell:UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: K.productSlider, for: indexPath) as! ProductSliderCollectionViewCell
        cell.image.image = UIImage(named: "men1")
        return cell
    }
    
    
}
