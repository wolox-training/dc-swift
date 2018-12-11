//
//  SuggestionViewModel.swift
//  DcProject
//
//  Created by Daniel Andres Charry on 10/12/18.
//  Copyright © 2018 Wolox. All rights reserved.
//

import Foundation
import Alamofire

final class SuggestionViewModel {
    
    private let _suggestionRepository: SuggestionRepository
    var suggestions: [Suggestion] = []
    
    init(repository: SuggestionRepository) {
        
        _suggestionRepository = repository
        
    }
    
    public func getSuggestion() -> DataRequest {
        
        return _suggestionRepository.getSuggestionBook()
        
    }
    
}
