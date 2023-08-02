//
//  OnBoardViewController.swift
//  Vinitto
//
//  Created by Amgad Salah on 03/08/2023.
//

import UIKit

class OnBoardViewController: UIViewController {
    @IBOutlet weak var descLbl: UILabel!
    @IBOutlet weak var img: UIImageView!
    var desc : String?
    var imag : UIImage?
    override func viewDidLoad() {
        super.viewDidLoad()
        
        descLbl.text = desc
        img.image = imag

    }
    

   
    @IBAction func startBtnPressed(_ sender: UIButton) {
        
        let homeVC = self.storyboard?.instantiateViewController(identifier: "HomeViewController") as! HomeViewController
        
        present(homeVC, animated: true)
    }
    
}
