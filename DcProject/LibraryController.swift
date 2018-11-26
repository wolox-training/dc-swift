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
    }
    
    override public func loadView() {
        view = _view
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bindViewModel()
        configTable()
        confingNavBar()
        requestBooks()
    }
    
    func configTable() {
        _view.tableBooks.register(cell: LibraryCell.self)
        _view.tableBooks.dataSource = self
        _view.tableBooks.delegate = self
        _view.tableBooks.rowHeight = 90
    }
    
    func confingNavBar(){
        navigationItem.title = "NAVBAR-TITLE-LIBRARY".localized()
    }
    
    func requestBooks(){
        _viewModel.getBooks().startWithResult { result in
            switch result {
            case .success(let books):
                NSLog("Request Success")
                self._viewModel.books.value = books
                
            case .failure(let error):
                NSLog(error.localizedDescription)
            }
        }
    }
    
}

extension LibraryController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let bookDetailView = BookDetailController.init(viewModel: BookDetailViewModel(
            book: _viewModel.books.value[indexPath.row]))
        navigationController?.pushViewController(bookDetailView, animated: true)
    }
    
}

// MARK: - VM binding
private extension LibraryController {
    
    private func bindViewModel() {
        _viewModel.books.signal.observeValues { [unowned self] books in
            self._view.tableBooks.reloadData()
        }
    }
}

extension LibraryController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return _viewModel.books.value.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeue(cell: LibraryCell.self)
        cell?.confingCell(book: _viewModel.books.value[indexPath.row])
        
        return cell!
    }
}
