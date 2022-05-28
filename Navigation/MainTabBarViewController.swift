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
        view.backgroundColor = .gray
        
        // Do any additional setup after loading the view.
    }
    
    
    private func setupControllers(){
       // let tabBarController = UITabBarController()
        
        let feedViewController = FeedViewController()
        let profileViewController = ProfileViewController()
        let profileNavController = UINavigationController(rootViewController: profileViewController)
        let feedNavController = UINavigationController(rootViewController: feedViewController)
       
        feedViewController.tabBarItem.title = "Feed"
        feedViewController.tabBarItem.image = UIImage(systemName: "list.bullet.rectangle.portrait")
        profileViewController.tabBarItem.title = "Profile"
        profileViewController.tabBarItem.image = UIImage(systemName: "house.circle.fill")
        
        viewControllers = [profileNavController,feedNavController]
    }

}
