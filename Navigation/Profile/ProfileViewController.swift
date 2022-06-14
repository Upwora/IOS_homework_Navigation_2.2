//
//  TestUIviewController.swift
//  Navigation
//
//  Created by V SEO on 10.06.2022.
//

import UIKit

class ProfileViewController: UIViewController {
let profileView = ProfileHeaderView()
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        view.addSubview(profileView)
        view.backgroundColor = .lightGray
        navigationController?.navigationBar.backgroundColor = .white
        navigationController?.navigationBar.isTranslucent = false
      
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
    }
    
    override func viewWillLayoutSubviews(){
        super.viewWillLayoutSubviews()
        profileView.frame = view.frame
        
        let screenSize: CGRect = UIWindow().frame
        print(screenSize.width, screenSize.height)
             
    }
    
        
        
    }
