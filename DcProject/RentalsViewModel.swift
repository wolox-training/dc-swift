//
//  RentalsViewModel.swift
//  DcProject
//
//  Created by Daniel Andres Charry on 6/12/18.
//  Copyright © 2018 Wolox. All rights reserved.
//

import Foundation
import Alamofire
import Networking

final class RentalsViewModel {
    
    private let _rentalRepository: RentalRepository
    var rentals: [Rental] = []
    
    init(repository: RentalRepository) {
        
        _rentalRepository = repository
    }
    
    public func getRentals() -> DataRequest {
        
        return _rentalRepository.getRentals()
        
    }
    
}
