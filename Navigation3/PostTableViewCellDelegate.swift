//
//  PostTableViewCellDelegate.swift
//  Navigation3
//
//  Created by Андрей Кодочигов on 11.12.2022.
//

import Foundation

protocol PostTableViewCellDelegate: AnyObject {
    func likePostPressed(index: Int, likes: Int, isLike: Bool)
}
