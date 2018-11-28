//
//  ButtonExtension.swift
//  DcProject
//
//  Created by Daniel Andres Charry on 27/11/18.
//  Copyright © 2018 Wolox. All rights reserved.
//

import UIKit

extension UIButton {
    
    //Round borders
    func round(color: UIColor? = nil, border: Double, radius: Double){
        
        layer.cornerRadius = bounds.height / CGFloat(radius)
        layer.borderWidth = CGFloat(border)
        layer.borderColor = color?.cgColor
        clipsToBounds = true
    }
    
    // Gradient style
    func gradient(colors: [UIColor]? = nil, border: Double, radius: Double){
        let gradient = CAGradientLayer()
        gradient.frame = CGRect(x: 0, y: 0, width: 275, height: 44)
        gradient.colors = (colors != nil) ? colors : [
            UIColor(red:0, green:0.68, blue:0.93, alpha:1).cgColor,
            UIColor(red:0.22, green:0.8, blue:0.8, alpha:1).cgColor
        ]
        gradient.startPoint = CGPoint(x: 0.06, y: 0.5)
        gradient.endPoint = CGPoint(x: 1, y: 0.5)
        round( border: border, radius: radius)
        layer.addSublayer(gradient)
    }
    
}
