//
//  LibraryController.swift
//  DcProject
//
//  Created by Daniel Andres Charry on 15/11/18.
//  Copyright © 2018 Wolox. All rights reserved.
//

import Foundation
import UIKit

final class LibraryController: UIViewController {
    
    private let _viewModel: LibraryViewModel
    private let _view: LibraryView = LibraryView.loadFromNib()!
    
    @available(*, unavailable, message: "use init(viewModel:) instead")
    required public init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @available(*, unavailable, message: "use init(viewModel:) instead")
    public override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        fatalError("init(nibName:bundle:) has not been implemented")
    }
    
    init(viewModel: LibraryViewModel) {
        _viewModel = viewModel
        super.init(nibName: .none, bundle: .none)
        tabBarItem = UITabBarItem(title: "Library", image: UIImage(named: "library"), selectedImage: UIImage(named: "library"))
        navigationItem.title = "asd"
        
    }
    
    override public func loadView() {
        view = _view
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bindViewModel()
        configTable()
    }
    
    func configTable() {
        
        _view.tableBooks.delegate = self
        _view.tableBooks.register(cell: LibraryCell.self)
        _view.tableBooks.dataSource = self
        
    }
    
}

// MARK: - VM binding
private extension LibraryController {
    
    private func bindViewModel() {
        
    }
    
}

extension LibraryController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 90
    }
    
}

extension LibraryController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 20
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeue(cell: LibraryCell.self)
        let book = Book.init(title: "A Little Bird Told Me", author: "Timothy Cross", image: URL(string: "www.google.com")!)
        cell?.confingCell(book: book)
        
        return cell!
    }
    
}
