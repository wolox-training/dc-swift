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
import Kingfisher

final class BookDetailView: UIView, NibLoadable {
    
    @IBOutlet weak var bookDetailName: UILabel!
    @IBOutlet weak var bookDetailStatus: UILabel!
    @IBOutlet weak var bookDetailAuthor: UILabel!
    @IBOutlet weak var bookDetailYear: UILabel!
    @IBOutlet weak var bookDetailGenre: UILabel!
    @IBOutlet weak var bookDetailImage: UIImageView!
    @IBOutlet weak var btnAddToWishlist: UIButton!
    @IBOutlet weak var btnRent: UIButton!
    @IBOutlet weak var contentComment: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setUpViews()
    }
    
    func setupBookView(book: Book) {
        bookDetailName.text = book.title
        bookDetailStatus.text = "DETAIL-BOOK-STATUS".localized()
        bookDetailAuthor.text = book.author
        bookDetailYear.text = book.year
        bookDetailGenre.text = book.genre
        btnAddToWishlist.setTitle("DETAIL-BOOK-BTN-ADD-TO-WISHLIST".localized(), for: .normal)
        btnRent.setTitle("DETAIL-BOOK-BTN-RENT".localized(), for: .normal)
        if let url = URL(string: book.image) {
            let resource = ImageResource(downloadURL: url)
            bookDetailImage.kf.indicatorType = .activity
            bookDetailImage.kf.setImage(with: resource, options: [.transition(ImageTransition.fade(1))])
        } else {
            bookDetailImage.image = #imageLiteral(resourceName: "book")
        }
    }
}

private extension BookDetailView {
    
    private func setUpViews() {
        btnAddToWishlist.round(color: UIColor(red: 0, green: 0.68, blue: 0.93, alpha: 1), border: 1.0, radius: 2.0)
        btnRent.gradient(border: 0.0, radius: 2.0)
    }
}
