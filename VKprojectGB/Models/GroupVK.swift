//
//  GroupVK.swift
//  VKprojectGB
//
//  Created by Олег Черников on 05.12.2022.
//

import Foundation

class GroupVK: Decodable{
    let id: Int
    let name: String
    
    enum CodingKeys: String, CodingKey{
        case id
        case name
    }
}
