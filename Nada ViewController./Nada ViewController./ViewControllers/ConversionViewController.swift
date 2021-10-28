//
//  ConversionViewController.swift
//  Nada ViewController.
//
//  Created by apple on 21/03/1443 AH.
//

import Foundation
import UIKit
class ConversionViewController : UIViewController {
 
  @IBOutlet var rootView: UIView!
  
  override func viewDidAppear(_ animated: Bool) {
    let colors:[UIColor] = [.blue,.red,.darkGray]
    rootView.backgroundColor = colors[Int.random(in: 0...colors.count-1)]
  }
  
  
  override func viewDidLoad() {
    super.viewDidLoad()
     
    print("ConversionViewController loaded its view.")
  }
   
}
