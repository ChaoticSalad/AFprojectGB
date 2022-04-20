//
//  FriendCollectionViewCell.swift
//  VKprojectGB
//
//  Created by Олег Черников on 14.04.2022.
//

import UIKit

class FriendCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var imageFriendCellView: UIImageView!
    
    
    @IBOutlet var likeControl: LikeControl!
    @IBOutlet var likeContainerView: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        let tap = UITapGestureRecognizer(target: self, action: #selector(handleTap(_:)))
        tap.numberOfTapsRequired = 2
        likeContainerView.addGestureRecognizer(tap)
        
    }
    
    @objc func handleTap(_: UITapGestureRecognizer){
        likeControl.liked.toggle()
        
        if likeControl.liked{
            likeControl.likePicture.image = UIImage(systemName: "suit.heart.fill")
        }
        else{
            likeControl.likePicture.image = nil
        }
    }
}
