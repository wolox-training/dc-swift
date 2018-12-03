//
//  CommentCell.swift
//  DcProject
//
//  Created by Daniel Andres Charry on 28/11/18.
//  Copyright © 2018 Wolox. All rights reserved.
//

import Foundation
import UIKit
import WolmoCore
import Kingfisher

public class CommentCell: UITableViewCell, NibLoadable {
    
    @IBOutlet weak var commentImage: UIImageView!
    @IBOutlet weak var commentName: UILabel!
    @IBOutlet weak var commentText: UILabel!
    
    func configCell(comment: Comment) {
        
        let username = comment.user.username
        let startIndex = username.index(username.startIndex, offsetBy: 0)
        let endIndex = username.index(username.startIndex, offsetBy: 1)
        let letter = String(username[startIndex...endIndex]).capitalized
        
        setUpComment()
        commentText.text = comment.content
        commentName.text = comment.user.username
        commentImage.image = letter.toImage(fontSize: 20.0)
    }
    
    func setUpComment() {
        
        commentImage.round(colorBorder: UIColor(red: 0, green: 0.68, blue: 0.93, alpha: 1), border: 1.0, radius: 2.0)
        
    }
    
}
