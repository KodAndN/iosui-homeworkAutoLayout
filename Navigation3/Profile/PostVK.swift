//
//  PostTableViewCell.swift
//  Navigation3
//
//  Created by Андрей Кодочигов on 01.12.2022.
//

import UIKit

struct PostVK {
    let author: String
    let description: String
    let image: String
    let like: Int
    let view: Int

    static func makePost() -> [PostVK] {
        var model = [PostVK]()
        
        model.append(PostVK(author: "В Мире Животных", description: "Кот", image: "img", like: 2, view: 12))
        model.append(PostVK(author: "Андрей", description: "Андрей", image: "Photo1", like: 231, view: 12345))
        
        return model
    }
}
