//
//  MainTabBarController.swift
//  Navigation3
//
//  Created by Андрей Кодочигов on 29.11.2022.
//

import UIKit

class MainTabBarController: UITabBarController {

    let feedVC = FeedViewController()
    let profileVC = ProfileViewController()
    let postVC = PostViewController()
    var post = Post(title: "Post")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupControllers()
        
    }
   
    private func setupControllers() {
        let feedNavController = UINavigationController(rootViewController: feedVC)
        let profileNavController = UINavigationController(rootViewController: profileVC)
        
        feedVC.tabBarItem.title = "Feed"
        feedVC.tabBarItem.image = UIImage(systemName: "house.fill")
        feedVC.navigationItem.title = "Feed"
        
        profileVC.tabBarItem.title = "Profile"
        profileVC.tabBarItem.image = UIImage(systemName: "person.fill")
        profileVC.navigationItem.title = "Profile"
        
        
        viewControllers = [feedNavController, profileNavController]
        
        UITabBar.appearance().barTintColor = UIColor.white
        UITabBar.appearance().backgroundColor = .black
       
    }
    
}
