//
//  BookDetailController.swift
//  DcProject
//
//  Created by Daniel Andres Charry on 22/11/18.
//  Copyright © 2018 Wolox. All rights reserved.
//

import Foundation
import UIKit

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
        load(childViewController: CommentController(viewModel: CommentViewModel(repository: CommentRepository(networkingConfiguration: RepositoryBuilder.DefaultNetworkingConfiguration, sessionManager: SessionManagerService.shared), book: _viewModel.detailBook)), into: _view.contentComment)
        _view.setupBookView(book: _viewModel.detailBook)
    }
    
    
    func confingNavBar() {
        navigationItem.title = "NAVBAR-TITLE-BOOKDETAIL".localized()
    }
}
