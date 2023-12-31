//
//  FavouriteTableViewCell.swift
//  Vinitto
//
//  Created by Amgad Salah on 14/07/2023.
//

protocol MyFavViewCellDelegate : AnyObject {
    func addToCart(img:UIImage,model:String,price:String,amont:String,size:String)
}

import UIKit

class FavouriteTableViewCell: UITableViewCell {
    
    weak var delegate : MyFavViewCellDelegate?
    @IBOutlet weak var amountTxtField: UITextField!
    @IBOutlet weak var Price: UILabel!
    @IBOutlet weak var sizeSegment: UISegmentedControl!
    @IBOutlet weak var Model: UILabel!
    @IBOutlet weak var ProductImg: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    
    func setUp(img:UIImage,model:String,price:String){
        self.ProductImg.image = img
        self.Model.text = model
        self.Price.text = price
        
    }
  
    
    @IBAction func amountStepper(_ sender: UIStepper) {
        amountTxtField.text = String(Int(sender.value))
        
    }
    @IBAction func addToCartBtn(_ sender: UIButton) {
        
        
        delegate?.addToCart(img: ProductImg.image!, model: Model.text!, price: Price.text!, amont: amountTxtField.text!, size: sizeSegment.titleForSegment(at: sizeSegment.selectedSegmentIndex)!)
        
        
    }
}
