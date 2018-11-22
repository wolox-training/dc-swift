//
//  LibraryViewModel.swift
//  DcProject
//
//  Created by Daniel Andres Charry on 15/11/18.
//  Copyright © 2018 Wolox. All rights reserved.
//

import Foundation
import Networking
import ReactiveSwift

final class LibraryViewModel {
    
    private let _booksRepository: BookRepository
    let books: MutableProperty<[Book]> = MutableProperty([])
    
    init(repository: BookRepository) {
        _booksRepository = repository
    }
    
    public func getBooks() -> SignalProducer<[Book], RepositoryError> {
        
        return _booksRepository.getBooks()
        
    }
    
}
