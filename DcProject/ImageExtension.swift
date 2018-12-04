//
//  ImageExtension.swift
//  DcProject
//
//  Created by Daniel Andres Charry on 3/12/18.
//  Copyright © 2018 Wolox. All rights reserved.
//

import UIKit

extension UIImageView {
 
    func round(colorBorder: UIColor? = nil, colorBackground: UIColor? = nil, border: Double = 1.0, radius: Double){
        
        layer.cornerRadius = frame.size.width / CGFloat(radius)
        layer.masksToBounds = true
        layer.borderWidth = CGFloat(border)
        layer.borderColor = colorBorder?.cgColor
        layer.backgroundColor = colorBackground?.cgColor
        
    }
    
}
