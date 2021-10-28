//
//  ConversionViewController.swift
//  WorldTrotter-“Abdulaziz_Hassuin”-iter1
//
//  Created by azooz alhwiti on 22/03/1443 AH.
//

import UIKit

class ConversionViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        var randomColor :CGFloat {
            CGFloat(Float.random(in: 0.0...1.0))
        }
        view.backgroundColor = UIColor(red: randomColor, green: randomColor, blue: randomColor, alpha: 1.0)
    }

}
