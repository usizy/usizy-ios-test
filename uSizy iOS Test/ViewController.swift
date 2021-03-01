//
//  ViewController.swift
//  uSizy iOS Test
//
//  Created by Daniel Almería Núñez on 25/02/2021.
//

import UIKit
import UsizyIosSdk

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let demo = Demo()
        demo.demo()
        
        let btUsizy = USizyButton()
        btUsizy.center = self.view.center
        
        let config = UsizyButtonConfiguration()
        config.productId = "BABY_UPPER"
        btUsizy.initialize(config)
        
        self.view.addSubview(btUsizy)
    }


}

