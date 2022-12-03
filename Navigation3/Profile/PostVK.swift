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
        
        model.append(PostVK(author: "В Мире Животных", description: "Кот", image: "img", like: 210003, view: 100500))
        model.append(PostVK(author: "Андрей", description: "Андрей", image: "Photo1", like: 100499, view: 100500))
        model.append(PostVK(author: "Все инструменты", description: "MAKITA", image: "ВсеИ", like: 100488, view: 100500))
        model.append(PostVK(author: "Cannondale BIKE", description: "2023 Cannondale Topstone Carbon Rival AXS review", image: "Cannondale-Topstone-Carbon-Rival-AXS-01-fb9ae59", like: 100500, view: 100500))
        return model
    }
}
