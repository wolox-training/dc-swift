//
//  RentalRepository.swift
//  DcProject
//
//  Created by Daniel Andres Charry on 7/12/18.
//  Copyright © 2018 Wolox. All rights reserved.
//

import Foundation
import Networking
import WolmoCore
import Alamofire

public class RentalRepository {
    
    public func getRentals() -> DataRequest {
        
        let url = URL(string: RentalRepository.RentalUrl)!
        
        return request(url, method: .get)
        
    }
    
}

// MARK: Paths
private extension RentalRepository {
    
    static let RentalPath: String = "/rents"
    static let RentalIdPath: String = "/rent_id"
    static let UserIdPath: String = "/user_id"
    static let RentalUrl: String = "https://private-anon-915851985e-wbooksbackend.apiary-mock.com/user/user_id/rents"
    
}
