//
//  SuggestionController.swift
//  DcProject
//
//  Created by Daniel Andres Charry on 10/12/18.
//  Copyright © 2018 Wolox. All rights reserved.
//

import Foundation
import UIKit
import Alamofire
import Argo

final class SuggestionController: UIViewController {
    
    private let _viewModel: SuggestionViewModel
    private let _view: SuggestionView = SuggestionView.loadFromNib()!
    
    @available(*, unavailable, message: "use init(viewModel:) instead")
    required public init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @available(*, unavailable, message: "use init(viewModel:) instead")
    public override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        fatalError("init(nibName:bundle:) has not been implemented")
    }
    
    init(viewModel: SuggestionViewModel) {
        _viewModel = viewModel
        super.init(nibName: .none, bundle: .none)
    }
    
    override public func loadView() {
        view = _view
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        requestSuggestion()
        _view.collectionSuggestion.register(cell: SuggestionCell.self)
        _view.collectionSuggestion.dataSource = self
        
    }
    
    func requestSuggestion() {
        _viewModel.getSuggestion().responseJSON { [unowned self] response in
            let result: Decoded<[Suggestion]> = decode(response.result.value)
            self._viewModel.suggestions = result.value!
            self._view.collectionSuggestion.reloadData()
        }
    }
    
}

extension SuggestionController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return _viewModel.suggestions.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeue(cell: SuggestionCell.self, for: indexPath as IndexPath)
        cell?.confingCell(suggestion: _viewModel.suggestions[indexPath.row])
        
        return cell!
    }
}
