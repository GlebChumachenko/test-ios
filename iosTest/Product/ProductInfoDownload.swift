//
//  ProductInfoDownload.swift
//  iosTest
//
//  Created by Gleb Chumachenko on 12.01.23.
//

import Foundation

struct Product: Decodable {
    let CPU: String
    let camera: String
    let capacity: [String]
    let color: [String]
    let id: String
    let images: [String]
    let isFavorites: Bool
    let price: Int
    let sd: String
    let ssd: String
    let title: String
    let rating: Double
}

class ProductDownload {
    var product: Product?
    func parseJson(json: Data) {
        do {
            let root = try JSONDecoder().decode(Product.self, from: json)
            product = root
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
