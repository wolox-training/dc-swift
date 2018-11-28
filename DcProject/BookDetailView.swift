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
    @IBOutlet weak var btnAddToWishlist: UIButton!
    @IBOutlet weak var btnRent: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setUpViews()
    }
}

private extension BookDetailView {
    
    private func setUpViews() {
        btnAddToWishlist.round(color: UIColor(red: 0, green: 0.68, blue: 0.93, alpha: 1), border: 1.0, radius: 2.0)
        btnRent.gradient(border: 0.0, radius: 2.0)
    }
}
