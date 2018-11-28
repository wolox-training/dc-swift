//
//  CommentView.swift
//  DcProject
//
//  Created by Daniel Andres Charry on 28/11/18.
//  Copyright © 2018 Wolox. All rights reserved.
//

import Foundation
import UIKit
import WolmoCore

final class CommentView: UIView, NibLoadable {
    
    @IBOutlet weak var tableComment: UITableView!
    override func awakeFromNib() {
        super.awakeFromNib()
        setUpViews()
    }
    
}

private extension CommentView {
    
    private func setUpViews() {
        
    }
    
}
