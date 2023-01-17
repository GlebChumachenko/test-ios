//
//  CartViewController.swift
//  iosTest
//
//  Created by Gleb Chumachenko on 12.01.23.
//

import UIKit

class CartViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var checkoutBtn: UIButton!
    @IBOutlet weak var ordersList: UITableView!
    @IBOutlet weak var tableTopView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tuneUI()
    }
    
    private func tuneUI(){
        let nibCell = UINib(nibName: "CellTableViewCell", bundle: nil)
        ordersList.register(nibCell, forCellReuseIdentifier: "customCell")
        ordersList.dataSource = self
        ordersList.delegate = self
        ordersList.backgroundColor = UIColor(red: 1/255, green: 1/255, blue: 40/255, alpha: 1)
        tableTopView.layer.cornerRadius = 30
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "customCell") as! CellTableViewCell
        return cell
    }
    
    
    @IBAction func checkoutAction(_ sender: Any) {
        print("checkout")
    }
    
}
