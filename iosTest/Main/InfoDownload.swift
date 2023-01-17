//
//  InfoDownload.swift
//  iosTest
//
//  Created by Gleb Chumachenko on 12.01.23.
//

import Foundation

struct HomeStore: Decodable {
    let id: Int
    let is_new: Bool?
    let title: String
    let subtitle: String
    let picture: String
    let is_buy: Bool
}

struct BestSeller: Decodable {
    let id: Int
    let is_favorites: Bool
    let title: String
    let discount_price: Int
    let price_without_discount: Int
    let picture: String
}

struct Root: Decodable {
    let home_store: [HomeStore]
    let best_seller: [BestSeller]
}



class MainDownload {
    var banners = [HomeStore]()
    var phones = [BestSeller]()
    func parseJson(json: Data) {
        do {
            let root = try JSONDecoder().decode(Root.self, from: json)
            phones = root.best_seller
            banners = root.home_store
        } catch let jsonError {
            print("Error serializing json:", jsonError)
        }
    }
    
    func fetchData(url: String) {
        if let url = URL(string: url) {
            URLSession.shared.dataTask(with: url) { (data, response, error) in
                if let data = data {
                     self.parseJson(json: data)
                    
                }
            }.resume()
        }
       
    }


}

