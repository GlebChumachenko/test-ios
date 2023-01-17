//
//  CellTableViewCell.swift
//  iosTest
//
//  Created by Gleb Chumachenko on 12.01.23.
//

import UIKit

class CellTableViewCell: UITableViewCell {

    @IBOutlet weak var productImage: UIImageView!
    @IBOutlet weak var orderQuantity: UILabel!
    @IBOutlet weak var minusBtn: UIButton!
    @IBOutlet weak var plusBtn: UIButton!
    @IBOutlet weak var btnView: UIView!
    override func awakeFromNib() {
        super.awakeFromNib()
        btnView.layer.cornerRadius = 10
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
    var quantity: Int = 1
    
    @IBAction func minusAction(_ sender: Any) {
        quantity-=1
        if quantity < 1{
            quantity = 1
        }
        orderQuantity.text = ("\(quantity)")
        
    }
    
    @IBAction func plusAction(_ sender: Any) {
        quantity+=1
        orderQuantity.text = ("\(quantity)")
        
    }
    
}

