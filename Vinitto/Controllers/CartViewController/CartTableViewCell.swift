//
//  CartTableViewCell.swift
//  Vinitto
//
//  Created by Amgad Salah on 14/07/2023.
//

import UIKit

class CartTableViewCell: UITableViewCell {
    @IBOutlet weak var totalPriceLbl: UILabel!
    @IBOutlet weak var amountLbl: UILabel!
    @IBOutlet weak var sizeLbl: UILabel!
    @IBOutlet weak var img: UIImageView!
    @IBOutlet weak var modelLbl: UILabel!
    
    @IBOutlet weak var priceLbl: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    
    func setUp(img:UIImage,model:String,price:String,size:String,amount:String){
        self.img.image = img
        self.modelLbl.text = model
        self.priceLbl.text = price
        self.amountLbl.text = amount
        self.sizeLbl.text = size
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
