//
//  Post.swift
//  Navigation3
//
//  Created by Андрей Кодочигов on 28.11.2022.
//

import UIKit

struct Post {
    var author: String
    var description: String?
    var image: String
    var likes: Int
    var isLiked: Bool
    var views: Int
    
    static func makeMockModel() -> [Post] {
        var model = [Post]()
        model.append(Post(author: "Арктур Менгск", description: "Говорят, человек узнает себя только тогда, когда его лишают свободы. Интересно, насколько хорошо знаешь себя ты, арестант №626? Убийца, пират, предатель… Сегодня ты выходишь на свободу, но скоро ты поймёшь, что даже у свободы есть цена — твоя тюрьма всегда будет с тобой. Добро пожаловать в новую клетку...", image: "Mengsk", likes: 2460, isLiked: false, views: 2505))
        model.append(Post(author: "Джим Рейнор о Саре Керриган", description: "... В тот день началась наша революция. В день, когда Менгск уничтожил целую планету и назвал это «справедливостью...", image: "Kerrigan", likes: 2473 , isLiked: false, views: 2602))
        model.append(Post(author: "За АЙУР!", description: "Наш гордый народ был обречён на изгнание, но никто не разрушит наше единство, ибо нас связывает Кхала — священный союз всех наших мыслей и эмоций. Сегодня мы вернём родной мир! И с ним — наше наследие!", image: "For AIUR!", likes: 8671, isLiked: false, views: 13285))
        model.append(Post(author: "Артанис", description: " — Столько ребят погибло... воинов. \n — Смерть — судьба всех воинов. Судьба, которую вскоре можем встретить и мы. \n— Судьба — это не приговор.", image: "Artanis", likes: 1345, isLiked: false, views: 1986))
        
        return model
    }
}
