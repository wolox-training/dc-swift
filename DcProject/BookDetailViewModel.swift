//
//  BookDetailViewModel.swift
//  DcProject
//
//  Created by Daniel Andres Charry on 22/11/18.
//  Copyright © 2018 Wolox. All rights reserved.
//

import Foundation

final class BookDetailViewModel {
    
    let detailBook: Book
    var typeDetail: String
    
    init(book: Book, type: String) {
        detailBook = book
        typeDetail = type
    }
    
}
