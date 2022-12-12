//
//  DetailPostViewDelegate.swift
//  Navigation3
//
//  Created by Андрей Кодочигов on 11.12.2022.
//

import Foundation

protocol DetailPostViewDelegate: AnyObject {
    func postViewed(index: Int, viewes: Int)
    func likeDetailPostPressed(index: Int, likes: Int, isLike: Bool)
}
