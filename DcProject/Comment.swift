//
//  Comment.swift
//  DcProject
//
//  Created by Daniel Andres Charry on 28/11/18.
//  Copyright © 2018 Wolox. All rights reserved.
//

import Foundation
import Argo
import Runes
import Curry
import Networking

public struct Comment {
    
    let content: String
    let user: UserComment
}

extension Comment: Argo.Decodable {
    public static func decode(_ json: JSON) -> Decoded<Comment> {
        return curry(Comment.init)
        <^> json <| "content"
        <*> json <| "user"
    }
}
