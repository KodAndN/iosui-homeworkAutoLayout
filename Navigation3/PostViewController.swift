//
//  PostViewController.swift
//  Navigation3
//
//  Created by Андрей Кодочигов on 28.11.2022.
//

import UIKit

class PostViewController: UIViewController {
    var post = Post(title: "Post")
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .lightGray
        makeBarItem()
        
    }
    private func makeBarItem() {
        let barItem = UIBarButtonItem(title: "Дальше", style: .plain, target: self, action: #selector(tapAction))
        navigationItem.rightBarButtonItem = barItem
    }
    @objc private func tapAction() {
        let infoVC = InfoViewController()
        //infoVC.title = "New"
        navigationController?.pushViewController(infoVC, animated: true)
    }
}
