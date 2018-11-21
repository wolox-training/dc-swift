//
//  LibraryView.swift
//  DcProject
//
//  Created by Daniel Andres Charry on 15/11/18.
//  Copyright © 2018 Wolox. All rights reserved.
//

import Foundation
import UIKit
import WolmoCore

final class LibraryView: UIView, NibLoadable {
    
    @IBOutlet weak var tableBooks: UITableView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setUpViews()
    }
    
}

private extension LibraryView {
    
    private func setUpViews() {
        
    }
    
}
