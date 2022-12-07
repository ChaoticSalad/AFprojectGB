//
//  UserVK.swift
//  VKprojectGB
//
//  Created by Олег Черников on 05.12.2022.
//

import Foundation

class UserVK: Decodable{
    let id: Int
    let photo: String?
    
    enum CodingKeys: String, CodingKey{
        case id
        case photo = "photo_100"
    }
}
