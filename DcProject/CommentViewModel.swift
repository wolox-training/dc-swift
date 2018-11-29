//
//  CommentViewModel.swift
//  DcProject
//
//  Created by Daniel Andres Charry on 28/11/18.
//  Copyright © 2018 Wolox. All rights reserved.
//

import Foundation
import Networking
import ReactiveSwift

final class CommentViewModel {
    
    private let _commentrepository: CommentRepository
    let bookDetail: Book
    let comment: MutableProperty<[Comment]> = MutableProperty([])
    
    init(repository: CommentRepository, book: Book) {
        _commentrepository = repository
        bookDetail = book
    }
    
    public func getComment() -> SignalProducer<[Comment], RepositoryError> {
    
        return _commentrepository.getComment(bookDetail: bookDetail)
    }
}
