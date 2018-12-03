//
//  UserComment.swift
//  DcProject
//
//  Created by Daniel Andres Charry on 3/12/18.
//  Copyright © 2018 Wolox. All rights reserved.
//

import Foundation
import Argo
import Runes
import Curry
import Networking

public struct WBooksUser {
    
    let username: String
    let id: Int
    
}

extension WBooksUser: Argo.Decodable {
    public static func decode(_ json: JSON) -> Decoded<WBooksUser> {
        return curry(WBooksUser.init)
            <^> json <| "username"
            <*> json <| "id"
    }
}
