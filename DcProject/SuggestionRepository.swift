//
//  SuggestionRepository.swift
//  DcProject
//
//  Created by Daniel Andres Charry on 10/12/18.
//  Copyright © 2018 Wolox. All rights reserved.
//

import Foundation
import Networking
import WolmoCore
import Alamofire

public class SuggestionRepository {
    
    public func getSuggestionBook() -> DataRequest {
        
        let url = URL(string: SuggestionRepository.Domain + SuggestionRepository.SuggestionPath)!
        return request(url, method: .get)
        
    }
}

// MARK: Paths
private extension SuggestionRepository {
    
    static let Domain: String = "https://swift-training-backend.herokuapp.com"
    static let SuggestionPath: String = "/suggestions"
    
}
