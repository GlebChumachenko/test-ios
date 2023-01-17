//
//  ProductViewController.swift
//  iosTest
//
//  Created by Gleb Chumachenko on 12.01.23.
//

import UIKit

class ProductViewController: UIViewController {

    @IBOutlet weak var image1: UIImageView!
    @IBOutlet weak var image2: UIImageView!
    @IBOutlet weak var image3: UIImageView!
    @IBOutlet weak var infoView: UIView!
    @IBOutlet weak var selectIndicator: UIView!
    @IBOutlet weak var SIConstaraint: NSLayoutConstraint!
    @IBOutlet weak var shopBtn: UIButton!
    @IBOutlet weak var featuresBtn: UIButton!
    @IBOutlet weak var detailsBtn: UIButton!
    @IBOutlet weak var addToCartBtn: UIButton!
    @IBOutlet weak var brownColorSelect: UIButton!
    @IBOutlet weak var navyColorSelect: UIButton!
    @IBOutlet weak var capacity128: UIButton!
    @IBOutlet weak var capacity256: UIButton!
    @IBOutlet weak var productTitle: UILabel!
    var chooseCapacity: Bool = true
    var productDownload = ProductDownload()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tuneUI()
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.navigationBar.isHidden = false
    }
    
    func tuneUI(){
        btnsStyle()
        withLayerAction()
    }
    
    func btnsStyle(){
        brownColorSelect.tintColor = UIColor(red: 119/255, green: 45/255, blue: 3/255, alpha: 1)
        navyColorSelect.tintColor = UIColor(red: 1/255, green: 0/255, blue: 53/255, alpha: 1)
        capacity256.tintColor = UIColor(red: 141/255, green: 141/255, blue: 141/255, alpha: 1)
        capacity128.tintColor = UIColor(red: 141/255, green: 141/255, blue: 141/255, alpha: 1)
    }
    
     func withLayerAction(){
        infoView.layer.cornerRadius = 30
        selectIndicator.layer.cornerRadius = 2
        SIConstaraint.constant = 23
        addToCartBtn.layer.cornerRadius = 30
        capacity128.layer.cornerRadius = 10
        capacity256.layer.cornerRadius = 10
        
    }
    
    
    @IBAction func shopAction(_ sender: Any) {
        SIConstaraint.constant = 23

    }
    

    @IBAction func detailsAction(_ sender: Any) {
        SIConstaraint.constant = 133
    }
    
    @IBAction func featuresAction(_ sender: Any) {
        SIConstaraint.constant = 250
    }
    
    
    @IBAction func selectBrown(_ sender: Any) {
        brownColorSelect.tintColor = UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 1)
        navyColorSelect.tintColor = UIColor(red: 1/255, green: 0/255, blue: 53/255, alpha: 1)
        
    }
    
    
    @IBAction func selectNavy(_ sender: Any) {
        navyColorSelect.tintColor = UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 1)
        brownColorSelect.tintColor = UIColor(red: 119/255, green: 45/255, blue: 3/255, alpha: 1)
    }
    
    @IBAction func chooseCapacity128(_ sender: Any) {
        chooseCapacity = true
        capacity128.backgroundColor = UIColor(red: 255/255, green: 110/255, blue: 78/255, alpha: 1)
        capacity128.tintColor = UIColor.white
        
        capacity256.backgroundColor = UIColor.white
        capacity256.tintColor = UIColor(red: 141/255, green: 141/255, blue: 141/255, alpha: 1)
    }
    
    @IBAction func chooseCapacity256(_ sender: Any) {
        chooseCapacity = false
        capacity256.backgroundColor = UIColor(red: 255/255, green: 110/255, blue: 78/255, alpha: 1)
        capacity256.tintColor = UIColor.white
        
        capacity128.backgroundColor = UIColor.white
        capacity128.tintColor = UIColor(red: 141/255, green: 141/255, blue: 141/255, alpha: 1)
    }
    
    
}

