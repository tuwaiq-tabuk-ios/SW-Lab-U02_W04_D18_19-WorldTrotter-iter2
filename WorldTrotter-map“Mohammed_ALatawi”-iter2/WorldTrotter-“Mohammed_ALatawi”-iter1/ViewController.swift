//
//  ViewController.swift
//  WorldTrotter-“Mohammed_ALatawi”-iter1
//
//  Created by محمد العطوي on 19/03/1443 AH.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
      
       /* let firstFrame = CGRect(x: 0,
                                y: 0,
                                width: UIScreen.main.bounds.width,
                                height: UIScreen.main.bounds.height)
        
        
        let rootView = UIStackView(frame: firstFrame)
        rootView.backgroundColor = .separator
        view.addSubview(rootView)
         
        let firstLapel = UILabel()
        firstLapel.backgroundColor = .brown
        firstLapel.text = "212"
        firstLapel.textAlignment = .center
        rootView.addArrangedSubview(firstLapel)
 */
        
        let gradient = CAGradientLayer()

                gradient.frame = view.bounds
            gradient.colors = [UIColor.blue.cgColor, UIColor.red.cgColor,UIColor.yellow.cgColor,UIColor.green.cgColor, UIColor.systemPink.cgColor,UIColor.systemIndigo.cgColor,UIColor.gray.cgColor]

                view.layer.insertSublayer(gradient, at: 0)

        
        
        
    }
   
   
}


