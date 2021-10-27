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
    
    // // color gradientLayer for background of stackView
    let colorTop =  UIColor(red: 1.00, green: 0.73, blue: 0.00, alpha: 1.00).cgColor
    let colorCenter = UIColor.white.cgColor
    let colorBottom = UIColor(red: 1.00, green: 0.66, blue: 0.27, alpha: 1.00).cgColor

    let gradientLayer = CAGradientLayer()
    gradientLayer.colors = [colorTop, colorCenter, colorBottom]
    gradientLayer.locations = [0.0, 0.5, 1.0]
    gradientLayer.frame = view.bounds
    view.layer.insertSublayer(gradientLayer, at:0)
  }
  
}

