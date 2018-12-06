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
import WolmoCore
import Alamofire

public class BookRepository: AbstractRepository {
    
    public func getBooks() -> SignalProducer<[Book], RepositoryError> {
        
        return performRequest(method: .get, path: BookRepository.BooksPath) { response in
            return decode(response).toResult()
        }
    }
    
    public func postBook(book: Book) -> DataRequest {
        
        let parameters = book.toDictionary()
        let url = URL(string: BookRepository.CreationBookUrl)!
        
        return request(url, method: .post, parameters: parameters)
    }
}

// MARK: Paths
private extension BookRepository {
    static let BooksPath: String = "/books"
    static let CreationBookUrl: String = "https://private-anon-77412cebfa-wbooksbackend.apiary-mock.com/books"
}
