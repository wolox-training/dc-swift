//
//  CommentRepository.swift
//  DcProject
//
//  Created by Daniel Andres Charry on 29/11/18.
//  Copyright © 2018 Wolox. All rights reserved.
//

import Foundation
import Networking
import ReactiveSwift
import Argo
import Result
import WolmoReactiveCore

public class CommentRepository: AbstractRepository  {
    
    public func getComment(bookDetail: Book) -> SignalProducer<[Comment], RepositoryError> {
        
        return performRequest(method: .get, path: CommentRepository.BookPath + String(bookDetail.id) + CommentRepository.CommentsPath ) { response in
            return decode(response).toResult()
        }
    }
}

//    MARK: Paths
private extension CommentRepository {
    static let BookPath: String = "/books/"
    static let CommentsPath: String = "/comments"
}

