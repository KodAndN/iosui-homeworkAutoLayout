//
//  ProfileViewControllerDataSource.swift
//  Navigation3
//
//  Created by Андрей Кодочигов on 11.12.2022.
//

import Foundation

protocol ProfileViewControllerDataSource: AnyObject {
    func postViewed(viewes: Int)
    func postLiked(likes: Int, isLike: Bool)
}
