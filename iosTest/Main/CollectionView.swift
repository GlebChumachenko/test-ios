//
//  CollectionView.swift
//  iosTest
//
//  Created by Gleb Chumachenko on 12.01.23.
//

import Foundation
import UIKit

extension MainViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
        func collectionViewBuild(){
        let nibCell = UINib(nibName: "CollectionViewCell", bundle: nil)
        collectionView.register(nibCell, forCellWithReuseIdentifier: "collectionCell")
        collectionView.delegate = self
        collectionView.dataSource = self
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return download.phones.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "collectionCell", for: indexPath) as! CollectionViewCell
        cell.layer.cornerRadius = 10
        
        cell.oldPrice.text = "$\(download.phones[indexPath.item].discount_price)"
        cell.newPrice.text = "$\(download.phones[indexPath.item].price_without_discount)"
        cell.modelName.text = download.phones[indexPath.item].title
        
        let urlPhones = URL(string: download.phones[indexPath.item].picture)!
        URLSession.shared.dataTask(with: urlPhones) { (data, response, error) in
            if let data = data {
                DispatchQueue.main.async {
                    let image = UIImage(data: data)
                    cell.productImage.image = image
                }
            }
        }.resume()
    
        if indexPath.item >= download.banners.count {
            return cell
        }
        
        bannersDetails(indexpath: indexPath)
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 189, height: 233)
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        performSegue(withIdentifier: "productInfo", sender: nil)
    }
}
