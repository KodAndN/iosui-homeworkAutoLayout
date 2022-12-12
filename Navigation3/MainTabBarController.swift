//
//  MainTabBarController.swift
//  Navigation3
//
//  Created by Андрей Кодочигов on 29.11.2022.
//

import UIKit

class MainTabBarController: UITabBarController {
    
    let feedVC = FeedViewController()
    let logIn = LogInViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        setupControllers()
        self.view.tintColor = UIColor(ciColor: .init(color: colorSet))
        
    }
   
    private func setupControllers() {
        let feedNavController = UINavigationController(rootViewController: feedVC)
        let profileNavController = UINavigationController(rootViewController: logIn)
        
        feedVC.tabBarItem.title = "Feed"
        feedVC.tabBarItem.image = UIImage(systemName: "house.fill")
        feedVC.navigationItem.title = "Feed"
        
        logIn.tabBarItem.title = "Profile"
        logIn.tabBarItem.image = UIImage(systemName: "person.fill")
        logIn.navigationController?.navigationBar.isHidden = true
        logIn.navigationItem.title = "Profile"
        
        
        viewControllers = [feedNavController, profileNavController]
        
        UITabBar.appearance().barTintColor = UIColor.white
        UITabBar.appearance().backgroundColor = .black
       
    }
    
}
