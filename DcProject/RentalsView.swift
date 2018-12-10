//
//  RentalsView.swift
//  DcProject
//
//  Created by Daniel Andres Charry on 6/12/18.
//  Copyright © 2018 Wolox. All rights reserved.
//

import Foundation
import UIKit
import WolmoCore

final class RentalsView: UIView, NibLoadable {

    @IBOutlet weak var tableRental: UITableView!
    
    
    override func awakeFromNib() {
      super.awakeFromNib()
      setUpViews()
  }

}

private extension RentalsView {

  private func setUpViews() {
    
  }

}
