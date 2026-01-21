//
//  ViewController.swift
//  uSizy iOS Test
//
//  Created by Daniel Almería Núñez on 25/02/2021.
//

import UIKit
import UsizyIosSdk

class ViewController: UIViewController, UsizyButtonDelegate, UITableViewDelegate, UITableViewDataSource {

    let productIds = [
        "BOY_SHOES",
        "FEMALE_SHOES",
        "UNISEX_SHOES",
        "MALE_SHOES",
        "HUMAN_SHOES",
        "BABY_UPPER",
        "BOY_FULL",
        "BOY_LOWER",
        "BOY_UPPER",
        "CHILD_FULL",
        "CHILD_UPPER",
        "FEMALE_FULL",
        "FEMALE_LOWER",
        "FEMALE_UPPER",
        "GIRL_FULL",
        "GIRL_LOWER",
        "GIRL_UPPER",
        "HUMAN",
        "MALE_FULL",
        "MALE_LOWER",
        "MALE_UPPER",
        "PANT_WOMAN",
        "UNISEX_UPPER",
        "UNISEX",
        "UNISEX_FULL",
        "UNISEX_LOWER",
        "HUMAN_UPPER"
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    // MARK: - UITableViewDelegate
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return productIds.count
    }
     
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ProductCell", for: indexPath) as! ProductTableViewCell
        
        cell.lbProduct.text = productIds[indexPath.row]
        cell.selectionStyle = .none
        
        let config = UsizyButtonConfiguration()
        config.productId = productIds[indexPath.row]
        config.user = "AnonymousUser"
        config.titleColor = UIColor.green
        config.fontFamily = UIFont(name: "Al Nile", size: CGFloat(20))!
        config.underlineText = true
        cell.vwUsizy.delegate = self
        cell.vwUsizy.initialize(config)
        
        return cell
    }
    
    // MARK: - UITableViewDelegate
    func onRecommendedSize(_ productId: String?, data: SaveRecommendResponse?) {
        // do something
        print(data)
    }
}

