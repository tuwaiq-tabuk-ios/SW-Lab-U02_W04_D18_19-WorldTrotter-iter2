//
//  ViewController.swift
//  WorldTrotter-Atheer Abdullah-iter2
//
//  Created by Atheer abdullah on 20/03/1443 AH.
//

import UIKit

class ViewwController: UIViewController {

  
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
    
    let gradientLayer = CAGradientLayer()
                gradientLayer.frame = self.view.bounds
                gradientLayer.colors = [UIColor.red.cgColor,
                                        UIColor.purple.cgColor,
                                        UIColor.blue.cgColor,
                                        UIColor.green.cgColor,
                                        UIColor.yellow.cgColor]
                self.view.layer.insertSublayer(gradientLayer, at: 0)  // << here !!
            }
  }




