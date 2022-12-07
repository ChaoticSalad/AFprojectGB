//
//  ResponseVK.swift
//  VKprojectGB
//
//  Created by Олег Черников on 07.12.2022.
//

import Foundation


struct ResponseUsersVK: Decodable{
    let response: UsersVK
}

struct UsersVK: Decodable{
    let items: [UserVK]
}

struct ResponseGroupsVK: Decodable{
    let response: GroupsVK
}

struct GroupsVK: Decodable{
    let items: [GroupVK]
}

struct ResponsePhotosVK: Decodable{
    let response: PhotosVK
}

struct PhotosVK: Decodable{
    let items: [PhotoVK]
}
