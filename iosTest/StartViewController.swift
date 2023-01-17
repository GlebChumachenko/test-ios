//
//  StartViewController.swift
//  iosTest
//
//  Created by Gleb Chumachenko on 12.01.23.
//

import UIKit

class ViewController: UIViewController {
    
    
   @IBOutlet weak var logoView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        start()
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        timer()
    }
    
    func timer(){
        Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(goNext), userInfo: nil, repeats: false)
    }

    @objc func goNext(){
        self.performSegue(withIdentifier: "showMain", sender: nil)
    }
    
    func start(){
        logoView.layer.borderWidth = 1.0
        logoView.layer.masksToBounds = false
        logoView.layer.cornerRadius = logoView.frame.size.width/2
        logoView.clipsToBounds = true
    }
    
    


}


