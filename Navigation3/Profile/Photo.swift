//
//  Photo.swift
//  Navigation3
//
//  Created by Андрей Кодочигов on 04.12.2022.
//

import UIKit

struct Photo {
  
  let author: String
  let image: String
 
    static func makeMockModel() -> [Photo] {
        var photo = [Photo]()
        photo.append(Photo(author: "Street Art, Photo 1", image: "img1"))
        photo.append(Photo(author: "Street Art, Photo 2", image: "img2"))
        photo.append(Photo(author: "Street Art, Photo 3", image: "img3"))
        photo.append(Photo(author: "Street Art, Photo 4", image: "img4"))
        photo.append(Photo(author: "Street Art, Photo 5", image: "img5"))
        photo.append(Photo(author: "Street Art, Photo 6", image: "img6"))
        photo.append(Photo(author: "Street Art, Photo 7", image: "img7"))
        photo.append(Photo(author: "Street Art, Photo 8", image: "img8"))
        photo.append(Photo(author: "Street Art, Photo 9", image: "img9"))
        photo.append(Photo(author: "Street Art, Photo 10", image: "img10"))
        photo.append(Photo(author: "Street Art, Photo 11", image: "img11"))
        photo.append(Photo(author: "Street Art, Photo 12", image: "img12"))
        photo.append(Photo(author: "Street Art, Photo 13", image: "img13"))
        photo.append(Photo(author: "Street Art, Photo 14", image: "img14"))
        photo.append(Photo(author: "Street Art, Photo 15", image: "img15"))
        photo.append(Photo(author: "Street Art, Photo 16", image: "img16"))
        photo.append(Photo(author: "Street Art, Photo 17", image: "img17"))
        photo.append(Photo(author: "Street Art, Photo 18", image: "img18"))
        photo.append(Photo(author: "Street Art, Photo 19", image: "img19"))
        photo.append(Photo(author: "Street Art, Photo 20", image: "img20"))
        return photo
    }
}
