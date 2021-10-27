//
//  2ViewController.swift
//  WorldTrotter-MarzouqAlmukhlif-iter2
//
//  Created by Marzouq Almukhlif on 21/03/1443 AH.
//

import UIKit

class ConversionViewController: UIViewController {
  var stckView: UIStackView!
  
  override func loadView() {
    
    let frameStackView = CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
    
    let stckView = UIStackView(frame: frameStackView)
    stckView.axis = .vertical
    stckView.alignment = .fill
    stckView.distribution = .fillEqually
    view = stckView
    
    
    let firstLabel = UILabel()
    firstLabel.text = "212"
    firstLabel.font = firstLabel.font.withSize(70.0)
    firstLabel.textColor = .white
    firstLabel.textAlignment = .center
    stckView.addArrangedSubview(firstLabel)
    
    let secondLabel = UILabel()
    secondLabel.text = "degrees Fahrenheit"
    secondLabel.font = firstLabel.font.withSize(36.0)
    secondLabel.textColor = .white
    secondLabel.textAlignment = .center
    stckView.addArrangedSubview(secondLabel)
    
    let thirdLabel = UILabel()
    thirdLabel.text = "is really"
    thirdLabel.font = firstLabel.font.withSize(36.0)
    thirdLabel.textColor = .black
    thirdLabel.textAlignment = .center
    stckView.addArrangedSubview(thirdLabel)
    
    let fourthLabel = UILabel()
    fourthLabel.text = "100"
    fourthLabel.font = firstLabel.font.withSize(70.0)
    fourthLabel.textColor = .white
    fourthLabel.textAlignment = .center
    stckView.addArrangedSubview(fourthLabel)
    
    let fifthLabel = UILabel()
    fifthLabel.text = "degrees Celsius"
    fifthLabel.font = firstLabel.font.withSize(36.0)
    fifthLabel.textColor = .white
    fifthLabel.textAlignment = .center
    stckView.addArrangedSubview(fifthLabel)
    
  }
  
  
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

  override func viewWillAppear(_ animated: Bool) {
    var randomGenerateColor: CGFloat {
      CGFloat(Float.random(in: 0.0...1.0))
    }
    let colorTop:UIColor =  UIColor(red: 0.89, green: 0.41, blue: randomGenerateColor, alpha: 1.00)
    
    view.backgroundColor = colorTop

  

  }

}
