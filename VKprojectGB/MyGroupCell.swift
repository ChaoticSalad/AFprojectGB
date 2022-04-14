//
//  MyGroupCell.swift
//  VKprojectGB
//
//  Created by Олег Черников on 14.04.2022.
//

import UIKit

class MyGroupCell: UITableViewCell {

    @IBOutlet weak var myGroupImageView: UIImageView!
    @IBOutlet weak var myGroupNameLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
