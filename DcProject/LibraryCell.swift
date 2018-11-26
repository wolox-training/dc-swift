//
//  LibraryCell.swift
//  DcProject
//
//  Created by Daniel Andres Charry on 16/11/18.
//  Copyright © 2018 Wolox. All rights reserved.
//

import Foundation
import UIKit
import WolmoCore
import Kingfisher

public class LibraryCell: UITableViewCell, NibLoadable {
    
    @IBOutlet weak var bookImage: UIImageView!
    @IBOutlet weak var bookTitle: UILabel!
    @IBOutlet weak var bookAuthor: UILabel!
    
    func confingCell(book: Book) {
        
        bookTitle.text = book.title
        bookAuthor.text = book.author
        
        if let url = URL(string: book.image) {
            let resource = ImageResource(downloadURL: url)
            bookImage.kf.indicatorType = .activity
            bookImage.kf.setImage(with: resource, options: [.transition(ImageTransition.fade(1))])
        } else {
            bookImage.image = #imageLiteral(resourceName: "book")
        }
        
    }
}
