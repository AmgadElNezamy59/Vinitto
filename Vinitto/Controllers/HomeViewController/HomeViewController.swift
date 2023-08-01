//
//  ViewController.swift
//  Vinitto
//
//  Created by Amgad Salah on 14/07/2023.
//

import UIKit

class HomeViewController: UIViewController {
    
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var tableView: UITableView!
    
    var VinittoProducts = [Product]()

    
    var timer : Timer?
    
    var currnetSliderIndex = 0
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.dataSource = self
        collectionView.delegate = self
        tableView.dataSource = self
        tableView.delegate = self
        startTimer()
        
        
        
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
    
    
    
    
    fileprivate func startTimer(){
        timer = Timer.scheduledTimer(timeInterval: 3, target: self, selector: #selector(moveToNextIndex), userInfo: nil, repeats: true)
        
    }
    
    @objc fileprivate func moveToNextIndex(){
        
        if currnetSliderIndex < SliderImages.count - 1{
            currnetSliderIndex += 1
        }else{
            currnetSliderIndex = 0
        }
        
        collectionView.scrollToItem(at: IndexPath(item: currnetSliderIndex, section: 0), at: .centeredHorizontally, animated: true)
        
    }
    
    
}




//MARK: extension HomeViewController :UICollectionViewDataSource
extension HomeViewController :UICollectionViewDataSource ,UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return SliderImages.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: K.SliderCell, for: indexPath) as! SliderCollectionViewCell
        cell.sliderImg.image = SliderImages[indexPath.row]
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width, height: collectionView.frame.height)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
}




//MARK: extension HomeViewController : UITableViewDataSource,UITableViewDelegate
extension HomeViewController : UITableViewDataSource,UITableViewDelegate{
    
    
   
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return VinittoProducts.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: K.CategoryTableCell,for: indexPath) as! CategoryTableViewCell
                
        return cell
        
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return self.view.frame.size.height * 0.22
    }
    
    
    
    
    
    
    
    
    

    
}


