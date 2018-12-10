//
//  Suggestion.swift
//  DcProject
//
//  Created by Daniel Andres Charry on 10/12/18.
//  Copyright © 2018 Wolox. All rights reserved.
//

import Foundation
import Argo
import Runes
import Curry
import Networking

public struct Suggestion {
    
    let user: WBooksUser
    let id: Int
    let author: String
    let link: String
    let title: String
    
}

extension Suggestion: Argo.Decodable {
    public static func decode(_ json: JSON) -> Decoded<Suggestion> {
        return curry(Suggestion.init)
            <^> json <| "user"
            <*> json <| "id"
            <*> json <| "author"
            <*> json <| "link"
            <*> json <| "title"
    }
}
