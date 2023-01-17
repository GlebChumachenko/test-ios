//
//  CategoryScrollView.swift
//  iosTest
//
//  Created by Gleb Chumachenko on 12.01.23.
//

import Foundation
import Foundation
import UIKit

extension MainViewController {
    
    func categorySelected(btn: UIButton){
        btn.layer.borderWidth = 1.0
        btn.layer.masksToBounds = false
        btn.layer.cornerRadius = btn.frame.size.width/2
        btn.clipsToBounds = true
        btn.backgroundColor = UIColor(red: 255/255, green: 110/255, blue: 78/255, alpha: 1)
        btn.tintColor = UIColor.white
    }
    
    func categoryUnselected(btn: UIButton){
        btn.layer.borderWidth = 1.0
        btn.layer.masksToBounds = false
        btn.layer.cornerRadius = btn.frame.size.width/2
        btn.clipsToBounds = true
        btn.backgroundColor = UIColor.white
        btn.tintColor = UIColor.gray
    }
    
    @IBAction func onPhonesBtn(_ sender: Any) {
        categorySelected(btn: phonesBtn)
        categoryUnselected(btn: otherBtn)
        categoryUnselected(btn: computerBtn)
        categoryUnselected(btn: booksBtn)
        categoryUnselected(btn: healthBtn)
    }
    @IBAction func onComputerBtn(_ sender: Any) {
        categorySelected(btn: computerBtn)
        categoryUnselected(btn: otherBtn)
        categoryUnselected(btn: phonesBtn)
        categoryUnselected(btn: booksBtn)
        categoryUnselected(btn: healthBtn)
    }
    @IBAction func onHealthBtn(_ sender: Any) {
        categorySelected(btn: healthBtn)
        categoryUnselected(btn: otherBtn)
        categoryUnselected(btn: computerBtn)
        categoryUnselected(btn: booksBtn)
        categoryUnselected(btn: phonesBtn)
    }
    @IBAction func onBooksBtn(_ sender: Any) {
        categorySelected(btn: booksBtn)
        categoryUnselected(btn: otherBtn)
        categoryUnselected(btn: computerBtn)
        categoryUnselected(btn: phonesBtn)
        categoryUnselected(btn: healthBtn)
    }
    @IBAction func onOtherBtn(_ sender: Any) {
        categorySelected(btn: otherBtn)
        categoryUnselected(btn: phonesBtn)
        categoryUnselected(btn: computerBtn)
        categoryUnselected(btn: booksBtn)
        categoryUnselected(btn: healthBtn)
    }
}
