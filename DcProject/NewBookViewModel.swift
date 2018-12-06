//
//  NewBookViewModel.swift
//  DcProject
//
//  Created by Daniel Andres Charry on 30/11/18.
//  Copyright © 2018 Wolox. All rights reserved.
//

import Foundation
import Alamofire

final class NewBookViewModel {
    
    private let _booksRepository: BookRepository
    var newBook: Book?
    
    init(repository: BookRepository) {
        
        _booksRepository = repository
        
    }
    
    public func postBook() -> DataRequest {
        
        return _booksRepository.postBook(book: newBook!)
        
    }
    
}
