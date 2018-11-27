//
//  BookDetailView.swift
//  DcProject
//
//  Created by Daniel Andres Charry on 22/11/18.
//  Copyright © 2018 Wolox. All rights reserved.
//

import Foundation
import UIKit
import WolmoCore

final class BookDetailView: UIView, NibLoadable {
    
    @IBOutlet weak var bookDetailName: UILabel!
    @IBOutlet weak var bookDetailStatus: UILabel!
    @IBOutlet weak var bookDetailAuthor: UILabel!
    @IBOutlet weak var bookDetailYear: UILabel!
    @IBOutlet weak var bookDetailGenre: UILabel!
    @IBOutlet weak var bookDetailImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setUpViews()
    }
    
}

private extension BookDetailView {
    
    private func setUpViews() {
        
    }
    
}
