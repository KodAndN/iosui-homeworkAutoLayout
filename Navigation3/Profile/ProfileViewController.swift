//
//  ProfileViewController.swift
//  Navigation3
//
//  Created by Андрей Кодочигов on 28.11.2022.
//

import UIKit

class ProfileViewController: UIViewController {
    
    var profileHeaderView = ProfileHeaderView()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        profileHeaderView.translatesAutoresizingMaskIntoConstraints = false
        profileHeaderView.backgroundColor = .lightGray

        viewConstraints()
    }
    
    private lazy var newButton: UIButton = {
        let newButton = UIButton()
        newButton.translatesAutoresizingMaskIntoConstraints = false
        newButton.backgroundColor = .systemRed
        newButton.setTitle("кнопка", for: .normal)
        newButton.setTitleColor(UIColor.white, for: .normal)
        newButton.addTarget(self, action: #selector(tapAction), for: .touchUpInside)
        return newButton
    }()
    
    @objc private func tapAction() {
        print("кнопка")
    }
    
    private func viewConstraints() {
        view.addSubview(profileHeaderView)
        view.addSubview(newButton)
        
        NSLayoutConstraint.activate([
            
            profileHeaderView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            profileHeaderView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            profileHeaderView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            profileHeaderView.heightAnchor.constraint(equalToConstant: 220),
            
            newButton.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            newButton.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            newButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor)
        ])
    }
    

   
}
