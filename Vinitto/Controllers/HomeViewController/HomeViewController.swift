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
    
    var timer : Timer?
    
    var currnetSliderIndex = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.dataSource = self
        collectionView.delegate = self
        tableView.dataSource = self
        tableView.delegate = self
        
        
        
    }
    
    
    override func viewDidAppear(_ animated: Bool) {
        startTimer()
    }
    
    
    fileprivate func startTimer(){
        timer = Timer.scheduledTimer(timeInterval: 2.5, target: self, selector: #selector(moveToNextIndex), userInfo: nil, repeats: true)
        
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


extension HomeViewController : UITableViewDataSource,UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: K.CategoryTableCell,for: indexPath)
        
        cell.textLabel?.text = "4"
        
        return cell
        
        
    }
    
    
}


