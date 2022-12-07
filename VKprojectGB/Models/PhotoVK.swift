//
//  Photo.swift
//  VKprojectGB
//
//  Created by Олег Черников on 05.12.2022.
//

import Foundation

class PhotoVK: Decodable{
    let id: Int
    let album_id: Int
    
    enum CodingKeys: String, CodingKey{
        case id
        case album_id
    }
}
