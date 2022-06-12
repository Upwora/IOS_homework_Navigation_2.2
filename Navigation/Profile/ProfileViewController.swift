//
//  TestUIviewController.swift
//  Navigation
//
//  Created by V SEO on 10.06.2022.
//

import UIKit

class ProfileViewController: UIViewController {
let profileView = headerView()
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        print(#function)
        
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        profileView.layout()
        view.backgroundColor = .lightGray
        navigationController?.navigationBar.backgroundColor = .white
        navigationController?.navigationBar.isTranslucent = false
        navigationController?.navigationBar.isHidden = true

    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        view.addSubview(profileView)
        
    }
    override func viewWillLayoutSubviews(){
        super.viewWillLayoutSubviews()
        profileView.frame = view.frame
        let screenSize: CGRect = UIWindow().frame
        print(screenSize.width, screenSize.height)
             
    }
    
       
        
}
