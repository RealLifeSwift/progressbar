//Created by Real Life Swift on 01/03/2019

import UIKit

class ViewController: UIViewController {

  @IBOutlet weak var progressBar: ProgressBar!
  
  var countFired: CGFloat = 0
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
    
    Timer.scheduledTimer(withTimeInterval: 0.1, repeats: true) { (timer) in
      self.countFired += 1
      
      DispatchQueue.main.async {
        self.progressBar.progress = min(0.03 * self.countFired, 1)
        
        if self.progressBar.progress == 1 {
          timer.invalidate()
        }
      }
    }
  }

}

