//
//  BookRepository.swift
//  DcProject
//
//  Created by Daniel Andres Charry on 21/11/18.
//  Copyright © 2018 Wolox. All rights reserved.
//

import Foundation
import Networking
import ReactiveSwift
import Argo
import Result
import WolmoReactiveCore

public class BookRepository: AbstractRepository  {
    
    
    
    public func getBooks() -> SignalProducer<[Book], RepositoryError> {
        
        return performRequest(method: .get, path: BookRepository.BooksPath) { response in
            return decode(response).toResult()
        }
    }
}

//    MARK: Paths
private extension BookRepository {
    static let BooksPath: String = "/books"
}
