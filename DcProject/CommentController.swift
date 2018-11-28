//
//  CommentController.swift
//  DcProject
//
//  Created by Daniel Andres Charry on 28/11/18.
//  Copyright © 2018 Wolox. All rights reserved.
//

import Foundation
import UIKit

final class CommentController: UIViewController {
    
    private let _viewModel: CommentViewModel
    private let _view: CommentView = CommentView.loadFromNib()!
    
    @available(*, unavailable, message: "use init(viewModel:) instead")
    required public init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @available(*, unavailable, message: "use init(viewModel:) instead")
    public override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        fatalError("init(nibName:bundle:) has not been implemented")
    }
    
    init(viewModel: CommentViewModel) {
        _viewModel = viewModel
        super.init(nibName: .none, bundle: .none)
    }
    
    override public func loadView() {
        view = _view
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bindViewModel()
        _view.tableComment.register(cell: CommentCell.self)
        _view.tableComment.dataSource = self
        _view.tableComment.rowHeight = 127
    }
    
}

// MARK: - VM binding
private extension CommentController {
    
    private func bindViewModel() {
    }
}

extension CommentController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeue(cell: CommentCell.self)
        cell?.configCell(comment: Comment(content: "It was great to see you again earlier. Let’s definitely get that coffe It was great to see you again earlier.ajdvajdvjsvdvdvdajsvdajdvjhvdhjsvdsahv"))
        return cell!
    }

}
