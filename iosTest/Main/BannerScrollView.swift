//
//  BannerScrollView.swift
//  iosTest
//
//  Created by Gleb Chumachenko on 12.01.23.
//

import Foundation
import UIKit

extension MainViewController {
    
    func bannersStyle(){
        firstBanner.layer.cornerRadius = 10
        secondBanner.layer.cornerRadius = 10
        thirdBanner.layer.cornerRadius = 10
    }
    
    func bannersDetails(indexpath: IndexPath){
        
        let urlBanners = URL(string: download.banners[indexpath.item].picture)!
        URLSession.shared.dataTask(with: urlBanners) { [self] (data, response, error) in
                    if let data = data {
                        DispatchQueue.main.sync {
                            let image = UIImage(data: data)
                            if indexpath.item == 0{
                                self.bannerImage1.image = image
                                self.bannerTitle1.text = download.banners[indexpath.item].title
                            } else if indexpath.item == 1 {
                                self.bannerImage2.image = image
                                self.bannerTitle2.text = download.banners[indexpath.item].title
                            } else {
                                self.bannerImage3.image = image
                                self.bannerTitle3.text = download.banners[indexpath.item].title
                            }
                            
                        }
                    }
                }.resume()
    }
}
