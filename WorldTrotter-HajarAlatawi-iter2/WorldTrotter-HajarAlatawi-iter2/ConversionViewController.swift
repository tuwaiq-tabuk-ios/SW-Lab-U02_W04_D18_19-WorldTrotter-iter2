

import UIKit

class ConversionViewController: UIViewController {
  
  override func loadView() {
    view = UIView()
    view.backgroundColor = UIColor(red: 0.96, green: 0.96, blue: 0.95, alpha: 1.00)
    
    let numberTop = CustomLabel (withText: "212", size: 70)
    numberTop.translatesAutoresizingMaskIntoConstraints = false
    
    let degreesFahrenheit = CustomLabel(withText: "degrees Fahrenheit", size: 36)
    degreesFahrenheit.translatesAutoresizingMaskIntoConstraints = false
    
    let isReally = CustomLabel(withText: "is really", size: 36, color: UIColor.black)
    isReally.translatesAutoresizingMaskIntoConstraints = false
    
    let numberBottom = CustomLabel(withText: "100", size: 70)
    numberBottom.translatesAutoresizingMaskIntoConstraints = false
    
    let degreesCelsius = CustomLabel(withText: "degrees Celsius", size: 36)
    degreesCelsius.translatesAutoresizingMaskIntoConstraints = false
    
    view.addSubview(numberTop)
    view.addSubview(degreesFahrenheit)
    view.addSubview(isReally)
    view.addSubview(numberBottom)
    view.addSubview(degreesCelsius)
    
    let TNTopConstraint = numberTop.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 8)
    let TNXConstraint = numberTop.centerXAnchor.constraint(equalTo: view.centerXAnchor)
    TNTopConstraint.isActive = true
    TNXConstraint.isActive = true
    
    let DFTopContraint = degreesFahrenheit.topAnchor.constraint(equalTo: numberTop.bottomAnchor, constant: 8)
    let DFXConstraint = degreesFahrenheit.centerXAnchor.constraint(equalTo: numberTop.centerXAnchor)
    DFTopContraint.isActive = true
    DFXConstraint.isActive = true
    
    let IRTopConstraint = isReally.topAnchor.constraint(equalTo: degreesFahrenheit.bottomAnchor, constant: 8)
    let IRXConstraint = isReally.centerXAnchor.constraint(equalTo: numberTop.centerXAnchor)
    IRTopConstraint.isActive = true
    IRXConstraint.isActive = true
    
    let BNTopConstraint = numberBottom.topAnchor.constraint(equalTo: isReally.bottomAnchor, constant: 8)
    let BNXConstraint = numberBottom.centerXAnchor.constraint(equalTo: numberTop.centerXAnchor)
    BNTopConstraint.isActive = true
    BNXConstraint.isActive = true
    
    let DCTopConstraint = degreesCelsius.topAnchor.constraint(equalTo: numberBottom.bottomAnchor, constant: 8)
    let DCXConstraint = degreesCelsius.centerXAnchor.constraint(equalTo: numberTop.centerXAnchor)
    DCTopConstraint.isActive = true
    DCXConstraint.isActive = true
  }
  
  
  override func viewDidLoad() {
    super.viewDidLoad()
    print("ConversionViewController loaded its view.")
  }
  
  
  override func viewWillAppear(_ animated: Bool) {
    
    let color = UIColor (red: CGFloat(Double(arc4random_uniform(101)) / 100.0),
                         green: CGFloat(Double(arc4random_uniform(101)) / 100.0),
                         blue: CGFloat(Double(arc4random_uniform(101)) / 100.0),
                         alpha: 1.0)
    
    view.backgroundColor = color
  }
}

typealias CustomLabel = UILabel


extension CustomLabel {
  convenience init(withText text: String, size font: CGFloat, color: UIColor = UIColor(red: 0.88, green: 0.35, blue: 0.16, alpha: 1.00)) {
    self.init()
    self.text = text
    self.font = UIFont.systemFont(ofSize: font, weight: .regular)
    self.textColor = color
  }

}

