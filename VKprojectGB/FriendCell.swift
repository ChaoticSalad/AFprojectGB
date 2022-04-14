//
//  FriendCell.swift
//  VKprojectGB
//
//  Created by Олег Черников on 14.04.2022.
//

import UIKit

class FriendCell: UITableViewCell {

    @IBOutlet weak var friendImageView: UIImageView!
    @IBOutlet weak var friendNameLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
