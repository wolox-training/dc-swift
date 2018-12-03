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

public struct UserComment {
    
    let username: String
    
}

extension UserComment: Argo.Decodable {
    public static func decode(_ json: JSON) -> Decoded<UserComment> {
        return curry(UserComment.init)
            <^> json <| "username"
    }
}
