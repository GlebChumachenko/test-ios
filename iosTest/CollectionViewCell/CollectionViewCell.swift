//
//  CollectionViewCell.swift
//  iosTest
//
//  Created by Gleb Chumachenko on 12.01.23.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {

    
    @IBOutlet weak var productImage: UIImageView!
    @IBOutlet weak var mainView: UIView!
    @IBOutlet weak var modelName: UILabel!
    @IBOutlet weak var oldPrice: UILabel!
    @IBOutlet weak var newPrice: UILabel!
    @IBOutlet weak var favouriteBtn: UIButton!
    var isFavourite: Bool = false
    
    override func awakeFromNib() {
        super.awakeFromNib()
        cellStyle()
    }
    
    func cellStyle(){
        mainView.layer.cornerRadius = 10
    }
    
    
    @IBAction func onFavouriteBtn(_ sender: Any) {
        if isFavourite {
            isFavourite = false
            favouriteBtn.setImage(UIImage(systemName: "heart"), for: .normal)
        }
        else {
            isFavourite = true
            favouriteBtn.setImage(UIImage(systemName: "heart.fill"), for: .normal)
        }
    }
    
}
