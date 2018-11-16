//
//  TabBarController.swift
//  DcProject
//
//  Created by Daniel Andres Charry on 16/11/18.
//  Copyright © 2018 Wolox. All rights reserved.
//

import Foundation
import UIKit

final class TabBarController: UITabBarController {
    
    private let _viewModel: TabBarViewModel
    private let _view: TabBarView = TabBarView.loadFromNib()!
    
    @available(*, unavailable, message: "use init(viewModel:) instead")
    required public init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @available(*, unavailable, message: "use init(viewModel:) instead")
    public override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        fatalError("init(nibName:bundle:) has not been implemented")
    }
    
    init(viewModel: TabBarViewModel) {
        _viewModel = viewModel
        super.init(nibName: .none, bundle: .none)
    }
    
    override public func loadView() {
        view = _view
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bindViewModel()
        configTabBar()
        
    }
    
    func configTabBar(){
        
        _view.tabBar.barTintColor = .white
        
        
    }
    
}

// MARK: - VM binding
private extension TabBarController {
    
    private func bindViewModel() {
        
    }
    
}
