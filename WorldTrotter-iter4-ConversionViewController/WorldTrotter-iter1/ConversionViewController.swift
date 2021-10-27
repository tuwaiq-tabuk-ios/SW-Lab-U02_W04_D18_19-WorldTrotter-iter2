//
//  ConversionViewController.swift
//  WorldTrotter-iter1
//
//  Created by عبدالعزيز البلوي on 21/03/1443 AH.
//

import UIKit

class ConversionViewController: UIViewController {

  
  override func loadView() {
    let secondView =  UIStackView()
    secondView.backgroundColor = .tertiarySystemGroupedBackground
    secondView.axis = .vertical //عمودي او افقي
    secondView.alignment = .fill//الحجم
    secondView.distribution = .fillEqually//ملئ بالتسوي
    view = secondView

    let first = UILabel()
    first.text = "212"
    first.textColor = .orange
    first.textAlignment = .center
    secondView.addArrangedSubview(first)

    let second = UILabel()

    second.text = "Degeers Fahrenheit"
    second.textColor = .orange
    second.textAlignment = .center

    secondView.addArrangedSubview(second)

    let third = UILabel()
    third.text = "is reall"
    third.textColor = .blue
    third.textAlignment = .center
    secondView.addArrangedSubview(third)


    let Fourthly = UILabel()
    Fourthly.text = "100"
    Fourthly.textColor = .orange
    Fourthly.textAlignment = .center
    secondView.addArrangedSubview(Fourthly)


    let V = UILabel()
    V.text = "Degeers Celsius"
    V.textColor = .orange
    V.textAlignment = .center
    secondView.addArrangedSubview(V)
    
  }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
