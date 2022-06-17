//
//  MainTabBar.swift
//  Navigation
//
//  Created by V SEO on 28.05.2022.
//

import UIKit

class MainTabBarViewController: UITabBarController {
    
    init() {
        super.init(nibName: nil, bundle: nil)
        self.setupControllers()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
            view.backgroundColor = .white
            
    }
    

    
     func setupControllers(){
        
        let profileViewController = LogInViewController()
        let profileNavController = UINavigationController(rootViewController: profileViewController)
         
        profileViewController.tabBarItem.title = "Profile"
        profileViewController.tabBarItem.image = UIImage(systemName: "house.circle.fill")
        
         
        viewControllers = [profileNavController]
        
        
    }

}
