//
//  ViewController.swift
//  WorldTrotter-MahaNasser-iter2
//
//  Created by Maha S on 26/10/2021.
//
import UIKit

class ConversionViewController: UIViewController {
    var randomFloat: CGFloat {
        return CGFloat(Float.random(in: 0.0...1.0))
    }
  
    override func viewDidLoad() {
        super.viewDidLoad()
        print("ConversionViewController loaded its view.")
    }
    
    override func viewWillAppear(_ animated: Bool) {
      
        let randomColor = UIColor(red: randomFloat,
                                  green: randomFloat,
                                  blue: randomFloat,
                                  alpha: 1.0)
      
        view.backgroundColor = randomColor
    }
}
