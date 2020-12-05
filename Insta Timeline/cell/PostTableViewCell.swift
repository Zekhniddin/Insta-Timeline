//
//  PostTableViewCell.swift
//  Insta Timeline
//
//  Created by Зехниддин on 12/5/20.
//

import UIKit

class PostTableViewCell: UITableViewCell {

    @IBOutlet var profileImageView: UIImageView!
    @IBOutlet var fullnameLabel: UILabel!
    @IBOutlet var timeLabel: UILabel!
    @IBOutlet var postImageView1: UIImageView!
    @IBOutlet var postImageView2: UIImageView!
    @IBOutlet var postImageView3: UIImageView!
    @IBOutlet var likesLabel: UILabel!
    @IBOutlet var postLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
