//
//  ProductTableViewCell.swift
//  UsizyIosSdk_Example
//
//  Created by Daniel Almería Núñez on 24/03/2021.
//  Copyright © 2021 CocoaPods. All rights reserved.
//

import UIKit
import UsizyIosSdk

class ProductTableViewCell: UITableViewCell {

    @IBOutlet weak var vwUsizy: USizyButton!
    @IBOutlet weak var lbProduct: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
