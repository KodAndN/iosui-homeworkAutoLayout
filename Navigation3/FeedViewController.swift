//
//  FeedViewController.swift
//  Navigation3
//
//  Created by Андрей Кодочигов on 28.11.2022.
//

import UIKit

class FeedViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemIndigo
        makeButton()
    }
    private func makeButton() {
        let button = UIButton(frame: CGRect(x: 0, y: 0, width: 200, height: 40))
        button.center = view.center
        button.setTitle("Post", for: .normal)
        button.backgroundColor = .black
        button.addTarget(self, action: #selector(tapAction), for: .touchDown)
        view.addSubview(button)
    }
    @objc private func tapAction() {
        let postVC = PostViewController()
        postVC.navigationItem.title = postVC.post.title
        navigationController?.pushViewController(postVC, animated: true)
    }
}
