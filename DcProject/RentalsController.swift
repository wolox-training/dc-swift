//
//  RentalsController.swift
//  DcProject
//
//  Created by Daniel Andres Charry on 6/12/18.
//  Copyright © 2018 Wolox. All rights reserved.
//

import Foundation
import UIKit
import Alamofire
import Argo

final class RentalsController: UIViewController {
    
    private let _viewModel: RentalsViewModel
    private let _view: RentalsView = RentalsView.loadFromNib()!
    
    @available(*, unavailable, message: "use init(viewModel:) instead")
    required public init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @available(*, unavailable, message: "use init(viewModel:) instead")
    public override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        fatalError("init(nibName:bundle:) has not been implemented")
    }
    
    init(viewModel: RentalsViewModel) {
        _viewModel = viewModel
        super.init(nibName: .none, bundle: .none)
    }
    
    override public func loadView() {
        view = _view
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        requestRentals()
        configTable()
        
        
    }
    
    func configTable() {
        
        _view.tableRental.register(cell: LibraryCell.self)
        _view.tableRental.dataSource = self
        _view.tableRental.rowHeight = 90
        
    }
    
    func requestRentals() {
        _viewModel.getRentals().responseJSON {[unowned self] response in
            
            var result: Decoded<[Rental]> = decode(response.result.value)
            self._viewModel.rentals = result.value!
            self._view.tableRental.reloadData()
            
        }
    }
    
}

extension RentalsController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return _viewModel.rentals.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       
        let cell = tableView.dequeue(cell: LibraryCell.self)
        cell?.confingCell(book: _viewModel.rentals[indexPath.row].book)
        
        return cell!
    }
    
}
