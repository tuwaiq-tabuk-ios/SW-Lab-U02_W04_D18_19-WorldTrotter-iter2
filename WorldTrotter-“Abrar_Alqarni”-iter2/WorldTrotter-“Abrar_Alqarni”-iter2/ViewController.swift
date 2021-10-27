//
//  ViewController.swift
//  TriviaMultipleChoice-“Abrar_Bararkat“ 2
//
//  Created by ABRAR ALQARNI on 15/03/1443 AH.
//

import UIKit

class ViewController: UIViewController {
  
    
  override func viewWillAppear(_: Bool) {
     super.viewWillAppear(true)
     let red = CGFloat(Float(arc4random()) / (Float(UINT32_MAX)))
     let blue = CGFloat(Float(arc4random()) / (Float(UINT32_MAX)))
     let green = CGFloat(Float(arc4random()) / (Float(UINT32_MAX)))
     print(red, blue, green)
     view.backgroundColor = UIColor(red: red, green: green, blue: blue, alpha: 1.0)
   }
  
  
}
