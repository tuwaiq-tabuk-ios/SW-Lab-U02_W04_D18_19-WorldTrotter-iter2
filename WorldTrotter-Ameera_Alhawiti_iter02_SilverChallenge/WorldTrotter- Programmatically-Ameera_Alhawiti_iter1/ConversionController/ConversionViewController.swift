import UIKit

class ConversionViewController: UIViewController {
  
  
  override func viewDidLoad() {
    super.viewDidLoad()
    print("ConversionViewController loaded its view.")
    }
//Press and hold on Converd Scene to get Random Color
  override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
    self.view.backgroundColor = randomColor()
  }
  
  
  func randomColor() -> UIColor{
    let red = CGFloat(arc4random_uniform(256)) / 255.0
    let green = CGFloat(arc4random_uniform(256)) / 255.0
    let blue = CGFloat(arc4random_uniform(256)) / 255.0
    return UIColor(red: red, green: green, blue: blue, alpha: 1.0)
  }
}

