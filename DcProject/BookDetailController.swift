//
//  BookDetailController.swift
//  DcProject
//
//  Created by Daniel Andres Charry on 22/11/18.
//  Copyright © 2018 Wolox. All rights reserved.
//

import Foundation
import UIKit
import Kingfisher

final class BookDetailController: UIViewController {
    
    private let _viewModel: BookDetailViewModel
    private let _view: BookDetailView = BookDetailView.loadFromNib()!
    
    @available(*, unavailable, message: "use init(viewModel:) instead")
    required public init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @available(*, unavailable, message: "use init(viewModel:) instead")
    public override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        fatalError("init(nibName:bundle:) has not been implemented")
    }
    
    init(viewModel: BookDetailViewModel) {
        _viewModel = viewModel
        super.init(nibName: .none, bundle: .none)
    }
    
    override public func loadView() {
        view = _view
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        confingNavBar()
        configDetail()
    }
    
    func configDetail() {
        _view.bookDetailName.text = _viewModel.detailBook.title
        _view.bookDetailStatus.text = "DETAIL-BOOK-STATUS".localized()
        _view.bookDetailAuthor.text = _viewModel.detailBook.author
        _view.bookDetailYear.text = _viewModel.detailBook.year
        _view.bookDetailGenre.text = _viewModel.detailBook.genre
        _view.btnAddToWishlist.setTitle("DETAIL-BOOK-BTN-ADD-TO-WISHLIST".localized(), for: .normal)
        _view.btnRent.setTitle("DETAIL-BOOK-BTN-RENT".localized(), for: .normal)
        if let url = URL(string: _viewModel.detailBook.image) {
            let resource = ImageResource(downloadURL: url)
            _view.bookDetailImage.kf.indicatorType = .activity
            _view.bookDetailImage.kf.setImage(with: resource, options: [.transition(ImageTransition.fade(1))])
        } else {
            _view.bookDetailImage.image = #imageLiteral(resourceName: "book")
        }
    }
    
    func confingNavBar(){
        navigationItem.title = "NAVBAR-TITLE-BOOKDETAIL".localized()
    }
}
