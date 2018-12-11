//
//  SuggestionCell.swift
//  DcProject
//
//  Created by Daniel Andres Charry on 10/12/18.
//  Copyright © 2018 Wolox. All rights reserved.
//

import Foundation
import UIKit
import WolmoCore
import Kingfisher

public class SuggestionCell: UICollectionViewCell, NibLoadable {
    
    @IBOutlet weak var suggestionImage: UIImageView!
    
    func confingCell(suggestion: Suggestion) {
        if let url = URL(string: suggestion.link) {
            if UIApplication.shared.canOpenURL(url) {
                let resource = ImageResource(downloadURL: url)
                suggestionImage.kf.indicatorType = .activity
                suggestionImage.kf.setImage(with: resource, options: [.transition(ImageTransition.fade(1))])
            } else {
                suggestionImage.image = #imageLiteral(resourceName: "book")
            }
        } else {
            suggestionImage.image = #imageLiteral(resourceName: "book")
        }
    }
}
