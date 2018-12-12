//
//  Detailtype.swift
//  DcProject
//
//  Created by Daniel Andres Charry on 11/12/18.
//  Copyright © 2018 Wolox. All rights reserved.
//

import Foundation

enum DetailType: String {
    
    case rental
    case library
    
    func text() -> String {
        return self.rawValue
    }
    
}
