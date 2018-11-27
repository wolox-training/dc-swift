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
        btnAddToWishlist.layer.cornerRadius = 20
        btnAddToWishlist.layer.borderWidth = 1
        btnAddToWishlist.layer.borderColor = UIColor(red:0, green:0.68, blue:0.93, alpha:1).cgColor
        
        btnRent.layer.cornerRadius = 20
        let gradient = CAGradientLayer()
        gradient.frame = CGRect(x: 0, y: 0, width: 275, height: 44)
        gradient.colors = [
            UIColor(red:0, green:0.68, blue:0.93, alpha:1).cgColor,
            UIColor(red:0.22, green:0.8, blue:0.8, alpha:1).cgColor]
        gradient.locations = [0, 1]
        gradient.startPoint = CGPoint(x: 0.06, y: 0.5)
        gradient.endPoint = CGPoint(x: 1, y: 0.5)
        gradient.cornerRadius = 20
        btnRent.layer.addSublayer(gradient)
    }
}
