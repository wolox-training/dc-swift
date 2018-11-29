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
        commentText.text = comment.content
    }
    
}
