//
//  MainTabBarController.swift
//  Navigation3
//
//  Created by Андрей Кодочигов on 29.11.2022.
//

import UIKit

class MainTabBarController: UITabBarController {
    
    let colorSet = UIColor(hex:0x4885CC)
    let feedVC = FeedViewController()
    let logIn = LogInViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
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

extension UIColor {
     convenience init(hex: Int) {
         let components = (
             R: CGFloat((hex >> 16) & 0xff) / 255,
             G: CGFloat((hex >> 08) & 0xff) / 255,
             B: CGFloat((hex >> 00) & 0xff) / 255
         )
         self.init(red: components.R, green: components.G, blue: components.B, alpha: 1)
     }
 }
