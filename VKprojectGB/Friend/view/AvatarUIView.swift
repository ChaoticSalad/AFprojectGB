//
//  AvatarUIView.swift
//  VKprojectGB
//
//  Created by Олег Черников on 20.04.2022.
//

import UIKit

class AvatarUIView: UIView {

    @IBOutlet var avatarImageView: UIImageView!
    @IBOutlet var shadowAvatarView: UIView!

    var customShadowColor = UIColor.black
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        shadowAvatarView.layer.shadowColor = customShadowColor.cgColor
        shadowAvatarView.layer.shadowOffset = .zero
        shadowAvatarView.layer.shadowRadius = 8
        shadowAvatarView.layer.shadowOpacity = 0.8
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()

        shadowAvatarView.layer.cornerRadius = bounds.height/2
        avatarImageView.layer.cornerRadius = bounds.height/2
    }
    
    
}
