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
        setupControllers()
        navigationItem.title = "Profile"
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
            view.backgroundColor = .white
<<<<<<< HEAD
        
=======
>>>>>>> 6f15d0b34be0775964bace96fe2e02c2fcdb3a2a
        
    }
    

    
     func setupControllers(){
       
        let profileViewController = ProfileViewController()
        let profileNavController = UINavigationController(rootViewController: profileViewController)
<<<<<<< HEAD
//        let feedViewController = FeedViewController()
//        let feedNavController = UINavigationController(rootViewController: feedViewController)
//
//        feedViewController.tabBarItem.title = "Feed"
//        feedViewController.tabBarItem.image = UIImage(systemName: "list.bullet.rectangle.portrait")
=======
        let feedViewController = FeedViewController()
        let feedNavController = UINavigationController(rootViewController: feedViewController)
         
        feedViewController.tabBarItem.title = "Feed"
        feedViewController.tabBarItem.image = UIImage(systemName: "list.bullet.rectangle.portrait")
>>>>>>> 6f15d0b34be0775964bace96fe2e02c2fcdb3a2a
        profileViewController.tabBarItem.title = "Profile"
        profileViewController.tabBarItem.image = UIImage(systemName: "house.circle.fill")
        
         
<<<<<<< HEAD
        viewControllers = [profileNavController]
=======
        viewControllers = [feedNavController,profileNavController]
>>>>>>> 6f15d0b34be0775964bace96fe2e02c2fcdb3a2a
        
        
    }

}
