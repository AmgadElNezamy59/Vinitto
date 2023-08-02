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
    
    var CategorySlider = [CategoryItems]()
    var index = 0

    
    var timer : Timer?
    
    var currnetSliderIndex = 0
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.dataSource = self
        collectionView.delegate = self
        tableView.dataSource = self
        tableView.delegate = self
        startTimer()
        
        
        CategorySlider.append(CategoryItems(categrrName: "Men Shoses", photos: [UIImage(named: "men1")!,UIImage(named: "men8")!,UIImage(named: "men2")!,UIImage(named: "men3")!,UIImage(named: "men4")!,UIImage(named: "men5")!,UIImage(named: "men6")!,UIImage(named: "men7")!]))
        
        CategorySlider.append(CategoryItems(categrrName: "Women Shoses", photos: [UIImage(named: "women1")!,UIImage(named: "women8")!,UIImage(named: "women2")!,UIImage(named: "women3")!,UIImage(named: "women4")!,UIImage(named: "women5")!,UIImage(named: "women6")!,UIImage(named: "women7")!]))
        
        CategorySlider.append(CategoryItems(categrrName: "Kid Shoses", photos: [UIImage(named: "kid1")!,UIImage(named: "kid8")!,UIImage(named: "kid2")!,UIImage(named: "kid3")!,UIImage(named: "kid4")!,UIImage(named: "kid5")!,UIImage(named: "kid6")!,UIImage(named: "kid7")!]))
        
        
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
        return CategorySlider.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: K.CategoryTableCell,for: indexPath) as! CategoryTableViewCell
        cell.categoryLbl.text = CategorySlider[indexPath.row].categrrName
        cell.arrPhots = CategorySlider[indexPath.row].photos
        cell.selectionStyle = .none
                
        return cell
        
        
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
       
        
        let ProcuctVC = self.storyboard?.instantiateViewController(withIdentifier: "ProductVC") as! ProductViewController
        
        index = indexPath.row
        ProcuctVC.categoryIndex = index
        
        navigationController?.pushViewController(ProcuctVC, animated: true)
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return self.view.frame.size.height * 0.22
    }
    
    
}


