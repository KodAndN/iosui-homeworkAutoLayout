//
//  ProfileViewController.swift
//  Navigation3
//
//  Created by Андрей Кодочигов on 28.11.2022.
//

import UIKit

class ProfileViewController: UIViewController {

     private let postVk: [PostVK] = PostVK.makePost()

     private lazy var tableView: UITableView = {
         let tableView = UITableView(frame: .zero, style: .grouped)
         tableView.translatesAutoresizingMaskIntoConstraints = false
         tableView.dataSource = self
         tableView.delegate = self
         tableView.register(PostTableViewCell.self, forCellReuseIdentifier: PostTableViewCell.identifier)
         return tableView
     }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemGray6
        setupLayout()
    }
    
    private let profileHeaderView: ProfileHeaderView = {
        let profileHeaderView = ProfileHeaderView()
        profileHeaderView.backgroundColor = .systemGray6
        profileHeaderView.translatesAutoresizingMaskIntoConstraints = false
        return profileHeaderView
        }()
    
    private func setupLayout() {
        view.addSubview(tableView)
        
        NSLayoutConstraint.activate([
            tableView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            tableView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            tableView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor)
                 ])
             }
         }

extension ProfileViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat { UITableView.automaticDimension
              }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let profileHeader = ProfileHeaderView()
        return profileHeader
              }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat { return 220
              }
          }

extension ProfileViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int { return postVk.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: PostTableViewCell.identifier, for: indexPath) as! PostTableViewCell
        cell.setupCell(postVk[indexPath.row])
        return cell
    }
}
extension UIView {
    static var identifier: String {
        return String(describing: self)
        
    }
    
}
