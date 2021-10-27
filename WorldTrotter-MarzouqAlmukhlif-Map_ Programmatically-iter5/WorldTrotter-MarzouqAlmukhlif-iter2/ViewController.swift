//
//  ViewController.swift
//  WorldTrotter-MarzouqAlmukhlif-iter1
//
//  Created by Marzouq Almukhlif on 18/03/1443 AH.
//

import UIKit

class ViewController: UIViewController {
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
  }
  
  
  override func viewWillAppear(_ animated: Bool) {
    var randomGenerateColor: CGFloat {
      CGFloat(Float.random(in: 0.0...1.0))
    }
    let colorTop:UIColor =  UIColor(red: 0.89, green: 0.41, blue: randomGenerateColor, alpha: 1.00)
    
    view.backgroundColor = colorTop

  

  }
  
}

