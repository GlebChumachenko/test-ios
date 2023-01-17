//
//  ViewController.swift
//  iosTest
//
//  Created by Gleb Chumachenko on 12.01.23.
//

import UIKit

class MainViewController: UIViewController {
   
    @IBOutlet weak var tabBar: UIView!
    @IBOutlet weak var cartBtn: UIButton!
    @IBOutlet weak var cartCounter: UILabel!
    @IBOutlet weak var otherBtn: UIButton!
    @IBOutlet weak var healthBtn: UIButton!
    @IBOutlet weak var computerBtn: UIButton!
    @IBOutlet weak var booksBtn: UIButton!
    @IBOutlet weak var phonesBtn: UIButton!
    @IBOutlet weak var firstBanner: UIView!
    @IBOutlet weak var secondBanner: UIView!
    @IBOutlet weak var thirdBanner: UIView!
    @IBOutlet weak var bannerImage1: UIImageView!
    @IBOutlet weak var bannerImage2: UIImageView!
    @IBOutlet weak var bannerImage3: UIImageView!
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var bannerTitle1: UILabel!
    @IBOutlet weak var bannerTitle2: UILabel!
    @IBOutlet weak var bannerTitle3: UILabel!
    
    
    var download = MainDownload()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tuneUI()
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.navigationBar.isHidden = true
    }
    
    private func tuneUI(){
        tabBarDesign()
        categorySelected(btn: phonesBtn)
        categoryUnselected(btn: otherBtn)
        categoryUnselected(btn: computerBtn)
        categoryUnselected(btn: booksBtn)
        categoryUnselected(btn: healthBtn)
        collectionViewBuild()
        bannersStyle()
        download.fetchData(url: "https://run.mocky.io/v3/654bd15e-b121-49ba-a588-960956b15175")
        Thread.sleep(forTimeInterval: 0.7)
    }
    
    
    func tabBarDesign(){
        tabBar.layer.cornerRadius = tabBar.frame.size.height / 2
        cartCounter.textColor = UIColor(red: 1/255, green: 0/255, blue: 53/255, alpha: 1)
    }
    
}



