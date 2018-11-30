//
//  NewBookView.swift
//  DcProject
//
//  Created by Daniel Andres Charry on 30/11/18.
//  Copyright © 2018 Wolox. All rights reserved.
//

import Foundation
import UIKit
import WolmoCore

final class NewBookView: UIView, NibLoadable {
    
    
    @IBOutlet weak var btnAddImage: UIButton!
    @IBOutlet weak var newBookName: FormTextInput!
    @IBOutlet weak var newBookAuthor: FormTextInput!
    @IBOutlet weak var newBookYear: FormTextInput!
    @IBOutlet weak var newBookTopic: FormTextInput!
    @IBOutlet weak var newBookDescription: FormTextInput!
    @IBOutlet weak var btnSubmit: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setUpViews()
    }
    
}

private extension NewBookView {
    
    private func setUpViews() {
        
        btnSubmit.gradient(border: 0.0, radius: 2.0)
        
    }
    
}

public class FormTextInput: UITextField {
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.borderStyle = .none
        self.layer.backgroundColor = UIColor.white.cgColor
        self.layer.masksToBounds = false
        self.layer.shadowColor = UIColor(red:0.78, green:0.78, blue:0.8, alpha:1).cgColor
        self.layer.shadowOffset = CGSize(width: 0.0, height: 1.0)
        self.layer.shadowOpacity = 1.0
        self.layer.shadowRadius = 0.0
    }
    
}
