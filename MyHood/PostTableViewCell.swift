//
//  PostTableViewCell.swift
//  MyHood
//
//  Created by newmac on 4/19/17.
//  Copyright © 2017 Sachin. All rights reserved.
//

import UIKit

class PostTableViewCell: UITableViewCell {

    @IBOutlet weak var postImage: UIImageView!
    @IBOutlet weak var titleLable: UILabel!
    @IBOutlet weak var descLable: UILabel!
    
    
    func updateCell(post: Post) {
        
        titleLable.text = post.title
        descLable.text = post.postDesc
        
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    

    
}
