import UIKit

class mynew: UIViewController {
    
    
    
    let sublayer = CALayer()
        
    sublayer.backgroundColor = UIColor.brown.cgColor
    sublayer.shadowOffset = CGSize(width: 0.0, height: 3.0)
    sublayer.shadowRadius = 5.0
    sublayer.shadowOpacity = 1.0
    sublayer.frame = CGRect(x: 10, y: 10, width: 100, height: 100)
        
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "Profile"
        view.layer.addSublayer(sublayer)

        view.backgroundColor = .yellow
    }
    

 

}
