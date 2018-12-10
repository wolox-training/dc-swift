//
//  Rental.swift
//  DcProject
//
//  Created by Daniel Andres Charry on 7/12/18.
//  Copyright © 2018 Wolox. All rights reserved.
//

import Foundation
import Argo
import Runes
import Curry
import Networking

public struct Rental {
    
    let to: String
    let from: String
    let user: WBooksUser
    let book: Book
    
}

extension Rental: Argo.Decodable {
    public static func decode(_ json: JSON) -> Decoded<Rental> {
        return curry(Rental.init)
        <^> json <| "to"
        <*> json <| "from"
        <*> json <| "user"
        <*> json <| "book"
    }
}
