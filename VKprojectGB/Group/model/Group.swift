//
//  Group.swift
//  VKprojectGB
//
//  Created by Олег Черников on 14.04.2022.
//

import Foundation
import UIKit

class Group{
    let image: UIImage?
    let name: String
    let desc: String?
    
    init(image: UIImage? = nil, name: String, desc: String? = nil){
        self.image = image
        self.name = name
        self.desc = desc
    }
}
