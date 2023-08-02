//
//  ProductTableViewCell.swift
//  Vinitto
//
//  Created by Amgad Salah on 14/07/2023.
//
protocol MyTableViewCellDelegate : AnyObject {
    func addToCart(img:UIImage,model:String,price:String,amont:String,size:String)
}
import UIKit

class ProductTableViewCell: UITableViewCell {
    
    weak var delegat: MyTableViewCellDelegate?
    
    @IBOutlet weak var productImage: UIImageView!
    
    @IBOutlet weak var modelLbl: UILabel!
    
    @IBOutlet weak var priceLbl: UILabel!
    
    @IBOutlet weak var sizeSegment: UISegmentedControl!
    
    @IBOutlet weak var amountTxtField: UITextField!
    
    func setUp(img:UIImage,model:String,price:String){
        
        self.productImage.image = img
        self.modelLbl.text = model
        self.priceLbl.text = price
        
    }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
    }
    
    
    @IBAction func amountStepper(_ sender: UIStepper) {
        amountTxtField.text = String(Int(sender.value))
    }
    
    
    @IBAction func addToCartBtnPressed(_ sender: UIButton) {
        
        
        
        
        delegat?.addToCart(img: productImage.image!, model: modelLbl.text!, price: priceLbl.text!, amont: amountTxtField.text!, size: "1")
        
    
        
        
    }
    
    
}
