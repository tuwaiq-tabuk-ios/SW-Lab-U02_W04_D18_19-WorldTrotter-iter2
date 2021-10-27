//
//  ViewController.swift
//  NewWorldTrotter-Areej_Alanze
//
//  Created by A A on 20/03/1443 AH.
//

import UIKit

class ConversionViewController: UIViewController {
  
  var randomFloat: CGFloat {
    return CGFloat(Float.random(in: 0.0 ... 1.0))
  }
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
    print("ConversionViewController loaded its view")
  }
  
  override func viewWillAppear(_ animated: Bool) {
    
    let randomColor = UIColor(red: randomFloat,
                              green: randomFloat,
                              blue: randomFloat,
                              alpha: 1.0)
    
    view.backgroundColor = randomColor
  }
  
}

