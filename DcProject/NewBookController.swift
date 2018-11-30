//
//  NewBookController.swift
//  DcProject
//
//  Created by Daniel Andres Charry on 30/11/18.
//  Copyright © 2018 Wolox. All rights reserved.
//

import Foundation
import UIKit

final class NewBookController: UIViewController {
    
    private let _viewModel: NewBookViewModel
    private let _view: NewBookView = NewBookView.loadFromNib()!
    
    @available(*, unavailable, message: "use init(viewModel:) instead")
    required public init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @available(*, unavailable, message: "use init(viewModel:) instead")
    public override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        fatalError("init(nibName:bundle:) has not been implemented")
    }
    
    init(viewModel: NewBookViewModel) {
        _viewModel = viewModel
        super.init(nibName: .none, bundle: .none)
    }
    
    override public func loadView() {
        view = _view
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bindViewModel()
        confingNavBar()
        
    }
    func confingNavBar() {
        navigationItem.title = "NAVBAR-TITLE-ADDNEW".localized()
    }
    
}

// MARK: - VM binding
private extension NewBookController {
    
    private func bindViewModel() {
        
    }
    
}
