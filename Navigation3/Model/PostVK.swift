//
//  PostTableViewCell.swift
//  Navigation3
//
//  Created by Андрей Кодочигов on 01.12.2022.
//

import UIKit

struct PostVK {
    var author: String
    var description: String
    var image: String
    var likes: Int
    var views: Int
    var isLiked: Bool

    static func makeMockModel() -> [PostVK] {
        var model = [PostVK]()
        
        model.append(PostVK(author: "В Мире Животных", description: "Кот", image: "img", likes: 210003, views: 100500, isLiked: false))
        model.append(PostVK(author: "Андрей", description: "Андрей", image: "Photo1", likes: 100499, views: 100500, isLiked: false))
        model.append(PostVK(author: "Все инструменты", description: "MAKITA", image: "ВсеИ", likes: 100488, views: 100500, isLiked: false))
        model.append(PostVK(author: "Cannondale BIKE", description: "2023 Cannondale Topstone Carbon Rival AXS review", image: "Cannondale-Topstone-Carbon-Rival-AXS-01-fb9ae59", likes: 100500, views: 100500, isLiked: false))
        return model
    }
}
