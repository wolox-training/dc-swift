//
//  TabBarView.swift
//  DcProject
//
//  Created by Daniel Andres Charry on 16/11/18.
//  Copyright © 2018 Wolox. All rights reserved.
//

import Foundation
import UIKit
import WolmoCore

final class TabBarView: UIView, NibLoadable {
    
    @IBOutlet weak var tabBar: UITabBar!
    @IBOutlet weak var itemTabBar: UITabBarItem!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setUpViews()
        
    }
    
}

private extension TabBarView {
    
    private func setUpViews() {
        
    }
    
}
