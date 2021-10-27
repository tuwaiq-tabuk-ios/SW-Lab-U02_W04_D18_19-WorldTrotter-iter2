


// with out slack


import UIKit

class ViewController: UIViewController {
//
//
  override func viewDidLoad() {
    
    let gradientLayer = CAGradientLayer()
    gradientLayer.frame = self.view.bounds
    gradientLayer.colors = [UIColor.green.cgColor,
                            UIColor.yellow.cgColor,
                            UIColor.orange.cgColor,
                            UIColor.red.cgColor]
    self.view.layer.insertSublayer(gradientLayer, at: 0)
  }}
