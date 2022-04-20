//
//  LikeControl.swift
//  VKprojectGB
//
//  Created by Олег Черников on 20.04.2022.
//

import UIKit

class LikeControl: UIControl {

    @IBOutlet var likePicture: UIImageView!
    
    var liked: Bool = false
    
    override func awakeFromNib() {
        likePicture.backgroundColor = .clear
        likePicture.tintColor = .purple
    }
    

}
