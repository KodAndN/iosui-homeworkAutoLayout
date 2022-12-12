//
//  Photo.swift
//  Navigation3
//
//  Created by Андрей Кодочигов on 04.12.2022.
//

import UIKit
struct Photo {
  var author: String
  var image: String
 
    static func makeMockModel() -> [Photo] {
        var model = [Photo]()
        model.append(Photo(author: "Street Art, Photo 1", image: "img1"))
        model.append(Photo(author: "Street Art, Photo 2", image: "img2"))
        model.append(Photo(author: "Street Art, Photo 3", image: "img3"))
        model.append(Photo(author: "Street Art, Photo 4", image: "img4"))
        model.append(Photo(author: "Street Art, Photo 5", image: "img5"))
        model.append(Photo(author: "Street Art, Photo 6", image: "img6"))
        model.append(Photo(author: "Street Art, Photo 7", image: "img7"))
        model.append(Photo(author: "Street Art, Photo 8", image: "img8"))
        model.append(Photo(author: "Street Art, Photo 9", image: "img9"))
        model.append(Photo(author: "Street Art, Photo 10", image: "img10"))
        model.append(Photo(author: "Street Art, Photo 11", image: "img11"))
        model.append(Photo(author: "Street Art, Photo 12", image: "img12"))
        model.append(Photo(author: "Street Art, Photo 13", image: "img13"))
        model.append(Photo(author: "Street Art, Photo 14", image: "img14"))
        model.append(Photo(author: "Street Art, Photo 15", image: "img15"))
        model.append(Photo(author: "Street Art, Photo 16", image: "img16"))
        model.append(Photo(author: "Street Art, Photo 17", image: "img17"))
        model.append(Photo(author: "Street Art, Photo 18", image: "img18"))
        model.append(Photo(author: "Street Art, Photo 19", image: "img19"))
        model.append(Photo(author: "Street Art, Photo 20", image: "img20"))
        return model
    }
}
