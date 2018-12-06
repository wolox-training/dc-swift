//
//  Book.swift
//  DcProject
//
//  Created by Daniel Andres Charry on 16/11/18.
//  Copyright © 2018 Wolox. All rights reserved.
//

import Foundation
import Argo
import Runes
import Curry
import Networking

public struct Book {
    
    let title: String
    let author: String
    let image: String
    let id: Int
    let year: String
    let genre: String
    
}

extension Book: Argo.Decodable {
    public static func decode(_ json: JSON) -> Decoded<Book> {
        return curry(Book.init)
            <^> json <| "title"
            <*> json <| "author"
            <*> json <| "image"
            <*> json <| "id"
            <*> json <| "year"
            <*> json <| "genre"
    }
}

extension Book {
    
    func toDictionary() -> [String: Any] {
        
        return [
            "title": title,
            "author": author,
            "image": image,
            "id": id,
            "year": year,
            "genre": genre
        ]
        
    }
}
