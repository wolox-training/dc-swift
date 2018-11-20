//
//  WishListController.swift
//  DcProject
//
//  Created by Daniel Andres Charry on 19/11/18.
//  Copyright © 2018 Wolox. All rights reserved.
//

import Foundation
import UIKit

final class WishListController: UIViewController {

  private let _viewModel: WishListViewModel
  private let _view: WishListView = WishListView.loadFromNib()!

  @available(*, unavailable, message: "use init(viewModel:) instead")
  required public init?(coder aDecoder: NSCoder) {
      fatalError("init(coder:) has not been implemented")
  }

  @available(*, unavailable, message: "use init(viewModel:) instead")
  public override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
      fatalError("init(nibName:bundle:) has not been implemented")
  }

  init(viewModel: WishListViewModel) {
    _viewModel = viewModel
    super.init(nibName: .none, bundle: .none)
  }

  override public func loadView() {
    view = _view
  }

  override func viewDidLoad() {
    super.viewDidLoad()
    bindViewModel()
    navigationItem.title = "WISHLIST"
    
  }

}

// MARK: - VM binding
private extension WishListController {

  private func bindViewModel() {
    
  }

}
